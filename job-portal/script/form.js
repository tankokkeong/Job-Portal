function signupAs() {
    signup_as = document.getElementById("ContentPlaceHolder1_signup_dropdown").value;
    job_seeker_form = document.getElementById("jobseeker-signup");
    recruiter_form = document.getElementById("recruiter-signup");

    if (signup_as === "job-seeker") {

        //Display job seeker form
        job_seeker_form.style.display = "";

        //Hide recruiter form
        recruiter_form.style.display = "none";
    }
    else {
        //Hide job seeker form
        job_seeker_form.style.display = "none";

        //Display recruiter form
        recruiter_form.style.display = "";
    }
}