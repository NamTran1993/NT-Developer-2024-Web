using System;
using System.Web;
using System.Web.Routing;


public class Global : System.Web.HttpApplication
{
    protected void Application_Start(object sender, EventArgs e)
    {
        this.RegisterRoutes(RouteTable.Routes);
    }

    protected void Application_End(object sender, EventArgs e)
    {
        
    }

    protected void Application_Error(object sender, EventArgs e)
    {
       
    }

    protected void Session_Start(object sender, EventArgs e)
    {
        
    }

    protected void Session_End(object sender, EventArgs e)
    {
        
    }

    private void RegisterRoutes(RouteCollection routes)
    {
        try
        {
            routes.MapPageRoute("index", "index", "~/index.aspx");
            routes.MapPageRoute("contact", "contact", "~/contact.aspx");
            routes.MapPageRoute("flow", "flow", "~/flow.aspx");
        }
        catch (Exception ex)
        {
            
        }
    }

    protected void Application_BeginRequest(object sender, EventArgs e)
    {
    }
}