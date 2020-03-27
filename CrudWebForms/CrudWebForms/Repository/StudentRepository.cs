using SuiteWorksExam.Model;
using SuiteWorksExam.ViewModel;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace SuiteWorksExam.Repository
{
    public class StudentRepository : IStudent
    {
 
        public StudentRepository()
        {
            
        }

        public IEnumerable<Student> GetStudents()
        {
            using(StudentDbContext _context = new StudentDbContext())
            {
                return (from e in _context.Students
                        select e).ToList();
            }
            
        }

        public bool InsertStudent(StudentViewModel student)
        {
            bool inserted = false;

            using (StudentDbContext _context = new StudentDbContext())
            {
                using (var trans = _context.Database.BeginTransaction())
                {
                    try
                    {
                        Student s = new Student();
                        s.Student_FirstName = student.fristname;
                        s.Student_LastName = student.lastname;
                        s.Course = student.course;


                        _context.Students.Add(s);
                        _context.SaveChanges();
                        trans.Commit();
                        inserted = true;
                    }
                    catch (DbEntityValidationException)
                    {
                        trans.Rollback();
                        return false;
                    }
                }

            }

            return inserted;

        }

        public bool IsSuccess(StudentViewModel student)
        {
            throw new NotImplementedException();
        }



        public bool InsertSubject(StudentViewModel student)
        {
            bool inserted = false;

            using (StudentDbContext _context = new StudentDbContext())
            {
                Student _student = new Student();

                Model.Subject s = new Model.Subject();


                using (var trans = _context.Database.BeginTransaction())
                {
                    try
                    {                       
                        Student stud = _context.Students.FirstOrDefault(x => x.Id == student.StudentId);

                        stud.Subjects = new List<Model.Subject>();


                        if (stud != null)
                        {

                            s.SubjectName = student.SubjectName;
                            s.InstructorName = student.InstructorName;
                            s.RoomNumber = student.Roomno;
                            s.SubjectTimeFrom = student.SubjTimeFrom;
                            s.SubjectTimeTo = student.SubjTimeTo;
                            
                           
                        }
                        stud.Subjects.Add(s); 
                        _context.SaveChanges();
                        trans.Commit();
                        inserted = true;

                    }
                    catch (DbEntityValidationException)
                    {
                        trans.Rollback();
                        return false;
                    }
                }

            }

            return inserted;

        }

        public List<Student> GetSubject(int id)
        {
            using(StudentDbContext _context = new StudentDbContext())
            {
                var stud = _context.Students.Include("Subjects").Where(x => x.Id.Equals(id)).ToList();

                return stud;
            }
        }

        public void DeleteSubject(int id)
        {
            using(StudentDbContext _context = new StudentDbContext())
            {
                var result = (from x in _context.Subjects
                              where x.Id == id
                              select x).FirstOrDefault();

                _context.Subjects.Remove(result);
                _context.SaveChanges();

            }
        }

        public void UpdateSubject(StudentViewModel student, int id)
        {
            using (StudentDbContext _context = new StudentDbContext())
            {
                try
                {
                    var result = (from x in _context.Subjects
                                  where x.Id == id
                                  select x).FirstOrDefault();

                    result.SubjectName = student.SubjectName;
                    result.InstructorName = student.InstructorName;
                    result.SubjectTimeFrom = student.SubjTimeFrom;
                    result.SubjectTimeTo = student.SubjTimeTo;
                    result.RoomNumber = student.Roomno;

                    _context.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    throw new Exception();
                }
            }

        }
    }
}