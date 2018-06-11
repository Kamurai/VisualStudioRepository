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
                name: "Division1default",
                url: "Division1",
                defaults: new { controller = "Division1", action = "Index" }
            );

            routes.MapRoute(
                name: "Division1",
                url: "Division1/Index",
                defaults: new { controller = "Division1", action = "Index" }
            );

            routes.MapRoute(
                name: "Division1Section1default",
                url: "Division1/Section1",
                defaults: new { controller = "Section1_1", action = "Index" }
            );

            routes.MapRoute(
                name: "Division1Section1",
                url: "Division1/Section1/Index",
                defaults: new { controller = "Section1_1", action = "Index" }
            );

            routes.MapRoute(
                name: "Division1Project1",
                url: "Division1/Project1",
                defaults: new { controller = "Division1", action = "Project1" }
            );

            routes.MapRoute(
                name: "Division1Project2",
                url: "Division1/Project2",
                defaults: new { controller = "Division1", action = "Project2" }
            );

            routes.MapRoute(
                name: "Division1Project3",
                url: "Division1/Project3",
                defaults: new { controller = "Division1", action = "Project3" }
            );

            routes.MapRoute(
                name: "Division1Project4",
                url: "Division1/Project4",
                defaults: new { controller = "Division1", action = "Project4" }
            );

            routes.MapRoute(
                name: "Division1Project5",
                url: "Division1/Project5",
                defaults: new { controller = "Division1", action = "Project5" }
            );

            routes.MapRoute(
                name: "Division2default",
                url: "Division2",
                defaults: new { controller = "Division2", action = "Index" }
            );

            routes.MapRoute(
                name: "Division2",
                url: "Division2/Index",
                defaults: new { controller = "Division2", action = "Index" }
            );

            routes.MapRoute(
                name: "Division2Section1default",
                url: "Division2/Section1",
                defaults: new { controller = "Section2_1", action = "Index" }
            );

            routes.MapRoute(
                name: "Division2Section1",
                url: "Division2/Section1/Index",
                defaults: new { controller = "Section2_1", action = "Index" }
            );

            routes.MapRoute(
               name: "Division2Section1Project1",
               url: "Division2/Section1/Project1",
               defaults: new { controller = "Section2_1", action = "Project1" }
            );

            routes.MapRoute(
               name: "Division2Section1Project2",
               url: "Division2/Section1/Project2",
               defaults: new { controller = "Section2_1", action = "Project2" }
            );

            routes.MapRoute(
                name: "Division2Section1Project3",
                url: "Division2/Section1/Project3",
                defaults: new { controller = "Section2_1", action = "Project3" }
            );

            routes.MapRoute(
                name: "Division2Section4default",
                url: "Division2/Section4",
                defaults: new { controller = "Section2_4", action = "Index" }
            );

            routes.MapRoute(
                name: "Division2Section4",
                url: "Division2/Section4/Index",
                defaults: new { controller = "Section2_4", action = "Index" }
            );

            routes.MapRoute(
               name: "Division2Section4Project1",
               url: "Division2/Section4/Project1",
               defaults: new { controller = "Section2_4", action = "Project1" }
            );

            routes.MapRoute(
               name: "Division2Section4Project2",
               url: "Division2/Section4/Project2",
               defaults: new { controller = "Section2_4", action = "Project2" }
            );

            routes.MapRoute(
                name: "Division2Section5default",
                url: "Division2/Section5",
                defaults: new { controller = "Section2_5", action = "Index" }
            );

            routes.MapRoute(
                name: "Division2Section5",
                url: "Division2/Section5/Index",
                defaults: new { controller = "Section2_5", action = "Index" }
            );

            routes.MapRoute(
                name: "Division2Section5Section1default",
                url: "Division2/Section5/Section1",
                defaults: new { controller = "Section2_5_1", action = "Index" }
            );

            routes.MapRoute(
                name: "Division2Section5Section1",
                url: "Division2/Section5/Section1/Index",
                defaults: new { controller = "Section2_5_1", action = "Index" }
            );

            routes.MapRoute(
               name: "Division2Section5Section1Project1",
               url: "Division2/Section5/Section1/Project1",
               defaults: new { controller = "Section2_5_1", action = "Project1" }
            );

            routes.MapRoute(
               name: "Division2Section5Section1Project2",
               url: "Division2/Section5/Section1/Project2",
               defaults: new { controller = "Section2_5_1", action = "Project2" }
            );

            routes.MapRoute(
               name: "Division2Section5Section1Project3",
               url: "Division2/Section5/Section1/Project3",
               defaults: new { controller = "Section2_5_1", action = "Project3" }
            );

            routes.MapRoute(
               name: "Division2Section5Section1Project4",
               url: "Division2/Section5/Section1/Project4",
               defaults: new { controller = "Section2_5_1", action = "Project4" }
            );

            routes.MapRoute(
               name: "Division2Section5Section1Project5",
               url: "Division2/Section5/Section1/Project5",
               defaults: new { controller = "Section2_5_1", action = "Project5" }
            );

            routes.MapRoute(
               name: "Division2Section5Section1Project6",
               url: "Division2/Section5/Section1/Project6",
               defaults: new { controller = "Section2_5_1", action = "Project6" }
            );
            
            routes.MapRoute(
                name: "Division2Section5Section2default",
                url: "Division2/Section5/Section2",
                defaults: new { controller = "Section2_5_2", action = "Index" }
            );

            routes.MapRoute(
                name: "Division2Section5Section2",
                url: "Division2/Section5/Section2/Index",
                defaults: new { controller = "Section2_5_2", action = "Index" }
            );

            routes.MapRoute(
               name: "Division2Section5Section2Project1",
               url: "Division2/Section5/Section2/Project1",
               defaults: new { controller = "Section2_5_2", action = "Project1" }
            );

            routes.MapRoute(
               name: "Division2Section5Section2Project2",
               url: "Division2/Section5/Section2/Project2",
               defaults: new { controller = "Section2_5_2", action = "Project2" }
            );

            routes.MapRoute(
                name: "Division2Section5Section3default",
                url: "Division2/Section5/Section3",
                defaults: new { controller = "Section2_5_3", action = "Index" }
            );

            routes.MapRoute(
                name: "Division2Section5Section3",
                url: "Division2/Section5/Section3/Index",
                defaults: new { controller = "Section2_5_3", action = "Index" }
            );

            routes.MapRoute(
               name: "Division2Section5Section3Project1",
               url: "Division2/Section5/Section3/Project1",
               defaults: new { controller = "Section2_5_3", action = "Project1" }
            );

            routes.MapRoute(
                name: "Division2Section5Section4default",
                url: "Division2/Section5/Section4",
                defaults: new { controller = "Section2_5_4", action = "Index" }
            );

            routes.MapRoute(
                name: "Division2Section5Section4",
                url: "Division2/Section5/Section4/Index",
                defaults: new { controller = "Section2_5_4", action = "Index" }
            );

            routes.MapRoute(
               name: "Division2Section5Section4Project1",
               url: "Division2/Section5/Section4/Project1",
               defaults: new { controller = "Section2_5_4", action = "Project1" }
            );

            routes.MapRoute(
                name: "Division3default",
                url: "Division3",
                defaults: new { controller = "Division3", action = "Index" }
            );

            routes.MapRoute(
                name: "Division3",
                url: "Division3/Index",
                defaults: new { controller = "Division3", action = "Index" }
            );

            routes.MapRoute(
                name: "Division3Project1",
                url: "Division3/Project1",
                defaults: new { controller = "Division3", action = "Project1" }
            );

            routes.MapRoute(
                name: "Division3Project2",
                url: "Division3/Project2",
                defaults: new { controller = "Division3", action = "Project2" }
            );

            routes.MapRoute(
                name: "Division3Project3",
                url: "Division3/Project3",
                defaults: new { controller = "Division3", action = "Project3" }
            );

            routes.MapRoute(
                name: "Division3Project4",
                url: "Division3/Project4",
                defaults: new { controller = "Division3", action = "Project4" }
            );

            routes.MapRoute(
                name: "Division3Project5",
                url: "Division3/Project5",
                defaults: new { controller = "Division3", action = "Project5" }
            );
            
            routes.MapRoute(
                name: "Catch",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Main", action = "Index", id = UrlParameter.Optional }
            );



        }
    }
}
