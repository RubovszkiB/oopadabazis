namespace FootGolf
{
    internal class footgolf
    {
        static List<Versenyzo> versenyzok = new List<Versenyzo>();
        static void Main(string[] args)
        {
            Feladat2();
            Feladat3();
            Feladat4();
            Console.WriteLine("Feladat 5 nevek, pontok");
            foreach (var v in versenyzok)
            {
                Console.WriteLine($"{v.nev}: {v.OsszPont} pont");
            }
        }
        private static void Feladat3()
        {
            Console.WriteLine($"3. feladat: {versenyzok.Count} fő");
        }
        private static void Feladat4()
        {
            int noiDb = 0;
            int osszDb = versenyzok.Count;

            for (int i = 0; i < versenyzok.Count; i++)
            {
                string kategoria = versenyzok[i].kategoria.ToLower();

                if (kategoria == "noi" || kategoria == "női")
                {
                    noiDb++;
                }
            }

            double arany = (double)noiDb / osszDb * 100;

            Console.WriteLine($"4. feladat: A női versenyzők aránya: {arany:F2}%");
        }


        private static void Feladat2()
        {
            StreamReader sr = new StreamReader("fob2016.txt");
            while (!sr.EndOfStream)
            {
                versenyzok.Add(new Versenyzo(sr.ReadLine()));
               
            }
            sr.Close();
        }
    }
}
