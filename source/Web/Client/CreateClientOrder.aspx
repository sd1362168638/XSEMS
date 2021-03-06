﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateClientOrder.aspx.cs" Inherits="Client_CreateClientOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<wl:Seo ID="seo" runat="server" Title=""/>
<link href="../Css/style.css" rel="stylesheet" type="text/css" />
<script src="/Admin/Js/util.js" type="text/javascript" language="javascript"></script>
<script src="/Admin/Js/jquery-1.2.6.js" type="text/javascript" language="javascript"></script>
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
                 <tr><td align="left" class="top_content"><wl:ClientTop runat="server" id="clientTop" Title="新建发货标签"></wl:ClientTop></td></tr> 
                 <tr><td align="center"><asp:Label ID="lblMsg" runat="server" Text="" ForeColor="red"></asp:Label></td></tr>
                 <tr>
                  <td><table class="grid">       
                          <tr><td colspan="6" align="left" class="label" style="font-weight:bold;"> 收件人信息</td></tr>
                          <tr style="display:none">
                              <td class="label" width="11%"> 发&nbsp;件&nbsp;人: </td>
                              <td class="content" width="89%" colspan="4"><asp:DropDownList ID="ddlClientAddress" runat="server"></asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;<a href="CreateAddress.aspx">添加发件人地址信息</a>
                              </td>
                            </tr>
                          <tr>
                            <td class="label" width="11%">姓&nbsp;&nbsp;&nbsp;&nbsp;名:</td>
                            <td class="content" width="22%"><input id="txtToUsername" type="text" style="width:180px" runat="server"/></td>
                            <td class="label" width="11%">电&nbsp;&nbsp;&nbsp;&nbsp;话:</td>
                            <td class="content" width="23%"><input id="txtToPhone" type="text" style="width:180px" runat="server"/></td>
                            <td class="label" width="11%">邮&nbsp;&nbsp;&nbsp;&nbsp;箱:</td>
                            <td class="content" width="22%"><input id="txtToEmail" type="text" style="width:180px" runat="server"/></td>                
                          </tr>
                          <tr>
                            <td class="label">国&nbsp;&nbsp;&nbsp;&nbsp;家:</td>
                            <td class="content"><input id="txtCountry" type="text" style="width:98%;" runat="server" /></td>
                            <td class="label">城&nbsp;&nbsp;&nbsp;&nbsp;市:</td>
                            <td class="content"><input id="txtToCity" type="text" style="width:180px" runat="server"/></td>   
                            <td class="label">邮&nbsp;&nbsp;&nbsp;&nbsp;编:</td>
                            <td class="content" colspan="5"><input id="txtToPostcode" type="text" style="width:180px" runat="server"/></td>
                          </tr>                          
                          <tr>
                            <td class="label">详&nbsp;&nbsp;&nbsp;&nbsp;址:</td>
                            <td class="content" colspan="5"><input id="txtToAddress" type="text" style="width:99%" runat="server"/></td> 
                          </tr>  
                          <tr>
                              <td class="label"> 备&nbsp;&nbsp;&nbsp;&nbsp;注: </td>
                              <td class="content" colspan="5"><asp:TextBox ID="txtRemark" TextMode="MultiLine" Rows="1" runat="server" Width="100%"></asp:TextBox>                                               
                              </td>
                          </tr>                         
                          <tr><td colspan="6" align="center"><asp:Button ID="btnCreate" runat="server" CssClass="button" Text="提 交" OnClick="btnCreate_Click"/>&nbsp;&nbsp;&nbsp;<input type="button" class="button" value="返 回" onclick="javascript:location.href='Default.aspx'"/></td></tr>
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

