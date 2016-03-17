//Written by: Anvita Patel and Harika Matta
//Tested and Debugged by: Anvita Patel and Harika Matta

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SF.Controllers
{
    [RequireHttps]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            //ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            //ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Portfolio()
        {
            //ViewBag.Message = "Your Portfolio";

            return View();
        }
        public ActionResult Queries()
        {
            //ViewBag.Message = "Query? We have answers!";

            return View();
        }
    }
}