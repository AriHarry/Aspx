using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObject;
using DLA.Repository;

namespace WebUI
{
    public partial class vendorAddEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  cldDateOfBirth.Visible = false;
            if (!IsPostBack)
            {
                int VendorId = 0;
                string id = Convert.ToString(Request.QueryString["VendorId"]);

                //

                if (id != null)
                {
                    btnVendorUpdate.Visible = true;
                    btnVendorAdd.Visible = false;

                    VendorId = Convert.ToInt32(id);
                    VendorRepository VenRep = new VendorRepository();
                    VendorObject VenObj = VenRep.GetById(VendorId);
                    hdnMsgId.Value = VenObj.MsgId.ToString();
                    txtDisplayMsg.Text = VenObj.DisplayMsg;
                    txtMsg_Title.Text = VenObj.Msg_Title;
                    txtFull_Message.Text = VenObj.Full_Message;
                    


                }
                else
                {
                    btnVendorUpdate.Visible = false;
                    btnVendorAdd.Visible = true;
                }
            }
        }

        protected void btnVendorBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("VendorList.aspx");
        }

        protected void btnVendorUpdate_Click(object sender, EventArgs e)
        {
            VendorObject VenObj = new VendorObject();
            VendorRepository VenRep = new VendorRepository();




            VenObj.MsgId = Convert.ToInt32(hdnMsgId.Value);
            VenObj.DisplayMsg = txtDisplayMsg.Text;
            VenObj.Msg_Title = txtMsg_Title.Text;
            VenObj.Full_Message = Convert.ToString(txtFull_Message.Text);
            

            VenRep.Update(VenObj);

            Response.Redirect("VendorList.aspx");
        }
        protected void btnVendorAdd_Click(object sender, EventArgs e)
        {
            VendorObject VenObj = new VendorObject();
            VenObj.DisplayMsg = txtDisplayMsg.Text;
            VenObj.Msg_Title = txtMsg_Title.Text;
            VenObj.Full_Message = Convert.ToString(txtFull_Message.Text);
            
            VendorRepository VenRep = new VendorRepository();
            VenRep.Add(VenObj);
            Response.Redirect("VendorList.aspx");
        }

        protected void imgDateOfBirth_Click(object sender, ImageClickEventArgs e)
        {
           // cldDateOfBirth.Visible = true;
        }

        protected void cldDateOfBirth_SelectionChanged(object sender, EventArgs e)
        {
           // txtDateOfBirth.Text = cldDateOfBirth.SelectedDate.ToString();
           // cldDateOfBirth.Visible = false;
        }

        


        }
    }
