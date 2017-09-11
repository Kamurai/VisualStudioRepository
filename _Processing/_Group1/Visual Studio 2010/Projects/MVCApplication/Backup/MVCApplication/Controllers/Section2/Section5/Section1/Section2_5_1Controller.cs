using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Section2_5_1Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View("~/Views/Section2/Section5/Section1/Index.cshtml");
        }

        public ActionResult Project1()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section1/Project1.cshtml");
        }

        public ActionResult Project2()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section1/Project2.cshtml");
        }

        public ActionResult Project3()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section1/Project3.cshtml");
        }

        public ActionResult Project4()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section1/Project4.cshtml");
        }

        public ActionResult Project5()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section1/Project5.cshtml");
        }

        public ActionResult Project6()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section1/Project6.cshtml");
        }
    }
}
