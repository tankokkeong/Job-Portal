<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="job_portal.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/form.css" rel="stylesheet" />
    <title>Login</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-box-container">
        <div class="form-box bg-dark">
            <div class="form-header text-center">
                <h1 class="pt-3 text-light">Login</h1>
            </div>

            <div class="form-content">
                <form>
                      <div class="form-group">
                        <label for="exampleInputEmail1" class="text-light">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                      </div>

                      <div class="form-group">
                        <label for="exampleInputPassword1" class="text-light">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1">
                      </div>
                     
                    <button type="submit" class="btn btn-primary">Login</button>
                    <div class="form-group">
                        <div class="text-light mt-2">
                            Do not have an account? <a href="signup.aspx">Sign Up</a> now!
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
