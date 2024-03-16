
public class MailModel
{
    private string _smtpServerName = string.Empty;
    private int _port = 0;
    private string _smtpUserName = string.Empty;
    private string _smtpPassword = string.Empty;
    private bool _smtpAuth = false;
    private string _fromMailAddress = string.Empty;
    private string _sendMailAddress = string.Empty;
    private string _bcc = string.Empty;
    private string _subject = string.Empty;
    private string _body = string.Empty;
    private string _attach = string.Empty;
    private bool _secureConnect = false;
    private object _content = null; 

    public string SmtpServerName
    {
        get
        {
            return _smtpServerName;
        }

        set
        {
            _smtpServerName = value;
        }
    }

    public int Port
    {
        get
        {
            return _port;
        }

        set
        {
            _port = value;
        }
    }

    public string SmtpUserName
    {
        get
        {
            return _smtpUserName;
        }

        set
        {
            _smtpUserName = value;
        }
    }

    public string SmtpPassword
    {
        get
        {
            return _smtpPassword;
        }

        set
        {
            _smtpPassword = value;
        }
    }

    public bool SmtpAuth
    {
        get
        {
            return _smtpAuth;
        }

        set
        {
            _smtpAuth = value;
        }
    }

    public string FromMailAddress
    {
        get
        {
            return _fromMailAddress;
        }

        set
        {
            _fromMailAddress = value;
        }
    }

    public string SendMailAddress
    {
        get
        {
            return _sendMailAddress;
        }

        set
        {
            _sendMailAddress = value;
        }
    }

    public string Bcc
    {
        get
        {
            return _bcc;
        }

        set
        {
            _bcc = value;
        }
    }

    public string Subject
    {
        get
        {
            return _subject;
        }

        set
        {
            _subject = value;
        }
    }

    public string Body
    {
        get
        {
            return _body;
        }

        set
        {
            _body = value;
        }
    }

    public string Attach
    {
        get
        {
            return _attach;
        }

        set
        {
            _attach = value;
        }
    }

    public bool SecureConnect
    {
        get
        {
            return _secureConnect;
        }

        set
        {
            _secureConnect = value;
        }
    }

    public object Content
    {
        get
        {
            return _content;
        }

        set
        {
            _content = value;
        }
    }
}