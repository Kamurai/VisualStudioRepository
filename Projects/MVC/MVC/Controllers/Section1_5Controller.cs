using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Section1_5Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult Project1()
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org:81/WepApplication/Section1/Section5/Project1.cshtml");
        }

        public ActionResult Project2()
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org:81/WebForm/Section1/Section5/Project2.aspx");
        }

        public ActionResult Project3()
        {
            ViewBag.Message = "";
            return View();
        }
    }
}
