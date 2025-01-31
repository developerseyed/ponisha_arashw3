bool isBuyDetermine(double& levels[])
{
    double ask = SymbolInfoDouble(_Symbol, SYMBOL_ASK);
    bool buyCount = 0;
    bool sellCount = 0;
    for (int i = 0; i < 8; ++i)
    {
        if (levels[i] > ask)
        {
            sellCount += 1;
        }
        else
        {
            buyCount += 1;
        }
    }
    return buyCount > sellCount;
}
int findMinIndexFromIndex(double& levels[], int index)
{
    int result = -1;
    double min = 9999999;
    for (int i = index; i < 8; ++i)
    {
        if (min > levels[index])
        {
            min = levels[index];
            result = i;
        }
    }
    return result;
}
int findMaxIndexFromIndex(double& levels[], int index)
{
    int result = -1;
    double max = -1;
    for (int i = index; i < 8; ++i)
    {
        if (max < levels[index])
        {
            max = levels[index];
            result = i;
        }
    }
    return result;
}
