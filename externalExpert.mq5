#property copyright "hadi hoseini"
#property link "https://hadi.s4r4.com"
#property version "1.00"
#include "./display/index.mq5";
#include "./helper.mq5";
void add(double offset)
{
    int factor = offset>0?1:-1;
    double price = SymbolInfoDouble(_Symbol, SYMBOL_BID) + factor* 50 * Point();
    TrendCreate(0, "Draw#255", 0, myTime(10), price + offset, myTime(0), price + offset, clrAqua);
    TrendCreate(0, "Draw#259", 0,myTime(10), price + 5 * offset,myTime(0),price + 5 * offset, clrAqua);
    TrendCreate(0, "Draw#260", 0, myTime(10), price + 6 * offset,myTime(0),price + 6 * offset, clrAqua);
    TrendCreate(0, "Draw#262", 0, myTime(10), price + 8 * offset,myTime(0),price + 8 * offset, clrAqua);
    TrendCreate(0, "Draw#257", 0, myTime(10), price + 3 * offset,myTime(0),price + 3 * offset, clrAqua);
    TrendCreate(0, "Draw#256", 0, myTime(10), price + 2 * offset,myTime(0),price + 2 * offset, clrAqua);
    TrendCreate(0, "Draw#258", 0, myTime(10), price + 4 * offset,myTime(0),price + 4 * offset, clrAqua);
    TrendCreate(0, "something#25", 0, myTime(10), price + 4.5 * offset,myTime(0),price + 4.5 * offset, clrGreen);
    TrendCreate(0, "Draw#261", 0, myTime(10), price + 7 * offset,myTime(0),price + 7 * offset, clrAqua);
}
void remove()
{
    TrendDelete(0, "Draw#255");
    TrendDelete(0, "Draw#256");
    TrendDelete(0, "Draw#257");
    TrendDelete(0, "Draw#258");
    TrendDelete(0, "Draw#259");
    TrendDelete(0, "Draw#260");
    TrendDelete(0, "Draw#261");
    TrendDelete(0, "Draw#262");
    TrendDelete(0, "something#25");
}
int OnInit()
{
    add(-100 * _Point);
    return INIT_SUCCEEDED;
}
int count = 0;
int negative = -1;
int sumAdder = 20;
void OnTick()
{
    // count++;
    // if (count == 4)
    // {
    //     remove();
    //     add(negative * (100 + sumAdder) * _Point);
    //     negative *= -1;
    //     sumAdder += sumAdder;
    //     count = 0;
    // }
}
void OnDeinit(const int reason)
{
    remove();
}