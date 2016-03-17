using System.Web;
using System.Web.Mvc;
using WebMatrix.WebData;
using WebMatrix.Data;

namespace SF
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
