using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Section2_5_2Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View("~/Views/Section2/Section5/Section2/Index.cshtml");
        }

        public ActionResult Project1()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section2/Project1.cshtml");
        }

        public ActionResult Project2()
        {
            ViewBag.Message = "";
            return View("~/Views/Section2/Section5/Section2/Project2.cshtml");
        }
    }
}
