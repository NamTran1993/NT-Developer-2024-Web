using Newtonsoft.Json;
using System;
using System.IO;
using System.Web;

public static class JsonUtility
{
    public static string ObjectToJson(this object obj)
    {
        try
        {
            if (obj != null)
                return JsonConvert.SerializeObject(obj);
            return string.Empty;
        }
        catch (Exception ex)
        {

        }
        return "";
    }

    public static T JsonToObject<T>(this string obj)
    {
        try
        {
            return JsonConvert.DeserializeObject<T>(obj);
        }
        catch (Exception ex)
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
        catch (Exception ex)
        {
        }
        return string.Empty;
    }


}