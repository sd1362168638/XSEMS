﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Backend.Models;
using Backend.BAL;
using Backend.Utilities;
using System.Collections.Generic;

public partial class Client_Order : System.Web.UI.Page
{
    protected int id = 0;
    Order order = null;
    protected List<OrderDetail> result = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (int.TryParse(Request.QueryString["id"], out id))
        {
            order = OrderOperation.GetOrderById(id);
            result = OrderDetailOperation.GetOrderDetailByOrderId(id);
        }
        if (!IsPostBack)
        {
            FormDataBind();
        }
    }

    private void FormDataBind()
    {
        lblToAddress.Text = order.ToAddress;
        lblToCity.Text = order.ToCity;
        lblToEmail.Text = order.ToEmail;
        lblToPhone.Text = order.ToPhone;
        lblToPostcode.Text = order.ToPostcode;
        lblToUsername.Text = order.ToUsername;
        lblToCountry.Text = order.ToCountry;

        lblRemark.Text = order.Remark;
        txtCosts.Value = order.Costs.ToString();
        lblCompanyName.Text = order.CompanyName;
        if (order.CreateUser != null)
        {
            lblCreateUser.Text = order.CreateUser.RealName;
        }
        lblEncode.Text = order.Encode;
        lblCreateTime.Text = order.CreateTime.ToString();
        lblReceiveType.Text = order.ReceiveType;
        if (order.ReceiveDate > DateTime.MinValue)
        {
            lblReceiveDate.Text = order.ReceiveDate.ToShortDateString();
        }
        if (UserOperation.GetUserById(order.UserId) != null)
        {
            lblUserName.Text = UserOperation.GetUserById(order.UserId).RealName;
        }

        if (order.Reason != null && order.Reason.Trim().Length > 0)
        {
            trReturnReason.Visible = true;
            lblReason.Text = order.Reason;
            if (order.Status == OrderStatus.WAIT_AUDIT)
            {
                lblReasonTitle.Text = "检验退回原因";
            }
            else if (order.Status == OrderStatus.WAIT_SUBMIT)
            {
                lblReasonTitle.Text = "审核退回原因";
            }
            else if (order.Status == OrderStatus.DETAINED)
            {
                lblReasonTitle.Text = "扣货原因";
            }
        }
    }

    protected void btnPrintTag_Click(object sender, EventArgs e)
    {

    }
     
    protected void btnInsure_Click(object sender, EventArgs e)
    {
        FormDataBind();
    }
}
