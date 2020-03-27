namespace SuiteWorksExam.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ChangeTimeinSubject : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Subjects", "SubjectTimeFrom", c => c.String());
            AlterColumn("dbo.Subjects", "SubjectTimeTo", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Subjects", "SubjectTimeTo", c => c.DateTime(nullable: false));
            AlterColumn("dbo.Subjects", "SubjectTimeFrom", c => c.DateTime(nullable: false));
        }
    }
}
