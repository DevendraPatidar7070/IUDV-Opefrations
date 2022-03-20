<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Default1.Master" AutoEventWireup="true" CodeBehind="Mailform.aspx.cs" Inherits="PacificSchoolOfLow.Template.Mailform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
           <div class="row">
               <div class="col-md-4 pt-3" style="text-align:center;display:block">
                   <img src="images/Law-collegeLogo.png" width="200" height="200"/>
               </div>
<div class="col-md-8">
<div class="row row-cols-1">
    <br/>
    <div class="col">
    <asp:Label ID="Label6" runat="server" Text="" Font-Size="X-Large"></asp:Label>
    </div>
    <br/>


    <div class="col label-primary">
        <asp:Label ID="Label1" runat="server" Text="Enter Name" CssClass="label" Font-Size="Larger">
        </asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Should not be Empty" ForeColor="Red" ControlToValidate="TextBox1" Text="*🔔" ></asp:RequiredFieldValidator>   
    </div>
    <div class="col p-2 bg-light border"><asp:TextBox ID="TextBox1" runat="server" class="form-control" ForeColor="black" Font-Size="Larger" Font-Bold="false"></asp:TextBox>
    </div>
    <br/>            



    <div class="col label-primary"><asp:Label ID="Label2" runat="server" Text="Enter Mobile" CssClass="label" Font-Size="Larger"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*🔔" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
    </div> 
    <div class="col p-2 bg-light border"><asp:TextBox ID="TextBox2" runat="server" class="form-control" ForeColor="black" Font-Size="Larger" Font-Bold="false"></asp:TextBox>
    </div>                         
    <br/>

                     

                       
    <div class="col  label-primary"><asp:Label ID="Label3" runat="server" Text="Enter Email" CssClass="label" Font-Size="Larger"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*🔔" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    </div>
    <div class="col p-2 bg-light border"><asp:TextBox ID="TextBox3" runat="server" class="form-control" type="email" ForeColor="black" Font-Size="Larger" Font-Bold="false"></asp:TextBox>
    </div>                                                                                                     
    <br/>



    <div class="col  label-primary"><asp:Label ID="Label4" runat="server" Text="Subject" CssClass="label" Font-Size="Larger"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*🔔" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    </div>
    <div class="col p-2 bg-light border"><asp:TextBox ID="TextBox4" runat="server" class="form-control" textmode="multiline" ForeColor="black" Font-Size="Larger" Font-Bold="false"></asp:TextBox>
    </div>                       
    <br/>                                                                                                               


   
    <div class="col  label-primary"><asp:Label ID="Label5" runat="server" Text="Message" CssClass="label" Font-Size="Larger"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*🔔" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
    </div>
    <div class="col p-2 bg-light border"><asp:TextBox ID="TextBox5" runat="server" textmode="multiline" class="form-control" ForeColor="black" Font-Size="Larger" Font-Bold="false"></asp:TextBox></div>
                       
    
    <br/>
    <br/>
    <div class="col p-2 text-center">
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" CssClass="btn btn-primary" />
</div>         
                  

               </div>
          </div>
      </div>
    
     </div>
</asp:Content>
