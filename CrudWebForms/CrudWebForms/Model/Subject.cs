using System;
namespace SuiteWorksExam.Model
{
    public class Subject
    {
        public int Id { get; set; }
        public string SubjectName { get; set; }
        public string SubjectTimeFrom { get; set; }
        public string SubjectTimeTo { get; set; }
        public string InstructorName { get; set; }
        public int RoomNumber { get; set; }
    }
}