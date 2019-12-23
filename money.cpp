#include "money.h"

Money::Money() {
    rub = 0;
    kop = 0;
}
Money::Money(unsigned long long r, unsigned char k) {
    rub = r;
    kop = k;
}

unsigned long long Money::GetRub() {
    return rub;
}
unsigned char Money::GetKop() {
    return kop;
}
unsigned long long Money::GetRub() const {
    return rub;
}
unsigned char Money::GetKop() const {
    return kop;
}

std::ostream &operator<<(std::ostream &out, Money const &a) {
    if (a.GetKop() > 9) {
        out << a.GetRub() << "," << (int)a.GetKop();
    } else {
        out << a.GetRub() << "," << "0" << (int)a.GetKop();
    }
    return out;
}
std::istream& operator>>(std::istream &in, Money &a) {
    unsigned long long new_rub = 0;
    unsigned char new_kop = 0;
    int i = 0;
    char c[20];
    in >> c;
    while ((c[i] != ',') && (c[i] != '.') && (c[i] != 0)) {
        new_rub = new_rub * 10 + (int)(c[i] - '0');
        i++;
    }
    if (c[i] != 0) {
        i += 1;
        new_kop += (c[i] - '0') * 10;
        i++;
        if (c[i] != 0) {
            new_kop += (c[i] - '0');
        }
    }
    a.rub = new_rub;
    a.kop = new_kop;
    return in;
}

bool Money::operator>(const Money &b) const {
    if (rub == b.rub) {
        return kop > b.kop;
    }
    return rub > b.rub;
}
bool Money::operator<(const Money &b) const {
    if (rub == b.rub) {
        return kop < b.kop;
    }
    return rub < b.rub;
}
bool Money::operator==(const Money &b) const {
    if (rub == b.rub) {
        return kop == b.kop;
    }
    return false;
}




Money Money::operator+(const Money &b) const {
    Money tmp = {rub, kop};
    tmp.rub = rub + b.rub;
    tmp.kop = kop + b.kop;
    if (tmp.kop > 99) {
        tmp.rub +=1;
        tmp.kop -= 100;
    }
    return tmp;
}
Money Money::operator-(const Money &b) const {
    unsigned long long new_rub = rub;
    unsigned char new_kop = kop;
    if(*this < b) {
        return {0, 0};
    }
    Money tmp = {new_rub, new_kop};
    tmp.rub = new_rub - b.rub;
    if (new_kop < b.kop) {
        tmp.rub -= 1;
        new_kop += 100;
    }
    tmp.kop = new_kop - b.kop;
    return tmp;
}
Money Money::operator*(const double &b) const {
    Money tmp_m;
    unsigned long long tmp = rub*100 + kop;
    double result = tmp*b;
    tmp_m.rub = (unsigned long long)result/100;
    tmp_m.kop = (unsigned char)((unsigned long long )result%100);
    return tmp_m;
}
Money Money::operator/(const double &b) const {
    Money tmp_money;
    unsigned long long tmp = rub*100 + kop;
    tmp /= b;
    tmp_money.kop = tmp%100;
    tmp_money.rub = tmp/100;
    return tmp_money;
}
Money Money::operator/(const Money &b) const {
    Money tmp_money;
    unsigned long long tmp_1 = rub*10000 + (int)kop*100;
    unsigned long long tmp_2 = b.rub*100 + b.kop;
    unsigned long long result = tmp_1/tmp_2;
    tmp_money.rub = result/100;
    tmp_money.kop = result%100;
    return tmp_money;
}
Money operator"" _money(long double a) {
    unsigned long long num = a*100;
    Money tmp = {num/100, (unsigned char)(num%100)};
    return tmp;

}