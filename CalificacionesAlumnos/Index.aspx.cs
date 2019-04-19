using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CalificacionesAlumnos.Models;

namespace CalificacionesAlumnos
{
    public partial class Index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string[] nombres = this.Alumnos();
          //TextCalif.Text= this.Calificaciones(nombres);

            //txtCalif


            Alumno[] alumnos = new Alumno[10];
          
            for (int i = 0; i < alumnos.Length; i++)
            {
                alumnos[i] = new Alumno();
                alumnos[i].Nombre = nombres[i];
                // alumnos[i].Calificacion = calificaciones[i];
            }
            RepetidorAlumnos.DataSource = alumnos;
            RepetidorAlumnos.DataBind();
 
    
        }


        protected void Registrar_Calificaciones(object sender, EventArgs e)
        {
            Response.Redirect("Index2.aspx");
            foreach (RepeaterItem item in RepetidorAlumnos.Items)
            {
                //txtCalif.Text = Calificaciones[10];

                if (item.ItemType == ListItemType.Item)
                {
                    var txtCalif = item.FindControl("txtCalif") as TextBox;
                    string cal = txtCalif.Text;
                }
            }
           
           
            
        }

        protected string[] Alumnos()
        {
            string[] nombresLista = new string[10] { 
            "Alex","Brandon","Carmen","Diana","Elena","Federico","Gustavo","Hortensia","Ignacio","Jimena"};


            return nombresLista;
        }

       





    }
}