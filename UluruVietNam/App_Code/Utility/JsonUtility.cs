using System.IO;
using System.Web;

public static class JsonUtility
{
    public static string ObjectToJson(this object obj)
    {
        try
        {
            if (obj != null)
                return Newtonsoft.Json.JsonConvert.SerializeObject(obj);
            return string.Empty;
        }
        catch
        {
        }
        return "";
    }

    public static T JsonToObject<T>(this string obj)
    {
        try
        {
            return Newtonsoft.Json.JsonConvert.DeserializeObject<T>(obj);
        }
        catch
        {
        }
        return default(T);
    }

    public static string GetJsonRequest(this HttpContext context)
    {
        try
        {
            StreamReader pipe = new StreamReader(context.Request.InputStream);
            string jsonString = pipe.ReadToEnd();
            if (pipe != null)
            {
                pipe.Close();
                pipe.Dispose();
            }
            return jsonString;
        }
        catch
        {
        }
        return string.Empty;
    }
}