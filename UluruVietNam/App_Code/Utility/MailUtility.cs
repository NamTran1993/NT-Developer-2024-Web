using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;
using System.Linq;

public class MailUtility
{
    private MailModel _mailModel = null;
    private string _path_template = null;
    private SendContactModel _contactModel = null;

    public MailUtility(MailModel mailModel, SendContactModel contactModel, string path_template)
    {
        this._mailModel = mailModel;
        this._path_template = path_template;
        this._contactModel = contactModel;
    }

    public bool SendMail()
    {
        SmtpClient smtp = new SmtpClient();
        try
        {
            // READ TEMPLATE EMAIL FROM FILE HTML
            string subjectEmail = string.Empty;
            string html = this.GetStringTemplate(ref subjectEmail);
            string image = string.Empty;
            Attachment attach_logo = null;

            if (!string.IsNullOrEmpty(html))
            {
                image = System.Web.HttpContext.Current.Server.MapPath("~/App_Themes/uluru-data-html/dist/assets/images/logo.png");
                attach_logo = new Attachment(image);
                html = html.Replace(subjectEmail, "")
                    .Replace("_personname_", this._contactModel.Personname)
                    .Replace("_company_", this._contactModel.Company)
                    .Replace("_department_", this._contactModel.Department)
                    .Replace("_phone_", this._contactModel.Phone)
                    .Replace("_file_", "Vui lòng coi đính kèm ở bên dưới")
                    .Replace("_content_", this._contactModel.Content)
                    .Replace("_email_", this._contactModel.Email)
                    .Replace("_path_image", string.Format("cid:{0}", attach_logo.ContentId));
            }

            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls | (SecurityProtocolType)768 | (SecurityProtocolType)3072;
            MailMessage msg = new MailMessage();
            Encoding myEnc = Encoding.GetEncoding("UTF-8");

            smtp.Host = this._mailModel.SmtpServerName;
            smtp.Port = this._mailModel.Port;
            smtp.UseDefaultCredentials = false;

            if (this._mailModel.SmtpAuth)
            {
                smtp.Credentials = new NetworkCredential(this._mailModel.SmtpUserName, this._mailModel.SmtpPassword);
            }

            smtp.ServicePoint.MaxIdleTime = 1000;

            if (this._mailModel.SecureConnect)
            {
                smtp.EnableSsl = true;
            }

            msg.From = new MailAddress(this._mailModel.FromMailAddress);
            msg.To.Add(new MailAddress(this._contactModel.Email));
            msg.Subject = subjectEmail;

            if (this._mailModel.Bcc != "")
            {
                msg.Bcc.Add(new MailAddress(this._mailModel.Bcc));
            }

            AlternateView altView = AlternateView.CreateAlternateViewFromString(html, myEnc, MediaTypeNames.Text.Html);
            altView.TransferEncoding = TransferEncoding.SevenBit;

            msg.AlternateViews.Add(altView);

            if (this._mailModel.Attach != string.Empty)
            {
                Attachment attach1 = new Attachment(this._mailModel.Attach);
                msg.Attachments.Add(attach1);
            }

            if (attach_logo != null)
            {
                msg.Attachments.Add(attach_logo);
            }

            smtp.Send(msg);
            return true;
        }
        catch
        { }
        finally
        {
            smtp.Dispose();
        }
        return false;
    }

    private string GetStringTemplate(ref string title)
    {
        HtmlAgilityPack.HtmlDocument htmlDocument = null;
        try
        {
            if (System.IO.File.Exists(this._path_template))
            {
                htmlDocument = new HtmlAgilityPack.HtmlDocument();
                htmlDocument.Load(this._path_template);
                title = htmlDocument.DocumentNode.Descendants("title").FirstOrDefault().InnerText;
                htmlDocument = null;

                return System.IO.File.ReadAllText(this._path_template);
            }
        }
        catch
        {
        }
        finally
        {
            htmlDocument = null;
        }
        return string.Empty;
    }
}