// Hello World! program
namespace HelloWorld
{
    class Hello
    {
        static void Main(string[] args)
        {
            System.Console.WriteLine("Hello World!");





            //	Inline comments start with 
            /*	Block comments 
            start with*/
            ///	XML comments start with 

            // VARIABLES
            string Name = "thecodingguys";
            int Year = 2013;
            float f1 = 35e3F;
            double d1 = 12E4D;

            // casting 
            double myDouble = 9.78;
            int myInt = (int)myDouble;    // Manual casting: double to int

            int myInt = 10;
            double myDouble = 5.25;
            bool myBool = true;

            Console.WriteLine(Convert.ToString(myInt));    // convert int to string
            Console.WriteLine(Convert.ToDouble(myInt));    // convert int to double
            Console.WriteLine(Convert.ToInt32(myDouble));  // convert double to int
            Console.WriteLine(Convert.ToString(myBool));   // convert bool to string

            // user input 
            // Create a string variable and get user input from the keyboard and store it in the variable
            string userName = Console.ReadLine();

            // Print the value of the variable (userName), which will display the input value
            Console.WriteLine("Username is: " + userName);

            // ARRAYS
            string[] MyGamesOf2013 = { "GTAV", "Battlefield3" };
            string[] MyMoveisOf2013 = new string[3] { "The Amazing Spiderman", "The Expendables 2", "Rise of the planet of the apes" };
            MyGamesOf2013.Length;

            // STRINGS
            // CONCATENATION
            Console.WriteLine("Hello \n" + "World");
            // STRING.FORMAT
            // Depending on your computers regional settings you will see £5.00 displayed 
            // The 0:C is the formatting we wish to do, 
            // in this case it means format the first parameter (0) and show a currency sign.
            Console.WriteLine(string.Format("{0:C}", 5));

            // CONDITIONAL STATEMENTS	
            // IF STATEMENTS
            if (Year > 2015)
            {

            }
            else
            {

            }

            // SWITCH  STATEMENT
            switch (Year)
            {
                case 2013:
                    Console.WriteLine("It's 2013!"); break;
                case 2012:
                    Console.WriteLine("It's 2012!"); break;
                default:
                    Console.WriteLine("It's " + Year + "!"); break;
            }

            // LOOPS	
            // WHILE LOOP
            while (true)
            {
            }

            // FOR LOOP
            for (int i = 0; i < length; i++)
            {
            }

            // FOR EACH
            foreach (string movie in MyMoveisOf2013)
            {
                Console.WriteLine(movie);
            }

            // EXCEPTIONS
            try
            {
                throw;
                string result = "k"; Console.WriteLine(Convert.ToInt32(result) + 10);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            // defining object from class
            MyCar NewCar = new MyCar(); NewCar.Manufacturer("Audi");

            // file example
            using System.IO;  // include the System.IO namespace

            string writeText = "Hello World!";  // Create a text string
            File.WriteAllText("filename.txt", writeText);  // Create a file and write the content of writeText to it

            string readText = File.ReadAllText("filename.txt");  // Read the contents of the file
            Console.WriteLine(readText);  // Output the content
        }

        // METHODS
        public static void WelcomeUser()
        {
            Console.WriteLine("Hello Guest!");
        }

        // Passing Parameters
        public static void WelcomeUser(string Name)
        {
            Console.WriteLine("Hello " + Name + "!");
        }

        // Returning Data
        public static DateTime Tomorrow()
        {
            return DateTime.Now.AddDays(1);
        }

        // All the examples above are static, 
        // this allows me to use the methods without initializing the class. 

        // CLASSES
        class MyCar
        {
            int model_number;
            public void Manufacturer(string Manf)
            {
                Console.WriteLine(Manf);
            }
        }

        // inheretance
        class Car : MyCar  // derived class (child)
        {
            public string modelName = "Mustang";  // Car field
        }

        // If you don't want other classes to inherit from a class, use the sealed keyword:
        sealed class Vehicle
        {

        }
        // abstract classes
        abstract class Animal
        {
            public abstract void animalSound();
            public void sleep()
            {
                Console.WriteLine("Zzz");
            }
        }

        // interface
        // interface
        interface Animal
        {
            void animalSound(); // interface method (does not have a body)
            void run(); // interface method (does not have a body)
        }
        // Pig "implements" the IAnimal interface
        class Pig : IAnimal
        {
            public void animalSound()
            {
                // The body of animalSound() is provided here
                Console.WriteLine("The pig says: wee wee");
            }
        }
        // enumeration
        enum Level
        {
            Low,
            Medium,
            High
        }

    }
}

