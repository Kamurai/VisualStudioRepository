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

            return View("~/Views/Section1/Section5/Index.cshtml");
        }

        public ActionResult Project3()
        {
            ViewBag.Message = "";
            return View("~/Views/Section1/Section5/Project3.cshtml");
        }
    }
}
