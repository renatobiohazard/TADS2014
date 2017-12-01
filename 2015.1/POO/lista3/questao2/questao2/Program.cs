using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace questao2
{
    class Program
    {
        static void Main(string[] args)
        {
            int num1,num2,op;
            calculadora ops = new calculadora();
            Console.WriteLine("digite o peimriro numero");
            num1 = int.Parse(Console.ReadLine());
            Console.WriteLine("digite o segundo numero");
            num2 = int.Parse(Console.ReadLine());
            Console.WriteLine("digite a operação: 1 para soma, 2 para multiplicação, 3 para subtração e 4 para divisão");
            op = int.Parse(Console.ReadLine());

            switch (op)
            {
                case 1: Console.WriteLine("o resultado é: {0}",ops.setSom(num1,num2));
                    break;
                case 2: Console.WriteLine("o resultado é: {0}", ops.setMult(num1, num2));
                    break;
                case 3: Console.WriteLine("o resultado é: {0}", ops.setSub(num1, num2));
                    break;
                case 4: Console.WriteLine("o resultado é: {0}", ops.setDiv(num1, num2));
                    break;


            }
            Console.ReadKey();
        }
    }
}
