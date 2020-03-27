using SuiteWorksExam.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SuiteWorksExam.ViewModel;

namespace SuiteWorksExam.Repository
{
    public interface IStudent
    {
        IEnumerable<Student> GetStudents();
        bool IsSuccess(StudentViewModel student);
        List<Student> GetSubject(int id);
    }
}
