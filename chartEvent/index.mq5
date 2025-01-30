// #include "./eventHelper.mq5"

bool isClosed = false;
int count = 0;
void OnChartEventApp(const int id,
                     const long &lparam,
                     const double &dparam,
                     const string &sparam)
{
   
    if(id == CHARTEVENT_OBJECT_ENDEDIT){
        RiskMoney =(double) ObjectGetString(0, "loss_money", OBJPROP_TEXT);
        Print(RiskMoney);
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
}
