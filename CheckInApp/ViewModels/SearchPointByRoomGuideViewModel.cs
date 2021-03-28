using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace CheckInApp.ViewModels
{
    public class ShowSearchPoint
    {
        [Display(Name = "Họ Tên NV")]

        public string UserFullname { get; set; }
        [Display(Name = "Thời gian làm bài")]
        public DateTime CheckinTime { get; set; }
        [Display(Name = "Lớp học")]

        public string CourseName { get; set; }
        [Display(Name = "Cửa hàng")]
        public string Store { get; set; }
        [Display(Name = "Điểm số")]
        public int CountingScore { get; set; }
        public List<SearchPointByRoomGuideViewModel> ListPoint { get; set; }
    }
    public class SearchPointByRoomGuideViewModel
    {
        public long CheckinId { get; set; }
        public DateTime CheckinTime { get; set; }
        public int	UserId { get; set; }

        public string	UserFullname { get; set; }
        public string	Store { get; set; }
        public string	Tel { get; set; }

        public string CourseName	 { get; set; }
        public int CountingScore { get; set; }
        public int	CourseId { get; set; }
	}
}