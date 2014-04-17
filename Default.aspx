<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Customer Entry Form</h2>
    <table>
        <tr>
            <td>*Enter Last Name</td>
               <td>
                   <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
               <td>
                   <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Last name is required" ControlToValidate="txtLastName"></asp:RequiredFieldValidator></td>
            
        </tr>
                <tr>
            <td>Enter First Name</td>
               <td>
                   <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox></td>
               <td></td>

        </tr>
                <tr>
            <td>*Enter Email</td>
               <td>
                   <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
               <td>
                   <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Must be a valid email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
                <tr>
            <td>Enter Phone</td>
               <td>
                   <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
               <td></td>

        </tr>
                <tr>
            <td>*Enter Password</td>
               <td>
                   <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
               <td>
                   <asp:RequiredFieldValidator ID="rvfPassword" runat="server" ErrorMessage="Password is required." ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
  </tr>
                <tr>
            <td>*Confirm Password</td>
               <td>
                   <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox></td>
               <td><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" ErrorMessage="You did not write the same password twice."></asp:CompareValidator>
                   <asp:RequiredFieldValidator ID="rvfConfirm" runat="server" ControlToValidate="txtConfirm" ErrorMessage="You must confirm password"></asp:RequiredFieldValidator>
               </td>

        </tr>
                <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Button" OnClick="btnSubmit_Click" /></td>
               <td>
                   <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label></td>
               <td></td>

        </tr>
    </table>


</asp:Content>

