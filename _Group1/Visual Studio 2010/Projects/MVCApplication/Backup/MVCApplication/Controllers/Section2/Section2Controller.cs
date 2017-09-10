using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Section2Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult Project1()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section1/Index.cshtml");
        }

        public ActionResult Project2()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult Project3()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult Project4()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section4/Index.cshtml");
        }

        public ActionResult Project5()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Index.cshtml");
        }

        public ActionResult Project6()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section6/Index.cshtml");
        }

        public ActionResult Project7()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult Project8()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult Project9()
        {
            ViewBag.Message = "";
            return View();
        }

    }
}
