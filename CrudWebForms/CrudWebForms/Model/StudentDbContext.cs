namespace SuiteWorksExam.Model
{
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class StudentDbContext : DbContext
    {
        // Your context has been configured to use a 'StudentDbContext' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'SuiteWorksExam.Model.StudentDbContext' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'StudentDbContext' 
        // connection string in the application configuration file.
        public StudentDbContext()
            : base("name=StudentDbContext")
        {
        }

        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

         public virtual DbSet<Student> Students { get; set; }
         public virtual DbSet<Subject> Subjects { get; set; }
    }

    //public class MyEntity
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
}