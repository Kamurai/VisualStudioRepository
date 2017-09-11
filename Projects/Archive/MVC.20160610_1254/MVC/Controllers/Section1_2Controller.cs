using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Section1_2Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult Project1()
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org/Javascript/Section1/Section2/Project1.html");
        }

        public ActionResult Project2()
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org:81/ASP/Section1/Section2/Project2.asp");
        }

        public ActionResult Project3()
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org:81/ASPNET/Section1/Section2/Project3.aspx");
        }
    }
}
