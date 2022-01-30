<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DataOperations.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Content/bootstrap-reboot.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
</head>
<body style="height: 440px">
    <form id="form1" runat="server">

        <div>
            <table>
                <tr>
                    <td>Enter Your First Name: </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td>Enter Your Last Name: </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td>Enter Your Mobile No: </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td> Enter DOB : </td>
                    <td> <asp:TextBox ID="TextBox4" runat="server" PlaceHolder="YYYY-MM-DD" TextMode="Date"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td> Select Gender : </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Enter Email :</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode ="Email"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td>Enter Username: </td>
                    <td> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td>Enter Password: </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>

                <tr colspan="2">
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                    </td>
                    
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" class="btn btn-link" />
                        <asp:Button ID="Button4" runat="server" Text="View" OnClick="Button4_Click" />
                    </td>
                </tr>         
            </table>
            <br />
            Update Using Mobile : <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <br />
            Delete Using FirstName:
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>

        </form>
    </body>
</html>
        