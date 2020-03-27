using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SuiteWorksExam.Model
{
    public class Student
    {
        public int Id { get; set; }
        public string Student_FirstName { get; set; }
        public string Student_LastName { get; set; }
        public string Course { get; set; }
        public List<Subject> Subjects { get; set; }
    }
}