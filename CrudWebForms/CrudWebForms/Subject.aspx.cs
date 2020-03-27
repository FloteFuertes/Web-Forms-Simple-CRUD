using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuiteWorksExam.Repository;
using SuiteWorksExam.ViewModel;

namespace SuiteWorksExam
{
    public partial class Subject : System.Web.UI.Page
    {
        StudentViewModel subj = new StudentViewModel();
        StudentRepository _repository = new StudentRepository();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                lblInstructor.Text = "Select";
                lblroomno.Text = "Select";
            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            lblInstructor.Text = string.Empty;
            lblroomno.Text = string.Empty;

            int id = Convert.ToInt32(txtid.Text);

            // Get all Student 
            var _checkId = _repository.GetStudents();

            //Query the Id if found in the list
            var valid = _checkId.Where(x => x.Id == id).FirstOrDefault();


            if (valid != null)
            {
               
                subj.StudentId = Int32.Parse(txtid.Text);
                lblStudentName.Text = $"{valid.Student_LastName} , {valid.Student_FirstName}";
                lblCourse.Text = valid.Course;

            }
            else
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "key", "alert('Student Id not found');", true);
                
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            subj.StudentId = Int32.Parse(txtid.Text);
            subj.SubjectName = ddsubject.SelectedValue;
            subj.InstructorName = lblInstructor.Text;
            subj.SubjTimeFrom = ddfrom.SelectedValue;
            subj.SubjTimeTo = ddTo.SelectedValue;
            subj.Roomno = Int32.Parse(lblroomno.Text);



            var result = _repository.InsertSubject(subj);

            if (result)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "key", "alert('Subject Successfulle added.');", true);
            }

        }
   
     
        protected void ddsubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedvalue = ddsubject.SelectedValue;

            switch (selectedvalue)
            {
                case "English":
                    lblInstructor.Text = "Mr. XYZ";
                    lblroomno.Text = 101.ToString();
                    break;
                case "Filipino":
                    lblInstructor.Text = "Mr. Zamora";
                    lblroomno.Text = 102.ToString();
                    break;
                case "Math":
                    lblInstructor.Text = "Mrs. Dela Cruz";
                    lblroomno.Text = 501.ToString();
                    break;
                case "Calculus":
                    lblInstructor.Text = "Ms. Batongbakal";
                    lblroomno.Text = 604.ToString();
                    break;
                case "IT-111":
                    lblInstructor.Text = "Ms. Batongbakal";
                    lblroomno.Text = 310.ToString();
                    break;
                case "IT-112":
                    lblInstructor.Text = "Mr. Dela Cruz";
                    lblroomno.Text = 308.ToString();
                    break;
                case "Philosophy":
                    lblInstructor.Text = "Ms. Batongbakal";
                    lblroomno.Text = 202.ToString();
                    break;
                case "Robotics":
                    lblInstructor.Text = "Mr. Tobor";
                    lblroomno.Text = 512.ToString();
                    break;
                default:
                    lblInstructor.Text = "No Instructor Available";
                    lblroomno.Text = "NO Room Available";
                    break;
            }
        }
    }
}