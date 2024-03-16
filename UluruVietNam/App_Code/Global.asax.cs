using System;
using System.Web.Routing;

public class Global : System.Web.HttpApplication
{
    protected void Application_Start(object sender, EventArgs e)
    {
        this.RegisterRoutes(RouteTable.Routes);
        ConfigUtility.GetInstance();
    }


    protected void Application_Error(object sender, EventArgs e)
    {

    }

    private void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("index", "index", "~/index.aspx");
        routes.MapPageRoute("contact", "contact", "~/contact.aspx");
        routes.MapPageRoute("flow", "flow", "~/flow.aspx");
        routes.MapPageRoute("development", "development", "~/development.aspx");
    }
}