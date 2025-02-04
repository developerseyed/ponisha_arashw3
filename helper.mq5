
double myAsk()
{
    return SymbolInfoDouble(_Symbol, SYMBOL_ASK);
}
datetime myTime(int shift)
{
    return iTime(_Symbol, PERIOD_CURRENT, shift);
}
double RemoveExtraPoints(double num)
{
    double result = MathFloor(100 * num) / 100;
    return result;
}
double myPipValue(double for_lot)
{
    double tickSize = SymbolInfoDouble(_Symbol, SYMBOL_TRADE_TICK_SIZE);
    double tickValue = SymbolInfoDouble(_Symbol, SYMBOL_TRADE_TICK_VALUE);
    double points_in_tick = tickSize / _Point;
    double pointValueForOneLot = tickValue / points_in_tick;
    return 10 * pointValueForOneLot * for_lot;
}