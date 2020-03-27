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
    public partial class WebForm1 : System.Web.UI.Page
    {
        StudentRepository _repository = new StudentRepository();
        StudentViewModel vw = new StudentViewModel();

        private int GetId { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int Id = (int)e.Keys["Id"];
            vw.SubjectName = (string)e.NewValues["SubjectName"];
            vw.InstructorName = (string)e.NewValues["InstructorName"];
            vw.SubjTimeFrom = (string)e.NewValues["SubjectTimeFrom"];
            vw.SubjTimeTo = (string)e.NewValues["SubjectTimeTo"];
            vw.Roomno = Convert.ToInt32(e.NewValues["RoomNumber"]);

            _repository.UpdateSubject(vw,Id);

            GridView1.EditIndex = -1;
            int id = Convert.ToInt32(txtid.Text);
            BindData(id);
         
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
         {
            int Id = (int)e.Keys["Id"];

            _repository.DeleteSubject(Id);
            int id = Convert.ToInt32(txtid.Text);
            BindData(Id);
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
            GridView1.EditIndex = e.NewEditIndex;
            int id = Convert.ToInt32(txtid.Text);
            BindData(id);

        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
           
        }
        protected void txtlname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtid.Text);
            GetId = id;
            // Get all Student 
            var _checkId = _repository.GetStudents();

            //Query the Id if found in the list
            var valid = _checkId.Where(x => x.Id == id).FirstOrDefault();

            if (valid != null)
            {
                txtfname.Text = valid.Student_FirstName;
                txtlname.Text = valid.Student_LastName;
                txtcourse.Text = valid.Course;

                BindData(id);
            }
        }

        private void BindData(int id)
        {
            List<Model.Subject> sub = new List<Model.Subject>();

            var s = _repository.GetSubject(id);
            var ss = s.Select(x => x.Subjects).ToList();

            ss.ForEach(x =>
            {
                x.ForEach(y =>
                {
                    Model.Subject subj = new Model.Subject();
                    subj.Id = y.Id;
                    subj.SubjectName = y.SubjectName;
                    subj.InstructorName = y.InstructorName;
                    subj.SubjectTimeFrom = y.SubjectTimeFrom;
                    subj.SubjectTimeTo = y.SubjectTimeTo;
                    subj.RoomNumber = y.RoomNumber;
                    sub.Add(subj);
                });
            }
            );

            GridView1.DataSource = sub.ToList();
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            int id = Convert.ToInt32(txtid.Text);
            GridView1.EditIndex = -1;
            BindData(id);
        }
    }
}