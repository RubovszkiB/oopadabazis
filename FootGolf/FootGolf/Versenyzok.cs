using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FootGolf
{
    internal class Versenyzo
    {
        public string nev { get; set; }
        public string kategoria { get; set; }
        public string csapat { get; set; }
        public int[] Pontok { get; set; }
        public Versenyzo(string sor)
        {
            string[] temp = sor.Split(';');
            nev = temp[0];
            kategoria = temp[1];
            csapat = temp[2];
            Pontok = new int[8];
            for (int i = 0; i < Pontok.Length; i++)
            {
                Pontok[i] = int.Parse(temp[i + 3]);
            }
        }


    public int OsszPont
        {
            get
            {
                List<int> pontokMasolat = new List<int>(Pontok);
                pontokMasolat.Sort();

                int kiesett1 = pontokMasolat[0];
                int kiesett2 = pontokMasolat[1];

                int osszeg = 0;
                for (int i = 2; i < pontokMasolat.Count; i++)
                {
                    osszeg += pontokMasolat[i];
                }

                int bonusz = 0;
                if (kiesett1 > 0) bonusz += 10;
                if (kiesett2 > 0) bonusz += 10;

                return osszeg + bonusz;
            }
        
        }
    }
}
