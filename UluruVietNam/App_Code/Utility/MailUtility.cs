using System;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;

public class MailUtility
{
    private MailModel _mailModel = null;

    public MailUtility(MailModel mailModel)
    {
        this._mailModel = mailModel;
    }

    public bool SendMail()
    {
        try
        {
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls | (SecurityProtocolType)768 | (SecurityProtocolType)3072;
            SmtpClient smtp = new SmtpClient();
            MailMessage msg = new MailMessage();
            Encoding myEnc = Encoding.GetEncoding("iso-2022-jp");

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
            msg.To.Add(new MailAddress(this._mailModel.SendMailAddress));
            msg.Subject = this._mailModel.Subject; 

            if (this._mailModel.Bcc != "")
            {
                msg.Bcc.Add(new MailAddress(this._mailModel.Bcc));
            }

            string sBody = this._mailModel.Body;
            AlternateView altView = AlternateView.CreateAlternateViewFromString(sBody, myEnc, MediaTypeNames.Text.Plain);
            altView.TransferEncoding = TransferEncoding.SevenBit;

            msg.AlternateViews.Add(altView);

            if (this._mailModel.Attach != string.Empty)
            {
                Attachment attach1 = new Attachment(this._mailModel.Attach);
                msg.Attachments.Add(attach1);
            }

            smtp.Send(msg);
            return true;
        }
        catch (Exception ex)
        { }
        return false;
    }
}