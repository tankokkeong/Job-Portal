<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="job_portal.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/form.css" rel="stylesheet" />
    <title>Sign Up</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-box-container">
        <div class="form-box bg-dark">
            <div class="form-header text-center">
                <h1 class="pt-3 text-light">Sign Up</h1>
            </div>

            <div class="form-content">
                <div class="form-group">
                    <label for="exampleInputEmail1" class="text-light">Sign Up As</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem Value="job-seeker">Job Seeker</asp:ListItem>
                        <asp:ListItem Value="recruiter">Recruiter</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1" class="text-light">Email address</label>
                    <asp:TextBox ID="email_address" runat="server" class="form-control" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1" class="text-light">Password</label>
                    <asp:TextBox ID="password" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1" class="text-light">Confirm Password</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                </div>

                <asp:Button class="btn btn-primary" runat="server" Text="Sign Up" OnClick="Button_Click"/>
                    
                <div class="form-group">
                    <div class="text-light mt-2">
                        Already have an account? <a href="login.aspx">Login</a> now!
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
