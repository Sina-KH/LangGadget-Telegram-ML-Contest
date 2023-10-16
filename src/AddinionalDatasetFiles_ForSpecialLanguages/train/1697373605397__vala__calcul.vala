namespace Calcul
{
    private delegate double Fonction(double x);

    public string calcul(int n)
    {
        string begin = "n = %d\tReclangles\tTrapezes\tSimpson\n".printf(n);

        return begin +
        "f1\t" + calcul_integ(f1, n) +
        "f2\t" + calcul_integ(f2, n) +
        "f3\t" + calcul_integ(f3, n) +
        "f4\t" + calcul_integ(f4, n) +
        "f5\t" + calcul_integ(f5, n) +
        "f6\t" + calcul_integ(f6, n) +
        "f7\t" + calcul_integ(f7, n) +
        "f8\t" + calcul_integ(f8, n) +
        "f9\t" + calcul_integ(f9, n) +
        "f10\t" + calcul_integ(f10, n);
    }

    private string calcul_integ(Fonction f, double n)
    {
        double a = 0.0;
        double b = 1.0;
        double h = (b - a) / n;

        return "%.1E".printf(rectangles(f, n, a, h)) + "\t\t" +
        "%.1E".printf(trapezes(f, n, a, b, h)) + "\t\t" +
        "%.1E".printf(simpson(f, n, a, b, h)) + "\n";
    }

    private double rectangles(Fonction f, double n, double a, double h)
    {
        double s = 0.0;

        for(int i = 0; i < n; ++i)
        {
            s += f(a + h * i);
        }

        return Math.fabs((h * s) - 1);
    }

    private double trapezes(Fonction f, double n, double a, double b, double h)
    {
        double s = 0;

        for(int i = 1; i < n; ++i)
        {
            s += f(a + (i * h));
        }

        return Math.fabs((((b - a) / (2.0 * n)) * (f(a) + f(b) + (2.0 * s))) - 1);
    }

    private double simpson(Fonction f, double n, double a, double b, double h)
    {
        double s1 = 0;
        double s2 = 0;

        for(int i = 1; i < n; ++i)
        {
            s1 += f(a + (i * h));
        }

        for(int i = 0; i < n; ++i)
        {
            s2 += f(a + (i * h) + (h / 2.0));
        }

        return Math.fabs((((b - a) / (6.0 * n)) * (f(a) + f(b) + (2.0 * s1 + 4.0 * s2))) - 1);
    }

    private double f1(double x)
    {
        return 1;
    }

    private double f2(double x)
    {
        return 2.0 * x;
    }

    private double f3(double x)
    {
        return 3.0 * Math.pow(x, 2.0);
    }

    private double f4(double x)
    {
        return 4.0 * Math.pow(x, 3.0);
    }

    private double f5(double x)
    {
        return 5.0 * Math.pow(x, 4.0);
    }

    private double f6(double x)
    {
        return 6.0 * Math.pow(x, 5.0);
    }

    private double f7(double x)
    {
        return 1.0 / (2.0 * (Math.sqrt(2) - 1.0) * Math.sqrt(x + 1.0));
    }

    private double f8(double x)
    {
        return 2.0 / Math.pow(x + 1.0, 2.0);
    }

    private double f9(double x)
    {
        return (Math.PI / 2.0) * Math.sin((Math.PI / 2.0) * x);
    }

    private double f10(double x)
    {
        return Math.pow(Math.E, x) / (Math.E - 1.0);
    }
}
