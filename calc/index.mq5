#include "./helper.mq5";

double CalcVolume()
{

    return RiskMoney / (PipValue * (mainLevels.SL1 + 2 * mainLevels.SL2 + 4 * mainLevels.SL3+ 8 * mainLevels.SL4+ 16 * mainLevels.SL5));
}

bool CheckIsMarginEnough(){

    return true;
}
double FindBaseVolume(double& levels[])
{
    // determine direction
    double isBuy = isBuyDetermine(levels);
    // sort
    if (isBuy)
    {
        for (int i = 0; i < 8; i++)
        {
            int index = findMaxIndexFromIndex(levels, i);
            double temp = levels[index];
            levels[index] = levels[i];
            levels[i] = temp;
        }
    }
    else
    {
        for (int i = 0; i < 8; i++)
        {
            int index = findMinIndexFromIndex(levels, i);
            double temp = levels[index];
            levels[index] = levels[i];
            levels[i] = temp;
        }
    }
    double factor = isBuy ? -1 : 1;

    mainLevels.SL1 = (levels[0] + (factor * levels[7]))/(10*_Point)+SL_Pip;
    mainLevels.SL2 = (levels[2] + (factor * levels[7]))/(10*_Point)+SL_Pip;
    mainLevels.SL3 = (levels[4] + (factor * levels[7]))/(10*_Point)+SL_Pip;
    mainLevels.SL4 = (levels[6] + (factor * levels[7]))/(10*_Point)+SL_Pip;
    mainLevels.SL5 = (levels[7] + (factor * levels[7]))/(10*_Point)+SL_Pip;



    return CalcVolume();
}
