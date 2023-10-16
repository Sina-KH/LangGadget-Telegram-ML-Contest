#!usr/bin/env vala

public static int main (string[] args) {
    stdout.printf("Array\n");

    int[] a = new int[10];
    int[] b = { 2, 4, 6, 8 };
    for (int i=0; i<a.length; i++){
        // stdout.printf(@"$a[i]\n"); // not work
        stdout.printf(a[i].to_string()); // work
        stdout.printf("\n"); // work
    }
    stdout.printf("----------\n");
    for (int i=0; i<b.length; i++){
        // stdout.printf(@"$b[i]\n"); // not work
        stdout.printf(b[i].to_string()); // work
        stdout.printf("\n"); // work
    }

    stdout.printf("----------\n");
    int[] c = b[1:3]; // => { 4, 6 }
    for (int i=0; i<c.length; i++){
        // stdout.printf(@"$c[i]\n"); // not work
        stdout.printf(c[i].to_string()); // work
        stdout.printf("\n"); // work
    }

    stdout.printf("----------\n");
    int[,] c2 = new int[3,4];
    int[,] d2 = {{2, 4, 6, 8},
                {3, 5, 7, 9},
                {1, 3, 5, 7}};
    for (int i=0; i<3 ; i++){
        for (int j=0; j<4 ; j++){
            stdout.printf(c2[i,j].to_string());
        }
        print("\n");
    }

    stdout.printf("----------\n");
    for (int i=0; i<c2.length[0] ; i++){
        for (int j=0; j<c2.length[1] ; j++){
            stdout.printf(c2[i,j].to_string());
        }
        print("\n");
    }

    stdout.printf("----------\n");
    for (int i=0; i<c2.length[0] ; i++){
        for (int j=0; j<c2.length[1] ; j++){
            //  stdout.printf(d2[i,j].to_string());
            stdout.printf("%d ", d2[i,j]);
        }
        print("\n");
    }

    stdout.printf("----------\n");
    d2[2,3] = 42;
    for (int i=0; i<c2.length[0] ; i++){
        for (int j=0; j<c2.length[1] ; j++){
            //  stdout.printf(d2[i,j].to_string());
            stdout.printf("%d ", d2[i,j]);
        }
        print("\n");
    }

    stdout.printf("----------\n");
    int[,] arr = new int[4,5];
    for (int i=0; i<arr.length[0]; i++){
        for (int j=0; j<arr.length[1]; j++){
            stdout.printf(arr[i,j].to_string());
        }
        print("\n");
    }
    int r = arr.length[0];
    int c3 = arr.length[1];
    stdout.printf(r.to_string() + "\n");
    stdout.printf(c3.to_string() + "\n");

    int[] arr2 = new int[10];
    int r2 = arr2.length;
    stdout.printf(r2.to_string() + "\n");

    stdout.printf("----------\n");
    int[] e = {};
    for (int i=0; i<e.length ; i++){
        stdout.printf(e[i].to_string());
        print("\n");
    }

    print("zero\n");
    int e_len0 = e.length;
    stdout.printf(@"e_len0 = $(e_len0)\n");

    e += 12;
    e += 5;
    e += 37;
    for (int i=0; i<e.length ; i++){
        stdout.printf(e[i].to_string());
        print("\n");
    }
    int e_len = e.length;
    stdout.printf(@"e_len = $(e_len)\n");
    stdout.printf("e_len = %d", e_len);
    print("\n");
    stdout.printf(e_len.to_string() + "\n");

    stdout.printf("----------\n");

    return 0;
}