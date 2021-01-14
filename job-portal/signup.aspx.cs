using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal
{
    public partial class signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> experienceListItem = new List<string>();
            List<string> preferIndustryListItems = new List<string>();
            List<string> preferFunctionsListItems = new List<string>();

            string [] industryArray = {
                "Conveyor Vulcanizing",
                "Digital Imaging",
                "High Precision Tools And Die Maintenance",
                "Manufacturing Systems Designers",
                "Experts In Steel Treatment(Melting And Casting",
                "Underwater welders",
                "Material Technologists",
                "Instrument Specialists(For Petrochemical Industry)",
                "Sensor Technologist",
                "Wireless Technologist",
                "Radio Frequency Designers",
                "Auto Systems Designers",
                "Offshore Field Operation",
                "Photonics",
                "Wafer Fabrication",
                "Metallurgist",
                "Geo sciences and Geophysical Disciplines",
                "Metallurgists",
                "Geotechnologists",
                "Geoscientists",
                "Seismologists",
                "Medical and Pharmaceutical",
                "Technical",
                "Production",
                "Specialists",
                "Electrical & Electronics",
                "Analogue Designers",
                "Microwave Designers",
                "Environment",
                "Renewable Energy",
                "Textiles & Minerals Industry",
                "Dye Technologists",
                "Embroidery Specialists",
                "Dyeing Technicians",
                "Apparel Specialists",
                "Craft / Design Specialists",
                "Fabric Specialists",
                "Jewelry Designers",
                "Designers",
                "Teachers and Trainers for Jewellery Production",
                "Cutting Specialists",
                "Wood Industry",
                "Wood Technologists",
                "Designers",
                "Technical Specialists",
                "Craftsman / Engraving",
                "Framework / Design Cutting Specialists",
                "Food Industry / Biotechnology",
                "Product / Flavoring Specialist",
                "Biotechnology Analysts",
                "Dyestuff Specialists",
                "Biotechnologists",
                "Tea / Food Tasters",
                "Food / Nutrient Technologists",
                "Disease Control / Quarantine",
                "Genetic Engineering Specialists",
                "Distributive & retail sectors",
                "Supermarket and mini market",
                "Provision shop",
                "Furnitures  and fittings",
                "Photo frames shop",
                "Textiles and clothings",
                "Computer accessories",
                "Hair salon",
                "Laundry shop",
                "Small and non - exclusive Restaurant",
                "Prepaid card Business",
                "Cyber Café",
                "Car glass and aluminium workshop",
                "Herbal  product Business",
                "Spa - only for shareholders and spa in hotels",
                "Restaurant, bistro and café – exclusive concept & shareholders allowed",
                "Cleaning and maintenance",
                "Massage parlour",
                "Construction industry",
                "Electrical chargeman",
                "Electrical Wireman",
                "Telephone and Telegraph Fixing",
                "Air conducting Fixing",
                "Installation of  lift and escalator",
                "Excavator operator",
                "Shovel operator",
                "Timber industry",
                "Timber Factories – Most categories of job",
                "Furniture factory –  All machinery specialist",
                "Forest Mills – Most categories of job"
                } ;

            string[] functionsArray =
            {
                "Admin/Secretarial",
                "Advertising/Entertainment/Media",
                "Analytics/Business Intelligence",
                "Banking, Insurance &amp; Financial Services",
                "Construction",
                "Customer Service/Call Centre/BPO",
                "Education/Teaching",
                "Export/Import",
                "Finance &amp; Accounts",
                "Health Care",
                "Hotels/restaurants",
                "Human Resources",
                "IT",
                "Legal",
                "Manufacturing/Engineering/R&D",
                "Marketing &amp; Communications",
                "Oil & Gas",
                "Pharmaceutical/Biotechnology",
                "Purchase/Logistics/Supply Chain",
                "Real Estate",
                "Retail Chains",
                "Sales/Business Development",
                "Telecom/ISP",
                "Travel/Airlines",
                "Anchoring/TV/Films/Production",
                "Architecture/Interior Design",
                "Arts/Creative/Graphics Design",
                "Digital Marketing",
                "Engineering - Chemical",
                "Engineering - Electrical",
                "Engineering - Electronics/Communication",
                "Engineering - Environmental/Health/Safety",
                "Mechanical/Automotive/Industrial",
                "Fashion/Apparels",
                "Guards/Security Services",
                "IT- Hardware/Telecom/Technical Staff/Support",
                "IT/Hardware - Embedded/EDA/VLSI/ASIC/Chip Description",
                "IT/Software Development - Application Programming/Maintenance",
                "IT/Software Development - Client Server",
                "IT/Software Development - DBA/Datawarehousing",
                "IT/Software Development - Embedded/EDA/VLSI/ASIC/Chip Description",
                "IT/Software Development - Mainframe",
                "IT/Software Development - Network Administration/Security",
                "IT/Software Development - Other",
                "IT/Software Development - QA & Testing",
                "IT/Software Development - System Programming",
                "IT/Software Development - System Programming/Middleware",
                "IT/Software Development - Systems/EDP/MIS",
                "Journalism/Content Writing/Editing/Correspondent",
                "Marine Services",
                "Marketing Research & Analysis",
                "Merchandising & Planning/Category Management",
                "Operations",
                "Performing Arts (Music/Dance/Theater)",
                "Personal Care/Beauty/Fitness Service",
                "Product Management/Product Development/UX",
                "Public Relations",
                "Quality Control/Assurance",
                "Sales - Corporate",
                "Sales - Engineering/Technical/IT",
                "Sales - Financial Services (Insurance/Unit Trust/Others)",
                "Sales - Retail/General",
                "Sales - Telesales/Telemarketing",
            };

            foreach(string industry in industryArray)
            {
                preferIndustryListItems.Add(industry);
            }

            foreach(string function in functionsArray)
            {
                preferFunctionsListItems.Add(function);
            }

            prefer_industry.DataSource = preferIndustryListItems;
            prefer_industry.DataBind();

            prefer_functions.DataSource = preferFunctionsListItems;
            prefer_functions.DataBind();

            string year = "";

            for(int i = 1; i <= 50; i++)
            {
                if (i == 1)
                {
                    year = " year";
                }
                else
                {
                    year = " years";
                }
                experienceListItem.Add( i + year);
            }

            expeirence_dropdown.DataSource = experienceListItem;
            expeirence_dropdown.DataBind();
        }

        // Sign up button click event
        protected void Button_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO recruiter(email, password) values(@email, @password)", con);

                //Retreive the values from the form
                cmd.Parameters.AddWithValue("@email", email_address.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text);

                //Execute the queries
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sign up successful!');</script>");
            }
            catch (Exception error)
            {
                Response.Write("<script>alert('" + error.Message + "');</script>");
            }
        }
    }
}