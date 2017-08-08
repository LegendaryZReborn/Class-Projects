//Cavaughn Browne
//Professor Catherine Stringfellow - Contemporary Programming Languages

//Date Tuesday Sept, 13th
//This program asks the user to input three intergers. Then it calculates
//the sum, average, largest and smallest of the integers and outputs them
//to the console.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CMPS4143_Average_CavaughnBrowne
{
    class Program
    {
        //Purpose: Welcomes User
        //Require: nothing
        //Returns: nothing
        static public void printWelcome()
        {
            Console.WriteLine("Cavaughn Browne");
            Console.WriteLine("Contemporary Programming Languages 4143 \n");
            Console.Write("Welcome to the  three integer program. \nGet ");
            Console.WriteLine("to know more about your three integers. \n");
        }

        //Purpose:  Reads in the integers from the user
        //Requires: three its passed by ref using out
        //Returns: nothing
        static  public void readInts(out int num1, out int num2,  out int num3)
        {

            //Prompts user to enter three integers
            Console.Write("Input your first integer: ");
            num1 = Int32.Parse(Console.ReadLine());
            Console.Write("Input your second integer: ");
            num2 = Int32.Parse(Console.ReadLine());

            Console.Write("Input your third integer: ");
            num3 = Int32.Parse(Console.ReadLine());
            Console.Write("\n");

        }

        //Purpose: prints the results to the screen
        //Requires: the int, avg, largest and smallest integer
        //Returns:nothing
        static public void printResults(int sum, int avg, int lg, int sm)
        {
            Console.WriteLine("Sum of the integers: " + sum);
            Console.WriteLine("Average of the integers: " + avg);
            Console.WriteLine("Smallest of the integers: " + sm);
            Console.WriteLine("Largest of the integers: " + lg);
            Console.ReadLine();
        }

        static void Main(string[] args)
        {
            int num1, num2, num3, sum, sm, lg;
            double avg;

            //Welcomes user
            printWelcome();
            
            try
            {
                readInts(out num1, out num2, out num3);

                //calculate the sum
                sum = num1 + num2 + num3;

                //calculate the average
                avg = Convert.ToDouble(sum) / 3;
                avg = Math.Round(avg, MidpointRounding.AwayFromZero);

                //find the largest 
                lg = Math.Max(num1, Math.Max(num2, num3));


                //find the smallest
                sm = Math.Min(num1, Math.Min(num2, num3));


                //Print out the Sum, average, smallest and largest of the three
                //integers
                printResults(sum, (int)avg, lg, sm);
            }
            catch(FormatException e)
            {
                MessageBox.Show("Does that look like an integer to you?!");
            }
          
           

        }

       

    }
}
