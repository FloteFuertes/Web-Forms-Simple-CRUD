using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SuiteWorksExam.ViewModel;
using SuiteWorksExam.Repository;
using SuiteWorksExam.Model;

namespace SuiteWorksExam
{
    public partial class Create : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            StudentViewModel vmStudent = new StudentViewModel();
            StudentRepository _student = new StudentRepository();

            vmStudent.fristname = txtname.Text;
            vmStudent.lastname = txtlname.Text;
            vmStudent.course = txtcourse.Text;

           
            var result = _student.InsertStudent(vmStudent);

            if (result)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Window", "alert('Student Added Successfully');", true);
                txtname.Text = string.Empty;
                txtlname.Text = string.Empty;
                txtcourse.Text = string.Empty;
            }
            
        }
    }
}