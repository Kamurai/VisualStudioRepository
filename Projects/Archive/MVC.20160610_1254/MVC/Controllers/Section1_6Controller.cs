using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using MVC.Models;
//using MVC.Interfaces;
//using MVC.Repositories;
//using MVC.Database;
//using PagedList;


namespace MVC.Controllers
{
    public class Section1_6Controller : Controller
    {
        public Section1_6Controller()
        {
        }

        public ActionResult Index()
        {
            ViewBag.Message = "";

            return View();
        }

        public ActionResult Project1()
        {
            ViewBag.Message = "";
            return View(new OracleConnectionString());
        }

        public ActionResult Project2()
        {
            ViewBag.Message = "";
            return View();
        }

        public ActionResult Project3()
        {
            ViewBag.Message = "";
            return View(new MySQLConnectionString());
        }

        public ActionResult Project4()
        {
            ViewBag.Message = "";
            return View(new SQLServerConnectionString());
        }

        public ActionResult Project5()
        {
            ViewBag.Message = "";
            return View(new PostgreSQLConnectionString());
        }
    }
}
