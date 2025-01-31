bool isClosed = false;
double allLevels[8];
int levelsCount = 0;
void OnChartEventApp(const int id,
                     const long &lparam,
                     const double &dparam,
                     const string &sparam)
{

    if (id == CHARTEVENT_OBJECT_ENDEDIT)
    {
        RiskMoney = (double)ObjectGetString(0, "loss_money", OBJPROP_TEXT);
    }
    else if (id == CHARTEVENT_OBJECT_CLICK)
    {

        if (sparam == "minimize")
        {
            if (isClosed)
            {
                mainForm.show();
            }
            else
            {
                mainForm.DeleteAllObjects();
            }
            isClosed = !isClosed;
        }
        ChartRedraw(0);
        Sleep(100);
    }
    else if (id == CHARTEVENT_OBJECT_CREATE)
    {
        string objName = sparam;
        int index = StringFind(objName, "Draw", 0);
        if (index == 0)
        {
            allLevels[levelsCount] = ObjectGetDouble(0, objName, OBJPROP_PRICE, 0);
            levelsCount += 1;
            if (levelsCount == 8)
            {
                baseVolume = FindBaseVolume(allLevels);
                levelsCount = 0;
            }
        }
    }
}