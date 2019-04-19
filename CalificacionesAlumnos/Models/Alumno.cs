using System;
namespace CalificacionesAlumnos.Models
{
    public class Alumno
    {
        private string nombre;
        private string calificacion;

        public Alumno()
        {
        }
        //string[,] lista = new string[10, 10];

        public string Nombre { get => nombre; set => nombre = value; }
        public string Calificacion { get => calificacion; set => calificacion = value; }

        // Metodo para las instancias
        public string ObtenerNombreConNumero(int n) {
            return this.nombre + " Numero: " + n;
        }

        public static string ObtenerAlgo(string word)
        {
            return "Hola " + word; 
        }
    }
}
