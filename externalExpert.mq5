#property copyright "hadi hoseini"
#property link "https://hadi.s4r4.com"
#property version "1.00"
#include "./display/index.mq5";
int OnInit()
{
    // draw lines 
    double offset = 100*_Point;
    double price = SymbolInfoDouble(_Symbol, SYMBOL_ASK) + 200*Point();
    HLineCreate(0,"Draw#255",0,price + offset,clrAqua);
    HLineCreate(0,"Draw#259",0,price + 5*offset,clrAqua);
    HLineCreate(0,"Draw#260",0,price + 6*offset,clrAqua);
    HLineCreate(0,"Draw#262",0,price + 8*offset,clrAqua);
    HLineCreate(0,"Draw#257",0,price + 3*offset,clrAqua);
    HLineCreate(0,"Draw#256",0,price + 2*offset,clrAqua);
    HLineCreate(0,"Draw#258",0,price + 4*offset,clrAqua);
    HLineCreate(0,"something#25",0,price+ 4.5*offset,clrGreen);
    HLineCreate(0,"Draw#261",0,price + 7*offset,clrAqua);
    
    
    return INIT_SUCCEEDED;
}
void OnTick()
{
}
void OnDeinit(const int reason)
{
   HLineDelete(0,"Draw#255");
   HLineDelete(0,"Draw#256");
   HLineDelete(0,"Draw#257");
   HLineDelete(0,"Draw#258");
   HLineDelete(0,"Draw#259");
   HLineDelete(0,"Draw#260");
   HLineDelete(0,"Draw#261");
   HLineDelete(0,"Draw#262");
   HLineDelete(0,"something#25");
}