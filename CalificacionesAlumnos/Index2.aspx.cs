using System;
using System.Web;
using System.Web.UI.WebControls;
using CalificacionesAlumnos.Models;

namespace CalificacionesAlumnos
{
    public partial class Index2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] nombres = this.Alumnos();
            int[] calificaciones = this.Calificaciones(nombres);
            int maximo = this.Maximo(calificaciones);
            int minimo = this.Minimo(calificaciones);
            int aprobados = this.Aprobados(calificaciones);
            float paprobados = this.PAprobados(aprobados);

            Alumno[] alumnos = new Alumno[10];
            for (int i = 0; i < alumnos.Length; i++)
            {
                alumnos[i] = new Alumno();
                alumnos[i].Nombre = nombres[i];
                 alumnos[i].Calificacion = calificaciones[i].ToString();
            }
            RepetidorAlumnos.DataSource = alumnos;
            RepetidorAlumnos.DataBind();
            TextPromedio.Text = this.Promedio(calificaciones);
            TextMinimo.Text = this.Minimo(calificaciones).ToString();
            TextMaximo.Text = this.Maximo(calificaciones).ToString();
            TextModa.Text = this.Moda(calificaciones).ToString();
            TextAprobados.Text = this.Aprobados(calificaciones).ToString();
            TextReprobados.Text = this.Reprobados(calificaciones).ToString();
            TextPAprobados.Text = this.PAprobados(aprobados).ToString()+"%";
            TextPReprobados.Text = this.PReprobados(aprobados).ToString()+"%";
            TextMAlumnos.Text = this.MA(maximo,calificaciones,nombres)+".";
            TextPAlumnos.Text = this.PA(minimo, calificaciones, nombres)+".";


            /*Aqui hacemos que se impriman los promedios (puntos iniciales)
             * Response.Write("<br>" + "El promedio es: " + this.Promedio(calificaciones));
            Response.Write("<br>" + "El minimo es: " + this.Minimo(calificaciones));
            Response.Write("<br>" + "El maximo es: " + this.Maximo(calificaciones));
            Response.Write("<br>" + "La moda es: " + this.Moda(calificaciones));*/
        }


        protected void Registrar_Calificaciones(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in RepetidorAlumnos.Items)
            {
                if (item.ItemType == ListItemType.Item)
                {
                    var txtCalif = item.FindControl("txtCalif") as TextBox;
                    string cal = txtCalif.Text;
                }
            }

            Response.Redirect("Index2.aspx");

        }

        protected string[] Alumnos()
        {
            string[] nombresLista = new string[10] {
            "Alex","Brandon","Carmen","Diana","Elena","Federico","Gustavo","Hortensia","Ignacio","Jimena"};


            return nombresLista;
        }

        protected string Promedio(int[] array)
        {
            float prom = 0;
            for (int i=0;i<array.Length;i++)
            {
                prom =prom + array[i];
            }
            prom /= array.Length;
            return prom.ToString();
        }

        protected int[] Calificaciones(string[] nombres)
        {
            int[] array = new int[10];
            Random rnd = new Random();
            for (int i = 0; i < array.Length; i++)
            {
                array[i] = rnd.Next(1, 10);
                //Response.Write("<br><b>" + nombres[i] + "</b>  " + array[i]);
            }
            return array;
        }

        protected int Minimo(int[] array)
        {
            int minimo = array[0];
            foreach (int i in array)
            {
                if (minimo >= i)
                {
                    minimo = i;
                }
            }
            return minimo;
        }

        protected int Maximo(int[] array)
        {
            int maximo = array[0];

            foreach (int i in array)
            {
                if (i > maximo)
                {
                    maximo = i;
                }
            }
            return maximo;
        }

        protected int Moda(int[] array)
        {
            int[] moda = new int[10];
            int m = 0;
            int max = 0;

            foreach (int i in array)
            {
                moda[i - 1]++;
            }

            m = 0;
            max = 0;

            for (int i = 0; i < moda.Length; i++)
            {
                if (moda[i] > max)
                {
                    max = moda[i];
                    m = i;
                }
            }

            return m + 1;

        }
        protected int Aprobados(int[] array)
        { int aprobados=0;
            for(int i=0;i<array.Length;i++)
            {
                if(array[i]>=6)
                { aprobados++; }
            }
            return aprobados;
        }
        protected int Reprobados(int[] array)
        {
            int reprobados = 0;
            for (int i = 0; i < array.Length; i++)
            {
                if (array[i] <= 5)
                { reprobados++; }
            }
            return reprobados;
        }
        protected float PAprobados(int aprobados)
        {
            float papro = 0;
            papro = (aprobados * 100) / 10;
            return papro;
        }
        protected float PReprobados(int aprobados)
        {
            float prepro = 0;
            prepro = ((10-aprobados) * 100) / 10;
            return prepro;
                 }

        protected string MA(int maximo,int[]array,string[]nombre)
        {
            string MAname = "";
            for (int i = 0; i < array.Length; i++)
            { if(array[i]==maximo)
                {
                    MAname = MAname + nombre[i].ToString() +
                    ", ";
                }
            }
            return MAname;
        }
        protected string PA(int minimo, int[] array, string[] nombre)
        {
            string MAname = "";
            for (int i=0;i<array.Length;i++)
            {
                if (array[i] == minimo)
                {
                    MAname = MAname + nombre[i].ToString()+
                    ", ";
                }
            }
            return MAname;
        }
    }

    }
