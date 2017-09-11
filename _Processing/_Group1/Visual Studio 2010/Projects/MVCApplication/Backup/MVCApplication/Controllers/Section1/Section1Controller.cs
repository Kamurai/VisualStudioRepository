using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Section1Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult Project1() //PHP: Not sure if this
        {
            ViewBag.Message = "";
            return View();
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
            return View();
        }

        public ActionResult Project5()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult Project6()
        {
            ViewBag.Message = "";
            return View("~/Views/Section1/Section6/Index.cshtml");
        }

        //Controllers options seem to be as follows:
            //1)  One super complicated controller, causing complex page name conventions on all pages
            //2)  Several controllers with complex naming conventions - winning
    }
}
