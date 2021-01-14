<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="job_portal.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/form.css" rel="stylesheet" />
    <script src="script/form.js"></script>
    <link href="select2@4.1.0-beta.1/css/select2.min.css" rel="stylesheet" />
    <script src="select2@4.1.0-beta.1/js/select2.min.js"></script>
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
                    <asp:DropDownList ID="signup_dropdown" runat="server" CssClass="form-control" onchange="signupAs()">
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

                <div id="recruiter-signup" style="display:none;">

                </div>

                <div id="jobseeker-signup">
                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-light">Full Name</label>
                        <asp:TextBox ID="full_name" runat="server" CssClass="form-control" placeholder="full name"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-light">Mobile Number</label>
                        <asp:TextBox ID="mobile_number" runat="server" CssClass="form-control" placeholder="ex: 01123456789"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-light">Current Location</label>
                        <asp:TextBox ID="current_location" runat="server" CssClass="form-control" placeholder="ex: Selangor"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-light">Country</label>
                        <asp:TextBox ID="country" runat="server" CssClass="form-control" placeholder="ex: Malaysia"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-light">Experience (Years)</label>
                        
                        <asp:DropDownList ID="expeirence_dropdown" runat="server" CssClass="form-control">      
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-light">Skill Sets</label>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="ex: Selangor"></asp:TextBox>
                    </div>

                    <%--<select class="form-control js-example-tags" multiple="multiple">
                      <option selected="selected">orange</option>
                      <option>white</option>
                      <option selected="selected">purple</option>
                    </select>--%>

                    

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-light">Preferred Industry</label>
                        <asp:DropDownList ID="prefer_industry" runat="server" CssClass="form-control prefer-industry" multiple="multiple">
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>Software</asp:ListItem>
                        </asp:DropDownList>

                        <script>
                            // In your Javascript (external .js resource or <script> tag)
                            $(document).ready(function () {
                                $(".prefer-industry").select2({
                                    tags: true
                                });
                            });
                        </script>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-light">Preferred Functions</label>
                         <asp:DropDownList ID="prefer_functions" runat="server" CssClass="form-control prefer-functions" multiple="multiple">
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>Software</asp:ListItem>
                        </asp:DropDownList>

                        <script>
                            // In your Javascript (external .js resource or <script> tag)
                            $(document).ready(function () {
                                $(".prefer-functions").select2({
                                    tags: true
                                });
                            });
                        </script>
                    </div>
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
