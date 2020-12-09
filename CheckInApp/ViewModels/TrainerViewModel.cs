using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheckInApp.ViewModels
{
    public class TrainerCreateViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string MNV { get; set; }
        public string Tel { get; set; }
        public int provinceID { get; set; }
        public int positionID { get; set; }
        public int StoreID { get; set; }


    }
    public class TrainerViewModel
    {
        public int Id { get; set; }
        public string Fullname { get; set; }
        public string Tel { get; set; }
        public TrainerProvince TrainerProvince { get; set; }
        public TrainerPosition TrainerPosition { get; set; }
        public bool Sts { get; set; }
    }

    public class TrainerProvince
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    public class TrainerPosition
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }
}