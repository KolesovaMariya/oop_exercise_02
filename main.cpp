#include <iostream>
#include "money.h"
#include <fstream>
int main() {
    //для чтения из файла в CLion на винде
    std::ifstream in(R"(C:\Users\LENOVO\CLionProjects\OOP\lab2\test_01.txt)");
    std::cin.rdbuf(in.rdbuf());
    int n;
    std::cout << "Сколько пар сумм вы хотите ввести? " << std::endl;
    std::cin >> n;
    std::cout << n << std::endl;
    for(int i = 0; i < n; i++) {
        Money a, b;
        double c;
        std::cout << "Введите суммы a и b: " << std::endl;
        std::cin >> a >> b;
        std::cout << "Введите дробное число c: " << std::endl;
        std::cin >> c;
        std::cout << "a: " << a << " b: " << b << " c: " << c << std::endl;
        std::cout << "a + b = " << a + b << std::endl;
        std::cout << "a - b = " << a - b << std::endl;
        if((b.GetRub()== 0) && (b.GetKop() == 0)) {
            std::cout << "a / b: Невозможно вывести результат деления на нулевую сумму" << std::endl;
        } else {
            std::cout << "a / b = " << a / b << std::endl;
        }
        if(c == 0) {
            std::cout << "a / c: Невозможно вывести результат деления на 0" << std::endl;
        } else {
            std::cout << "a / c = " << a / c << std::endl;
        }
        if(c == 0) {
            std::cout << "b / c: Невозможно вывести результат деления на 0" << std::endl;
        } else {
            std::cout << "b / c = " << b / c << std::endl;
        }
        std::cout << "a * c = " << a * c << std::endl;
        std::cout << "b * c = " << b * c << std::endl;
        std::cout << "a > b? ";
        if (a > b) {
            std::cout << "Да" << std::endl;
        } else {
            std::cout << "Нет" << std::endl;
        }
        std::cout << "a < b? ";
        if (a < b) {
            std::cout << "Да" << std::endl;
        } else {
            std::cout << "Нет" << std::endl;
        }

        std::cout << "a == b? ";
        if (a == b) {
            std::cout << "Да" << std::endl;
        } else {
            std::cout << "Нет" << std::endl;
        }
        Money q = 17.20_money;
        std::cout << q << std::endl;
    }
}