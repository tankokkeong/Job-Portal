<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="job_portal.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/home.css" rel="stylesheet" />
    <title>Home</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="job-search-area">
        <div class="job-search-box">
            <div class="search-header text-center">
                 <h1>Search Your Dream Job</h1>
            </div>

            <div class="search-input form-inline">
                <input type="text" class="form-control" placeholder="Job title or keyword" id="job-input"/>
                <button class="btn btn-success" id="job-search-btn"><i class="fas fa-search"></i></button>
            </div>
        </div>
    </div>
    

    <div class="recent-job">
        <div class="recent-job-header">
             <h3>Recent Jobs</h3>
        </div>

        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">
          <div class="col mb-4">
            <div class="card">
              
              <div class="card-body">
                <div class="card-title">
                    <h5 class="card-title">Company Name</h5>
                    <small class="text-muted">Vacancy Position</small>
                </div>
                
                <div class="card-text">
                    <div class="job-experience">
                        Experience: 6 - 9 years
                    </div>
                    
                    <div class="job-location">
                        Location: Kuala Lumpur, Selangor
                    </div>
                </div>
              </div>

            </div>
          </div>

          <div class="col mb-4">
            <div class="card">
              <div class="card-body">
                <div class="card-title">
                    <h5 class="card-title">Company Name</h5>
                    <small class="text-muted">Vacancy Position</small>
                </div>
                
                <div class="card-text">
                    <div class="job-experience">
                        Experience: 6 - 9 years
                    </div>
                    
                    <div class="job-location">
                        Location: Kuala Lumpur, Selangor
                    </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col mb-4">
            <div class="card">
              <div class="card-body">
                <div class="card-title">
                    <h5 class="card-title">Company Name</h5>
                    <small class="text-muted">Vacancy Position</small>
                </div>
                
                <div class="card-text">
                    <div class="job-experience">
                        Experience: 6 - 9 years
                    </div>
                    
                    <div class="job-location">
                        Location: Kuala Lumpur, Selangor
                    </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col mb-4">
            <div class="card">
              <div class="card-body">
                <div class="card-title">
                    <h5 class="card-title">Company Name</h5>
                    <small class="text-muted">Vacancy Position</small>
                </div>
                
                <div class="card-text">
                    <div class="job-experience">
                        Experience: 6 - 9 years
                    </div>
                    
                    <div class="job-location">
                        Location: Kuala Lumpur, Selangor
                    </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      
    </div>


    <div class="popular-job">
        <div class="recent-job-header">
             <h3>Popular Jobs</h3>
        </div>

        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">
          <div class="col mb-4">
            <div class="card">
              
              <div class="card-body">
                <div class="card-title">
                    <h5 class="card-title">Company Name</h5>
                    <small class="text-muted">Vacancy Position</small>
                </div>
                
                <div class="card-text">
                    <div class="job-experience">
                        Experience: 6 - 9 years
                    </div>
                    
                    <div class="job-location">
                        Location: Kuala Lumpur, Selangor
                    </div>
                </div>
              </div>

            </div>
          </div>

          <div class="col mb-4">
            <div class="card">
              <div class="card-body">
                <div class="card-title">
                    <h5 class="card-title">Company Name</h5>
                    <small class="text-muted">Vacancy Position</small>
                </div>
                
                <div class="card-text">
                    <div class="job-experience">
                        Experience: 6 - 9 years
                    </div>
                    
                    <div class="job-location">
                        Location: Kuala Lumpur, Selangor
                    </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col mb-4">
            <div class="card">
              <div class="card-body">
                <div class="card-title">
                    <h5 class="card-title">Company Name</h5>
                    <small class="text-muted">Vacancy Position</small>
                </div>
                
                <div class="card-text">
                    <div class="job-experience">
                        Experience: 6 - 9 years
                    </div>
                    
                    <div class="job-location">
                        Location: Kuala Lumpur, Selangor
                    </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col mb-4">
            <div class="card">
              <div class="card-body">
                <div class="card-title">
                    <h5 class="card-title">Company Name</h5>
                    <small class="text-muted">Vacancy Position</small>
                </div>
                
                <div class="card-text">
                    <div class="job-experience">
                        Experience: 6 - 9 years
                    </div>
                    
                    <div class="job-location">
                        Location: Kuala Lumpur, Selangor
                    </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      
    </div>

    <div class="job-flowchart">
        <div class="flowchart-header text-center">
            <h2>3 Steps to Get Your First Job</h2>
        </div>

        <div class="steps-container row row-cols-1 row-cols-md-3">

            <div class="col text-center">
                <div class="step-image-container">
                    <img src="images/search.png" class="step-image"/>
                    <h3 class="mt-2">Step 1: Search For A Job</h3>
                </div>

                <div class="step-description">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse odio mi, malesuada volutpat nisl eget, rhoncus laoreet nisi. 
                        In eu rhoncus nisi. Etiam ultricies, ipsum vel rhoncus varius, nibh erat sagittis turpis, ut commodo ipsum dolor malesuada libero. 
                        Quisque justo erat, suscipit ut felis tempor, vehicula vestibulum quam. Proin lobortis pulvinar sollicitudin. Suspendisse pulvinar 
                        lectus non neque tempor, in hendrerit dui fringilla. Nulla cursus nisi vel mauris rutrum sagittis. Suspendisse sit amet dapibus justo.
                        Mauris ut enim eget libero euismod posuere id vitae massa. Quisque ex elit, 
                        tempor eu tempor eu, ullamcorper sit amet elit. Duis varius ultricies mauris, sit amet fringilla arcu aliquet et. Sed felis ante, accumsan sit amet vulputate pulvinar, suscipit at est.
                    </p>
                </div>
            </div>

            <div class="col text-center">
                <div class="step-image-container">
                    <img src="images/submit.png" class="step-image"/>
                    <h3 class="mt-2">Step 2: Apply For A Job</h3>
                </div>

                <div class="step-description">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse odio mi, malesuada volutpat nisl eget, rhoncus laoreet nisi. 
                        In eu rhoncus nisi. Etiam ultricies, ipsum vel rhoncus varius, nibh erat sagittis turpis, ut commodo ipsum dolor malesuada libero. 
                        Quisque justo erat, suscipit ut felis tempor, vehicula vestibulum quam. Proin lobortis pulvinar sollicitudin. Suspendisse pulvinar 
                        lectus non neque tempor, in hendrerit dui fringilla. Nulla cursus nisi vel mauris rutrum sagittis. Suspendisse sit amet dapibus justo.
                        Mauris ut enim eget libero euismod posuere id vitae massa. Quisque ex elit, 
                        tempor eu tempor eu, ullamcorper sit amet elit. Duis varius ultricies mauris, sit amet fringilla arcu aliquet et. Sed felis ante, accumsan sit amet vulputate pulvinar, suscipit at est.
                    </p>
                </div>

            </div>

            <div class="col text-center">
                <div class="step-image-container">
                    <img src="images/email.png" class="step-image"/>
                    <h3 class="mt-2">Step 3: Wait For The Response</h3>
                </div>

                <div class="step-description">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse odio mi, malesuada volutpat nisl eget, rhoncus laoreet nisi. 
                        In eu rhoncus nisi. Etiam ultricies, ipsum vel rhoncus varius, nibh erat sagittis turpis, ut commodo ipsum dolor malesuada libero. 
                        Quisque justo erat, suscipit ut felis tempor, vehicula vestibulum quam. Proin lobortis pulvinar sollicitudin. Suspendisse pulvinar 
                        lectus non neque tempor, in hendrerit dui fringilla. Nulla cursus nisi vel mauris rutrum sagittis. Suspendisse sit amet dapibus justo.
                        Mauris ut enim eget libero euismod posuere id vitae massa. Quisque ex elit, 
                        tempor eu tempor eu, ullamcorper sit amet elit. Duis varius ultricies mauris, sit amet fringilla arcu aliquet et. Sed felis ante, accumsan sit amet vulputate pulvinar, suscipit at est.
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
