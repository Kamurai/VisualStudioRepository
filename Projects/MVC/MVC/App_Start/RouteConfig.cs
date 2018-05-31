using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MVC
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "",
                defaults: new { controller = "Main", action = "Index" }
            );
            
            routes.MapRoute(
                name: "Index",
                url: "Index",
                defaults: new { controller = "Main", action = "Index" }
            );
            
            routes.MapRoute(
                name: "AboutUs",
                url: "AboutUs",
                defaults: new { controller = "Main", action = "AboutUs" }
            );

            routes.MapRoute(
                name: "Media",
                url: "Media",
                defaults: new { controller = "Main", action = "Media" }
            );

            routes.MapRoute(
                name: "Minecraft",
                url: "Minecraft",
                defaults: new { controller = "Main", action = "Minecraft" }
            );

            routes.MapRoute(
                name: "Catch",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Main", action = "Index", id = UrlParameter.Optional }
            );



        }
    }
}
