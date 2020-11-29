using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Checkinapp.ViewModels
{
    public class Config
    {
        private string uploadPath = string.Empty;
        private string roomUrl = string.Empty;

        public Config()
        {
            uploadPath = "/UploadedFiles/";
            roomUrl = "/room/";
        }

        public string getUploadPath()
        {
            return uploadPath;
        }
    }
}