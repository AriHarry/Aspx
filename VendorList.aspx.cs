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
    public partial class VendorList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (!IsPostBack)
            {
                VendorRepository VenObj = new VendorRepository();
                List<VendorObject> VendorList = new List<VendorObject>();
                VendorList = VenObj.GetAll();

                grdVendorList.DataSource = VendorList;
                grdVendorList.DataBind();

            }
        }
        protected void btnVendorAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("VendorAddEdit.aspx");
        }

        protected void grdVendorList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "VendorCmdDelete":
                    {
                        int VendorId = Convert.ToInt32(e.CommandArgument);
                        VendorRepository VenObj = new VendorRepository();
                        VenObj.Delete(VendorId);
                        List<VendorObject> VendorList = new List<VendorObject>();
                        VendorList = VenObj.GetAll();


                        grdVendorList.DataSource = VendorList;
                        grdVendorList.DataBind();


                        break;

                    }
                default:
                    {
                        break;

                    }
            }
        }

        }
    }
