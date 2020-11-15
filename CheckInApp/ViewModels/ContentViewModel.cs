using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Mvc;
using CheckInApp.Models;

namespace Checkinapp.ViewModels
{
    public class UploadContentViewModel
    {
        public int catId { get; set; }
        public List<int> modelIds { get; set; }
    }

    public class CatViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    public class ModelViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    public class GetAllContentModel  : ContentInfor
    {
        public int Id { get; set; }


        public List<ModelViewModel> Models
        {
            get;
            set;
        }
    }

    public class UpdateContentStatus
    {
        public int id { get; set; }
        public bool sts { get; set; }
    }
}