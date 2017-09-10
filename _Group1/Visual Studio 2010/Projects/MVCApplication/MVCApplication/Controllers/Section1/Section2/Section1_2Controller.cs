using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Section1_2Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View("~/Views/Section1/Section2/Index.cshtml");
        }
    }
}
