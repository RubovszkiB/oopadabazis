namespace Egyszam13A
{
    public class Jatekos
    {
        public string Nev { get; set; }
        public List<int> Tippek { get; set; }

        public Jatekos(string sor)
        {
            string[] temp = sor.Split(' ');
            Tippek = new List<int>();
            for (int i = 0; i < temp.Length - 1; i++)
            {
                Tippek.Add(int.Parse(temp[i]));
            }
            Nev = temp[temp.Length - 1];
        }
    }
}