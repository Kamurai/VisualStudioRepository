﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCApplication.Controllers
{
    public class Section2_1Controller : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult Project1()
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
    }
}
