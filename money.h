#ifndef LAB1_MONEY_H
#define LAB1_MONEY_H
#include <iostream>
class Money {
public:
    Money();
    Money(unsigned long long r, unsigned char k);

    unsigned long long GetRub();
    unsigned char GetKop();

     unsigned long long GetRub() const;
    unsigned char GetKop() const;

    friend std::ostream& operator<<(std::ostream &out, Money const &a);
    friend std::istream& operator>>(std::istream &in, Money &a);


    Money operator+(const Money &b);
    Money operator-(const Money &b);
    Money operator*(const double &b);
    Money operator/(const double &b);
    Money operator/(const Money &b);

    Money operator+(const Money &b) const;
    Money operator-(const Money &b) const;
    Money operator*(const double &b) const;
    Money operator/(const double &b) const;
    Money operator/(const Money &b) const;

    bool operator>(const Money &b) const;
    bool operator<(const Money &b) const;
    bool operator==(const Money &b) const;



private:
    unsigned long long rub;
    unsigned char kop;
};
Money operator"" _money(long double);
#endif //LAB1_MONEY_H
