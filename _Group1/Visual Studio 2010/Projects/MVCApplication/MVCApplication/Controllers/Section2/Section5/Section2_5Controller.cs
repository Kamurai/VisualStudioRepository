using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Section2_5Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View("~/Views/Section2/Section5/Index.cshtml");
        }

        public ActionResult Project1()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section1/Index.cshtml");
        }

        public ActionResult Project2()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section2/Index.cshtml");
        }

        public ActionResult Project3()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section3/Index.cshtml");
        }

        public ActionResult Project4()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section4/Index.cshtml");
        }
    }
}
