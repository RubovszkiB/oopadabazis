

namespace Egyszam13A
{
    internal class Program
    {
        static List<Jatekos> jatekosok = new List<Jatekos>();
        static void Main(string[] args)
        {
            Feladat_2();
        }

        private static void Feladat_2()
        {
            string[] temp = File.ReadAllLines("egyszamjatek.txt");
            foreach (var item in temp)
            {
                jatekosok.Add(new Jatekos(item));
            }
        }
    }
}