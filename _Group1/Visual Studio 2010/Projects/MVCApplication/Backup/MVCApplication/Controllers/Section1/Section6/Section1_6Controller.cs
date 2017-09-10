using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Section1_6Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View("~/Views/Section1/Section6/Index.cshtml");
        }

        public ActionResult Project1()
        {
            ViewBag.Message = "";
            return View("~/Views/Section1/Section6/Project1.cshtml");
        }

        public ActionResult Project2()
        {
            ViewBag.Message = "";
            return View("~/Views/Section1/Section6/Project2.cshtml");
        }

        public ActionResult Project3()
        {
            ViewBag.Message = "";
            return View("~/Views/Section1/Section6/Project3.cshtml");
        }
    }
}
