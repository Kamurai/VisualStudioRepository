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

        public ActionResult Project1HTML() //HTML
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org/Section1/Project1.html");
        }
        
        public ActionResult Project1PHP() //PHP
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org/Section1/Project1.php");
        }

        public ActionResult Project3() //Perl
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org/Section1/Project3.shtml");
        }

        public ActionResult Project4() //Apache SSI
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org/SSI/Section1/index.html");
        }
    }
}
