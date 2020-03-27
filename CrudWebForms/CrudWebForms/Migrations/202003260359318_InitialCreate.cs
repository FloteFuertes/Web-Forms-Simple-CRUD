namespace SuiteWorksExam.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Students",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Student_FirstName = c.String(),
                        Student_LastName = c.String(),
                        Course = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Subjects",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        SubjectName = c.String(),
                        SubjectTimeFrom = c.DateTime(nullable: false),
                        SubjectTimeTo = c.DateTime(nullable: false),
                        InstructorName = c.String(),
                        RoomNumber = c.Int(nullable: false),
                        Student_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Students", t => t.Student_Id)
                .Index(t => t.Student_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Subjects", "Student_Id", "dbo.Students");
            DropIndex("dbo.Subjects", new[] { "Student_Id" });
            DropTable("dbo.Subjects");
            DropTable("dbo.Students");
        }
    }
}
