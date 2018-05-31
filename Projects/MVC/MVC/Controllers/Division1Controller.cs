using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Division1Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";
            return View();
        }

        public String HTML()
        {
            ViewBag.Message = "";
            return "http://htkb.dyndns.org/Section1/Index.html";
        }
        
        public ActionResult PHP()
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org/Section1/Index.php");
        }

        public ActionResult Perl()
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org/Section1/Index.shtml");
        }

        public ActionResult ApacheSSI()
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org/SSI/Section1/Index.html");
        }

        public ActionResult PythonWebPy()
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org:82/Section1/Index.html");
        }

        public ActionResult RubyOnRails()
        {
            ViewBag.Message = "";
            return View("http://htkb.dyndns.org:83/Section1/Index.html");
        }




    }
}
