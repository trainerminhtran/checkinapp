﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CheckInApp.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class InternalCheckinappEntities : DbContext
    {
        public InternalCheckinappEntities()
            : base("name=InternalCheckinappEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AccountInfor> AccountInfors { get; set; }
        public virtual DbSet<AnswerInfor> AnswerInfors { get; set; }
        public virtual DbSet<AnswerRecord> AnswerRecords { get; set; }
        public virtual DbSet<AreaInfor> AreaInfors { get; set; }
        public virtual DbSet<CatInfor> CatInfors { get; set; }
        public virtual DbSet<ChannelInfor> ChannelInfors { get; set; }
        public virtual DbSet<CheckinImageRecord> CheckinImageRecords { get; set; }
        public virtual DbSet<CheckinInfor> CheckinInfors { get; set; }
        public virtual DbSet<CityRuralInfor> CityRuralInfors { get; set; }
        public virtual DbSet<ContentCourseRecord> ContentCourseRecords { get; set; }
        public virtual DbSet<ContentInfor> ContentInfors { get; set; }
        public virtual DbSet<ContentModelRecord> ContentModelRecords { get; set; }
        public virtual DbSet<CourseInfor> CourseInfors { get; set; }
        public virtual DbSet<CourseTestRecord> CourseTestRecords { get; set; }
        public virtual DbSet<DistrictInfor> DistrictInfors { get; set; }
        public virtual DbSet<GiftCourseRecord> GiftCourseRecords { get; set; }
        public virtual DbSet<GiftInfor> GiftInfors { get; set; }
        public virtual DbSet<GiftType> GiftTypes { get; set; }
        public virtual DbSet<ImageInfor> ImageInfors { get; set; }
        public virtual DbSet<LevelInfor> LevelInfors { get; set; }
        public virtual DbSet<LoginInfor> LoginInfors { get; set; }
        public virtual DbSet<ModelInfor> ModelInfors { get; set; }
        public virtual DbSet<PermissionInfor> PermissionInfors { get; set; }
        public virtual DbSet<PlatformInfor> PlatformInfors { get; set; }
        public virtual DbSet<PositionInfor> PositionInfors { get; set; }
        public virtual DbSet<ProvinceInfor> ProvinceInfors { get; set; }
        public virtual DbSet<QuestionInfor> QuestionInfors { get; set; }
        public virtual DbSet<RegionInfor> RegionInfors { get; set; }
        public virtual DbSet<StoreInfor> StoreInfors { get; set; }
        public virtual DbSet<TestInfor> TestInfors { get; set; }
        public virtual DbSet<TestQuestionRecord> TestQuestionRecords { get; set; }
        public virtual DbSet<UserInfor> UserInfors { get; set; }
        public virtual DbSet<UserPermissionRecord> UserPermissionRecords { get; set; }
        public virtual DbSet<VenueInfor> VenueInfors { get; set; }
        public virtual DbSet<TrainerInfor> TrainerInfors { get; set; }
        public virtual DbSet<RoomInfor> RoomInfors { get; set; }
        public virtual DbSet<EmployeeInfor> EmployeeInfors { get; set; }
        public virtual DbSet<TrainerRoomRecord> TrainerRoomRecords { get; set; }
    }
}
