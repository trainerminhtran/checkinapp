using System.Web;
using System.Web.Optimization;

namespace CheckInApp
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));
            //AdminLTE
            bundles.Add(new StyleBundle("~/css").Include(
                        "~/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css",
                        "~/plugins/datatables-responsive/css/responsive.bootstrap4.min.css",
                        "~/plugins/fontawesome-free/css/all.min.css",
                        "~/dist/css/adminlte.min.css",
                        "~/dist/bootoast.min.css"
                        ));

            bundles.Add(new StyleBundle("~/signaturepadcss").Include(
           "~/plugins/signature-pad-master/assets/jquery.signaturepad.css"
            ));
            bundles.Add(new ScriptBundle("~/js").Include(
                "~/plugins/jquery/jquery.min.js",
                "~/plugins/bootstrap/js/bootstrap.bundle.min.js",
                "~/dist/js/adminlte.min.js",
                "~/dist/js/demo.js",
                "~/dist/bootoast.min.js",
                "~/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
            ));

            bundles.Add(new ScriptBundle("~/signaturepadjs").Include(
                "~/plugins/signature-pad-master/numeric-1.2.6.min.js",
                "~/plugins/signature-pad-master/bezier.js",
                "~/plugins/signature-pad-master/json2.min.js",
                "~/plugins/signature-pad-master/jquery.signaturepad.js"
                ));

        }
    }
}
