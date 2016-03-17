//Written by: Anvita Patel and Harika Matta
//Tested and Debugged by: Anvita Patel and Harika Matta

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SF.Models;

namespace SF.Controllers
{
    public class organizationtablesController : Controller
    {
        private test_schemaEntities1 db = new test_schemaEntities1();

        // GET: organizationtables
        public ActionResult Index()
        {
            return View(db.organizationtables.ToList());
        }

        // GET: organizationtables/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            organizationtable organizationtable = db.organizationtables.Find(id);
            if (organizationtable == null)
            {
                return HttpNotFound();
            }
            return View(organizationtable);
        }

        // GET: organizationtables/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: organizationtables/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "OrganizationName,OrganizationID")] organizationtable organizationtable)
        {
            if (ModelState.IsValid)
            {
                db.organizationtables.Add(organizationtable);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(organizationtable);
        }

        // GET: organizationtables/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            organizationtable organizationtable = db.organizationtables.Find(id);
            if (organizationtable == null)
            {
                return HttpNotFound();
            }
            return View(organizationtable);
        }

        // POST: organizationtables/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "OrganizationName,OrganizationID")] organizationtable organizationtable)
        {
            if (ModelState.IsValid)
            {
                db.Entry(organizationtable).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(organizationtable);
        }

        // GET: organizationtables/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            organizationtable organizationtable = db.organizationtables.Find(id);
            if (organizationtable == null)
            {
                return HttpNotFound();
            }
            return View(organizationtable);
        }

        // POST: organizationtables/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            organizationtable organizationtable = db.organizationtables.Find(id);
            db.organizationtables.Remove(organizationtable);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
