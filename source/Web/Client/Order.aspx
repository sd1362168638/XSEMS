﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Client_Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<wl:Seo ID="seo" runat="server" Title=""/>
<link href="../Css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<center>
<form id="form1" runat="server">
  <div>
    <div id="wrapper">
      <div id="wrapper2">
        <!--头部-->
        <wl:HeaderClient ID="hc" runat="server" />  
        <!--内容-->
        <div id="content">
          <div id="main_client">
            <div class="left_bar_client">
              <!--中间左边导航部分-->
              <wl:Left ID="left" runat="server" />
            </div>
            <div class="right_bar_client">
              <table class="tablecontent">
                <tr><td align="left" class="top_content"><wl:ClientTop runat="server" id="clientTop" Title="订单详情"></wl:ClientTop></td></tr> 
                <tr><td align="center"><asp:Label ID="lblMsg" runat="server" Text="" ForeColor="red"></asp:Label></td></tr>                   
                <tr>
                  <td>
      	             <table class="grid">
                      <tr>
                        <td width="12%" class="label" >收件单号:</td>
                        <td width="21%" class="content"><asp:Label ID="lblEncode" runat="server" Text=""></asp:Label></td>
                        <td width="11%" class="label" >收件日期:</td>
                        <td width="23%" class="content"><asp:Label ID="lblReceiveDate" runat="server" Text=""></asp:Label></td>
                        <td class="label" >收件公司:</td>
                        <td class="content"><asp:Label ID="lblCompanyName" runat="server" Text=""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="label" >收货方式:</td>
                        <td class="content"><asp:Label ID="lblReceiveType" runat="server" Text=""></asp:Label></td>
                        <td class="label" >业 务 员:</td>
                        <td class="content"><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></td>
                        <td class="label" >制 单 人:</td>
                        <td class="content"><asp:Label ID="lblCreateUser" runat="server" Text=""></asp:Label></td>                
                      </tr>
                      <tr>
                        <td class="label" >应收总计:</td>
                        <td class="content" colspan="3"><input type="text" id="txtCosts" name="txtCosts" style="color:Blue;" runat="server" readonly="readonly" value="0" />元</td>
                        <td class="label" >制单时间:</td>
                        <td class="content"><asp:Label ID="lblCreateTime" runat="server" Text=""></asp:Label></td>                
                      </tr>
                      <tr>
                        <td class="label" >备&nbsp;&nbsp;&nbsp;&nbsp;注:</td>
                        <td class="content" colspan="5"><asp:Label ID="lblRemark" runat="server" Text=""></asp:Label></td>          
                      </tr>
                      <tr id="trReturnReason" runat="server" visible="false">
                        <td class="label" style="color:Red; height:24px;"><asp:Label ID="lblReasonTitle" runat="server"></asp:Label>:</td>
                        <td class="content" colspan="5"><asp:Label ID="lblReason" runat="server" Text=""></asp:Label></td>          
                      </tr>
                      <tr><td colspan="6" align="left" class="label" style="font-weight:bold;"> 收件人信息</td></tr>
                      <tr>
                        <td class="label">姓&nbsp;&nbsp;&nbsp;&nbsp;名:</td>
                        <td class="content"><asp:Label ID="lblToUsername" runat="server"></asp:Label></td>
                        <td class="label">电&nbsp;&nbsp;&nbsp;&nbsp;话:</td>
                        <td class="content"><asp:Label ID="lblToPhone" runat="server"></asp:Label></td>
                        <td class="label">邮&nbsp;&nbsp;&nbsp;&nbsp;箱:</td>
                        <td class="content"><asp:Label ID="lblToEmail" runat="server"></asp:Label></td>                
                      </tr>
                      <tr>
                        <td class="label">国&nbsp;&nbsp;&nbsp;&nbsp;家:</td>
                        <td class="content"><asp:Label ID="lblToCountry" runat="server"></asp:Label></td>
                        <td class="label">城&nbsp;&nbsp;&nbsp;&nbsp;市:</td>
                        <td class="content"><asp:Label ID="lblToCity" runat="server"></asp:Label></td>  
                        <td class="label">邮&nbsp;&nbsp;&nbsp;&nbsp;编:</td>
                        <td class="content"><asp:Label ID="lblToPostcode" runat="server"></asp:Label></td>                                           
                      </tr>
                      <tr>
                        <td class="label">详&nbsp;&nbsp;&nbsp;&nbsp;址:</td>
                        <td class="content" colspan="5"><asp:Label ID="lblToAddress" runat="server"></asp:Label></td> 
                      </tr>  
                     </table>	     
                         
	              </td>
                </tr>                
                <tr>
                  <td>
      	             <table class="grid">
      	              <tr><td class="label" style="font-weight:bold;" colspan="6"> 订单明细</td></tr>
                      <tr>
                        <td align="center" class="headers">序号</td>
                        <td align="left" class="headers">承运商编号</td>
                        <td align="left" class="headers">承运商名称</td>
                        <td align="left" class="headers">数量</td>           
                        <td align="left" class="headers">计费重量</td>                      
                        <td align="left" class="headers">应收费用</td>      
                      </tr>
                      <%
                          if (result != null)
                          {
                              int i = 1;
                              foreach (Backend.Models.OrderDetail od in result)
                              {
                                  
                           %>
                          <tr class="content" onmouseover="this.className = 'hover';" onmouseout="this.className = 'content';">
                            <td align="center"><%=i%></td>
                            <td align="left"><%=od.CarrierEncode%></td>
                            <td align="left"><%= od.CarrierEncode==null?"": Backend.BAL.CarrierOperation.GetCarrierByEncode(od.CarrierEncode).Name%></td>
                            <td align="left"><%=od.Count%></td>
                            <td align="left"><%=od.Weight%></td>                            
                            <td align="left"><%=od.TotalCosts%></td>
                          </tr>
                          <% i++;
                         }
                     }%>   
                     </table>	         
	              </td>
                </tr>
              </table>
            </div>
          </div>
        </div>
        <!--尾部-->
        <wl:Footer ID="footer" runat="server" />
      </div>
    </div>
  </div>
</form>
</center>
</body>
</html>
