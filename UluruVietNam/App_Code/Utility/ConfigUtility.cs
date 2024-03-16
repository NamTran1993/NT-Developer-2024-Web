using System.Collections.Generic;
using System.IO;
using System.Web;

public class ConfigUtility
{
    private const string _FILE_NAME = "config.ini";
    private static ConfigUtility _instance = null;
    private Dictionary<string, string> _values = null;

    private ConfigUtility()
    {
        string iniFileName = Path.Combine(this.GetFilePath(), _FILE_NAME);
        this.Read(iniFileName);
    }

    private string GetFilePath()
    {
        return HttpContext.Current.Server.MapPath("~/");
    }

    private void Read(string filePath)
    {
        if (!File.Exists(filePath))
        {
            throw new FileNotFoundException("The specified path does not exist：" + filePath);
        }

        this._values = new Dictionary<string, string>();

        using (Microsoft.VisualBasic.FileIO.TextFieldParser parser = new Microsoft.VisualBasic.FileIO.TextFieldParser(filePath, System.Text.Encoding.Default))
        {
            parser.TextFieldType = Microsoft.VisualBasic.FileIO.FieldType.Delimited;
            parser.SetDelimiters("=");
            parser.HasFieldsEnclosedInQuotes = true;
            parser.TrimWhiteSpace = true;

            while (!parser.EndOfData)
            {
                string[] line = parser.ReadFields();
                if (line.Length == 2 && !line[0].StartsWith(";"))
                {
                    this._values[line[0]] = line[1];
                }
            }
        }
    }

    public static ConfigUtility GetInstance()
    {
        if (_instance == null)
        {
            _instance = new ConfigUtility();
        }
        return _instance;
    }

    public static string GetString(string key)
    {
        return GetInstance()._values[key];
    }

    public static int GetInt(string key)
    {
        return int.Parse(GetInstance()._values[key]);
    }

    public static bool GetBool(string key)
    {
        return bool.Parse(GetInstance()._values[key]);
    }
}