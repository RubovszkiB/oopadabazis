using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Osztalyokismetles
{
    public class Tanulo
    {
        string nev;
        //konstrukor
        string osztaly;
    public double Atlag { get; set; }
        //property
        public string Osztaly
        {
            get { return osztaly; } 
            set { osztaly = value; }
            
        }
        public Tanulo(string nev)
        {
            this.nev = nev;
        }

        public void Setnev(string ujnev) //ellenprzott korulmenyek kozott
        {
            nev = ujnev;
        }
        //metodusok
        public string Getnev()
        {
            return nev;
        }

        public override string? ToString()
        {
            return $"nev:{this.nev},Osztaly: {Osztaly}, atlag:{Atlag}  ";
        }
    }
}
