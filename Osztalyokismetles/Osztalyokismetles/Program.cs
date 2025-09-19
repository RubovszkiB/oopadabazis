namespace Osztalyokismetles
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Tanulo t = new Tanulo("Bela");
            t.Setnev("Geza");
            Console.WriteLine(t.Getnev());
            t.Osztaly = "13.A";
            Console.WriteLine(t.Osztaly);
          t.Atlag = 4.5;
            Console.WriteLine(t);
        }
    }
}
