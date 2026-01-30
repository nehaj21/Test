using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_hosp_donor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        Panel3.Visible = false;
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        Panel3.Visible = false;
        DropDownList4.SelectedIndex = 0;
        DropDownList5.SelectedIndex = 0;
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList5.SelectedIndex == 0)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Panel3.Visible = false;
           

        }
        else if (DropDownList5.SelectedIndex != 0)
        {
            Panel2.Visible = false;
            Panel1.Visible = true;
            Panel3.Visible = false;
         
       
            if (DropDownList5.SelectedIndex == 1)
            {
                DropDownList4.Items.Add("DURGAPUR");
                DropDownList4.Items.Add("BANKURA");
                DropDownList4.Items.Add("ASANSOL");
                DropDownList4.Items.Add("MALDA");
                DropDownList4.Items.Add("KOLKATA");
                DropDownList4.Items.Add("NOIDA");
            }
            if (DropDownList5.SelectedIndex == 3)
            {
                DropDownList4.Items.Add("TELANGANA");
                DropDownList4.Items.Add("KUKATPALLY");
                DropDownList4.Items.Add("KAPRA");
                DropDownList4.Items.Add("LB NAGAR");
                DropDownList4.Items.Add("HITEC CITY");
                DropDownList4.Items.Add("BOLARUM");
            }
            if (DropDownList5.SelectedIndex == 4)
            {
                DropDownList4.Items.Add("KANDIWALI");
                DropDownList4.Items.Add("DADAR");
                DropDownList4.Items.Add("BORIVALI");
                DropDownList4.Items.Add("CHEMBUR");
                DropDownList4.Items.Add("MULUND");
                DropDownList4.Items.Add("WORLI");
            }
            if (DropDownList5.SelectedIndex == 5)
            {
                DropDownList4.Items.Add("CHENNAI");
                DropDownList4.Items.Add("KANCHIPURAM");
                DropDownList4.Items.Add("TIRUCHIRAPPALI");
                DropDownList4.Items.Add("COIMBATORE");
                DropDownList4.Items.Add("MADURAI");
                DropDownList4.Items.Add("TIRUNELVELI");
            }
        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedIndex == 0 && DropDownList5.SelectedIndex==0)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Panel3.Visible = false;
          

        }
        else if (DropDownList4.SelectedIndex != 0)
        {
            Panel2.Visible = false;
            Panel1.Visible = false;
            Panel3.Visible = true;
           
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Click")
        {
            // Retrieve the row index stored in the 
            // CommandArgument property.
            int index = Convert.ToInt32(e.CommandArgument);
            //string id= GridView1.Rows[index]["email"];


            // Retrieve the row that contains the button 
            // from the Rows collection.
            GridViewRow row = GridView1.Rows[index];
            string mail = GridView1.Rows[index].Cells[2].Text.ToString();
            Session["mail"] = mail;
            Response.Redirect("Login.aspx");
            // Add code here to add the item to the shopping cart.
        }
        else
        {
            Response.Redirect("FAQ1.aspx");
        }

    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Click")
        {
            Response.Write("<script>alert('Inserted Record Into Database Successfully')</script>");
            // Retrieve the row index stored in the 
            // CommandArgument property.
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            string mail = GridView2.Rows[index].Cells[1].Text.ToString();
            Session["email"] = mail;
            string State = GridView2.Rows[index].Cells[3].Text.ToString();
            Session["State"] = State;
            string City = GridView2.Rows[index].Cells[4].Text.ToString();
            Session["City"] = City;
            Response.Redirect("BookAppointmeent.aspx");
        }
    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Click")
        {
            // Retrieve the row index stored in the 
            // CommandArgument property.
            int index = Convert.ToInt32(e.CommandArgument);
            //string id= GridView1.Rows[index]["email"];


            GridViewRow row = GridView1.Rows[index];
            string mail = GridView3.Rows[index].Cells[1].Text.ToString();
            Session["email"] = mail;
            string State = GridView3.Rows[index].Cells[3].Text.ToString();
            Session["State"] = State;
            string City = GridView3.Rows[index].Cells[4].Text.ToString();
            Session["City"] = City;
            Response.Redirect("BookAppointmeent.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}