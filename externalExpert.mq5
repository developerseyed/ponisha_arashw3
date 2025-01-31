#property copyright "hadi hoseini"
#property link "https://hadi.s4r4.com"
#property version "1.00"
#include "./display/index.mq5";
int OnInit()
{
    // draw lines 
    double price = SymbolInfoDouble(_Symbol, SYMBOL_ASK) + 200*Point();
    HLineCreate(0,"Draw#25",0,price,clrGreen);
    HLineCreate(0,"Draw#25",0,price,clrGreen);
    HLineCreate(0,"Draw#25",0,price,clrGreen);
    HLineCreate(0,"Draw#25",0,price,clrGreen);
    HLineCreate(0,"Draw#25",0,price,clrGreen);
    HLineCreate(0,"Draw#25",0,price,clrGreen);
    HLineCreate(0,"Draw#25",0,price,clrGreen);
    HLineCreate(0,"Draw#25",0,price,clrGreen);
    HLineCreate(0,"something#25",0,price,clrGreen);
    Print("in the external expert price is :",price);
    
    return INIT_SUCCEEDED;
}
void OnTick()
{
}
void OnDeinit(const int reason)
{
   HLineDelete(0,"sample#25");
}1