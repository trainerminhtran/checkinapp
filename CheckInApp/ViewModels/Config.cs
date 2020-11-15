using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Checkinapp.ViewModels
{
    public class Config
    {
        public static string ContentFilePath { get { return ContentFilePath; } set { ContentFilePath = "/UploadedFiles/"; } }
    }
}