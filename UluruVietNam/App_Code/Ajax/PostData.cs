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
                        MailUtility mailUtility = new MailUtility(new MailModel()
                        {
                            SmtpServerName = "smtp.gmail.com",
                            Port = 587,
                            SmtpUserName = "noreplayuluvn@gmail.com",
                            SmtpPassword = "xobs lexo atde wxtq",
                            SecureConnect = true,
                            FromMailAddress = "noreplayuluvn@gmail.com",
                            SendMailAddress = contactInfo.Email,
                            Subject = "UluruVN",
                            Attach = attachment,
                            Body = "HI",
                            SmtpAuth = true
                        });

                        mailUtility.SendMail();
                    }

                    break;
                }
            default: break;
        }

        context.Response.ContentType = "text/plain";
        context.Response.Write(jsonRes);
    }
}