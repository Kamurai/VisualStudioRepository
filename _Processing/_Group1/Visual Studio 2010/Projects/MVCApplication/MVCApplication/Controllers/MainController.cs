using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class MainController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult AboutUs()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult Affiliation()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult Minecraft()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult PublicProjects()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult MemberPages()
        {
            ViewBag.Message = "";
            return View();
        }


    }
}
