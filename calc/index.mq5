#include "./helper.mq5";

double CalcVolume()
{

    return RiskMoney / (PipValue * (mainLevels.SL1 + 2 * mainLevels.SL2 + 4 * mainLevels.SL3 + 8 * mainLevels.SL4 + 16 * mainLevels.SL5));
}

bool IsMarginEnough()
{
    double price = myAsk();
    double sumVolume = 31 * baseVolume;
    double margin = (price * sumVolume) / leverage;
    double equity = AccountInfoDouble(ACCOUNT_EQUITY);

    return equity > margin;
}
double FindBaseVolume(double &levels[])
{
    // determine direction
    double isBuy = isBuyDetermine(levels);

    // sort
    ArraySort(levels);
    if (isBuy)
    {
        ArrayReverse(levels, 0, WHOLE_ARRAY);
    }

    double factor = isBuy ? -1 : 1;

    mainLevels.SL1 = (-1 * factor * levels[0] + (factor * levels[7])) / (10 * _Point) + SL_Pip;
    mainLevels.SL2 = (-1 * factor * levels[2] + (factor * levels[7])) / (10 * _Point) + SL_Pip;
    mainLevels.SL3 = (-1 * factor * levels[4] + (factor * levels[7])) / (10 * _Point) + SL_Pip;
    mainLevels.SL4 = (-1 * factor * levels[6] + (factor * levels[7])) / (10 * _Point) + SL_Pip;
    mainLevels.SL5 = (-1 * factor * levels[7] + (factor * levels[7])) / (10 * _Point) + SL_Pip;

    return CalcVolume();
}
