using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace SuiteWorksExam.Model
{
    public class DatabaseInitializer : CreateDatabaseIfNotExists<StudentDbContext>
    {
        protected override  void Seed(StudentDbContext context)
        {
            

            if (context.Students.Any())
            {
                return; //DB has already seeded.
            }

            var student = new Student[]
            {
                new Student{ Id =1 , Student_FirstName = "Flote", Student_LastName = "Fuertes", Course = "BSIT",
                    Subjects = new List<Subject> {
                        new Subject { Id =1, InstructorName = "Professor", SubjectName="BS-111", SubjectTimeFrom="9:00",SubjectTimeTo="10:00",RoomNumber=101},
                        new Subject { Id =2, InstructorName = "Teacher A", SubjectName="BS-112", SubjectTimeFrom="10:30",SubjectTimeTo="11:30",RoomNumber=102}
                    },

                },

                  new Student{ Id =2 , Student_FirstName = "Juan", Student_LastName = "Dela Cruz", Course = "BSEE",
                    Subjects = new List<Subject> {
                        new Subject { Id =3, InstructorName = "John Wok", SubjectName="Calculus", SubjectTimeFrom="11:00",SubjectTimeTo="13:00",RoomNumber=503}
                    }
                },

                   new Student{ Id =3 , Student_FirstName = "Donald", Student_LastName = "Ching", Course = "BSIT",
                    Subjects = new List<Subject> {
                        new Subject { Id =4, InstructorName = "Professor", SubjectName="BS-111", SubjectTimeFrom="9:00",SubjectTimeTo="10:00",RoomNumber=101},
                        new Subject { Id =5, InstructorName = "Teacher A", SubjectName="BS-112", SubjectTimeFrom="10:30",SubjectTimeTo="11:30",RoomNumber=102}
                    },

                },

                  new Student{ Id =4 , Student_FirstName = "Alea", Student_LastName = "Chu", Course = "BSED",
                    Subjects = new List<Subject> {
                        new Subject { Id =6, InstructorName = "John Wok", SubjectName="Calculus", SubjectTimeFrom="11:00",SubjectTimeTo="13:00",RoomNumber=503}
                    }
                },

            };

            foreach(Student s in student)
            {
                context.Students.Add(s);
            }


            context.SaveChanges();
            //base.Seed(context);
        }      
    }
}