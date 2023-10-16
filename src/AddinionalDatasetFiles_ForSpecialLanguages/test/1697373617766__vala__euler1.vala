// Euler1 in Vala

int euler1(int size) {
    int result = 0;
    for (int i = 0; i < size; i++) {
        if (i%3==0 || i%5==0) {
            result += i;
        }
    }    
    return result;
}

int main() {
    print("%i\n", euler1(1000));
    return 0;
}