using System.IO;
using System.Web;

public class PostData : IHttpHandler
{
    public bool IsReusable { get { return false; } }

    public void ProcessRequest(HttpContext context)
    {
        string jsonRes = string.Empty;
        string func = context.Request.QueryString["func"];
        switch (func)
        {
            case "SEND-CONTACT":
                {
                    string jsonReq = context.Request["info"];
                    SendContactModel contactInfo = null;
                    if (!string.IsNullOrEmpty(jsonReq))
                    {
                        contactInfo = jsonReq.JsonToObject<SendContactModel>();
                    }

                    if (contactInfo != null)
                    {
                        string attachment = string.Empty;
                        if (context.Request.Files.Count > 0)
                        {
                            HttpFileCollection files = context.Request.Files;
                            for (int i = 0; i < files.Count; i++)
                            {
                                HttpPostedFile file = files[i];
                                string folderSave = Path.Combine(context.Server.MapPath("~/Uploads"), contactInfo.Guid);
                                if (!Directory.Exists(folderSave))
                                {
                                    Directory.CreateDirectory(folderSave);
                                }
                                attachment = Path.Combine(folderSave, file.FileName);
                                file.SaveAs(attachment);
                            }
                        }

                        // SEND EMAIL
                        bool bSendMail = ConfigUtility.GetBool("mail.send");
                        if (bSendMail)
                        {
                            string pathTemplate = Path.Combine(context.Server.MapPath("~/App_Themes"), "template", "email", "t_email.html");
                            MailUtility mailUtility = new MailUtility(new MailModel()
                            {
                                SmtpServerName = ConfigUtility.GetString("mail.smtp.server"),
                                Port = ConfigUtility.GetInt("mail.port"),
                                SmtpUserName = ConfigUtility.GetString("mail.from"),
                                FromMailAddress = ConfigUtility.GetString("mail.from"),
                                SmtpPassword = ConfigUtility.GetString("mail.pass"),
                                SmtpAuth = true,
                                SecureConnect = true,
                                Attach = attachment
                            }, contactInfo, pathTemplate);

                            mailUtility.SendMail();
                        }
                    }

                    break;
                }
            default: break;
        }

        context.Response.ContentType = "text/plain";
        context.Response.Write(jsonRes);
    }
}