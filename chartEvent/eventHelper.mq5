MyOrderType FindOrderType(string name)
{
    MyOrderType result = Buy_Limit_Stop;
    if (name == "op_sell_limit")
    {
        result = Sell_Limit;
    }
    else if (name == "op_buy_limit")
    {
        result = Buy_Limit;
    }
    else if (name == "op_sell_limit_stop")
    {
        result = Sell_Limit_Stop;
    }

    return result;
}
double findPrice()
{
    double price = (double)ObjectGetString(0, "point", OBJPROP_TEXT);
    return price;
}
double findVolume()
{
    double volume = (double)ObjectGetString(0, "volume", OBJPROP_TEXT);
    return volume;
}

MyBreakEvenType findBreakEvenType(string name)
{
    MyBreakEvenType result = Money;
    if (name == "be_%")
    {
        result = Percent;
    }
    else if (name == "be_Pip")
    {
        result = Pip;
    }
    return result;
}
MyBreakEvenType findSlType(string name){
    MyBreakEvenType result = Money;
    if (name == "sl_%")
    {
        result = Percent;
    }
    else if (name == "sl_Pip")
    {
        result = Pip;
    }
    return result;

}
MyBreakEven findBreakEven()
{
    MyBreakEven be;
    be.value = (double)ObjectGetString(0, "break_even", OBJPROP_TEXT);
    be.type = beType;
    return be;
}
MyBreakEven findSl()
{
    MyBreakEven sl;
    sl.value = (double)ObjectGetString(0, "sl", OBJPROP_TEXT);
    sl.type = slType;
    return sl;
}
int findId()
{
    int id = (int)ObjectGetString(0, "id", OBJPROP_TEXT);
    return id;
}