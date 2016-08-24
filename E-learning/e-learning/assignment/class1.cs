    class demo1
    {

        int a;
        public demo1()
        {

            //System.Console.WriteLine("Default construtor");
            System.Diagnostics.Trace.WriteLine("Default Constructor"+ "====="+a.ToString());
        }
        public demo1(int x)
        {
            a = x;
            System.Diagnostics.Trace.WriteLine("Parametaried constructor Constructor" + "=====" + a.ToString());

        }

        public int sum()
        {
            a=a+10;
            return a;
        }

       public static void demo_static()
        {
            System.Diagnostics.Trace.WriteLine("In static Method of demo class");
        }
    }