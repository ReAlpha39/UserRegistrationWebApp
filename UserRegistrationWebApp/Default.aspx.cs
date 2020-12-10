using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UserRegistrationWebApp.ServiceReference1;

namespace UserRegistrationWebApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void Button1_Click(object sender, EventArgs e)
        {
            InsertUser user = new InsertUser();
            user.Name = TextBox1.Text;
            user.Email = TextBox2.Text;
            string r = client.Insert(user);
            Label3.Text = r.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ServiceReference1.gettestdata g = new ServiceReference1.gettestdata();
            g = client.GetInfo();
            DataTable dataTable = new DataTable();
            dataTable = g.userTab;
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            UpdateUser updateUser = new UpdateUser();
            updateUser.UID = int.Parse(TextBox3.Text);
            updateUser.Name = TextBox1.Text;
            updateUser.Email = TextBox2.Text;
            string result = client.Update(updateUser);
            Label3.Text = result.ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DeleteUser deleteUser = new DeleteUser();
            deleteUser.UID = int.Parse(TextBox3.Text);
            string res = client.Delete(deleteUser);
            Label3.Text = res.ToString();
        }
    }
}