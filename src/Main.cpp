#include <Calculator.h>
#include <iostream>

int main (int argc, const char * argv[]) {
    Calculator* ptrCalc = new Calculator(9);

    int *array = new int[100];
    delete [] array;
    return array[argc];  // BOOM
    std::cout << "Hello, World!\n";
    return 0;
}
