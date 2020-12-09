using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using QRCoder;

namespace CheckInApp.Services
{
    public class QRCodeService
    {
        public string GetBaseUrl(string st)
        {
            var request = HttpContext.Current.Request;
            var appUrl = HttpRuntime.AppDomainAppVirtualPath;

            if (appUrl != "/")
                appUrl = "/" + appUrl;
            else
            {
                appUrl += "usercheckin/index/" + st;
            }

            var baseUrl = string.Format("{0}://{1}{2}", request.Url.Scheme, request.Url.Authority, appUrl);

            return baseUrl;
        }

        public string GetRoomPath(Guid id)
        {
            return "/usercheckin/index/" + id;
        }
        public string GetUrlByRoomurl(string roomurl)
        {
            var request = HttpContext.Current.Request;
            var appUrl = HttpRuntime.AppDomainAppVirtualPath;
            return string.Format("{0}://{1}{2}/", request.Url.Scheme, request.Url.Authority, roomurl);
        }
        public string getGuideIDFromRoomUrl(string returnUrl)
        {
            return returnUrl.Split('/').GetValue(4).ToString();
        }
        public byte[] GetQRCode(string st)
        {
            var qrGenerator = new QRCodeGenerator();
            var qrCodeData = qrGenerator.CreateQrCode(st, QRCodeGenerator.ECCLevel.Q);
            var qrCode = new QRCode(qrCodeData);
            var qrCodeImage = qrCode.GetGraphic(20);

            var converter = new ImageConverter();
            return (byte[])converter.ConvertTo(qrCodeImage, typeof(byte[]));
        }

        public string QRCodeView(byte[] qr)
        {
            return "data:image/png;base64," + Convert.ToBase64String(qr);
        }
    }
}