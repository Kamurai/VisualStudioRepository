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

            return View();
        }

        public ActionResult Project1()
        {
            ViewBag.Message = "";
            return View("~/Section2_5_1");
        }

        public ActionResult Project2()
        {
            ViewBag.Message = "";
            return View("~/Section2_5_2");
        }

        public ActionResult Project3()
        {
            ViewBag.Message = "";
            return View("~/Section2_5_3");
        }

        public ActionResult Project4()
        {
            ViewBag.Message = "";
            return View("~/Section2_5_4");
        }
    }
}
