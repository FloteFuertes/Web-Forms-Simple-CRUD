using SuiteWorksExam.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SuiteWorksExam.ViewModel
{
    public class StudentViewModel
    {
        public int StudentId { get; set; }
        public string fristname { get; set; }
        public string lastname { get; set; }
        public string course { get; set; }
        public  string SubjectName { get; set; }
        public string InstructorName { get; set; }
        public string SubjTimeFrom { get; set; }
        public string SubjTimeTo { get; set; }
        public int Roomno { get; set; }

    }
}