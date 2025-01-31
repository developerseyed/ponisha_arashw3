#property copyright "Copyright 2025, MetaQuotes Ltd."
#property link "https://www.mql5.com"
#property version "1.00"
#property indicator_chart_window

#include "./calc/index.mq5";
#include "./display/index.mq5";
#include "./design/index.mq5";
#include "./chartEvent/index.mq5";
input int SL_Pip = 10;
input double PipValue = 1;

double RiskMoney = 100;
double baseVolume = 1;
struct ExpertLevelsType
{
  double SL1;
  double SL2;
  double SL3;
  double SL4;
  double SL5;
};
TradeForm mainForm;
ExpertLevelsType mainLevels;
int OnInit()
{

  //--- indicator buffers mapping

  mainForm.show();
  ChartRedraw(0);
  Sleep(1000);

  ChartSetInteger(0, CHART_EVENT_OBJECT_CREATE, true);
  //---
  return (INIT_SUCCEEDED);
}

int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
{
  //---
  //--- return value of prev_calculated for next call
  return (rates_total);
}
void OnChartEvent(const int id, const long &lparam, const double &dparam, const string &sparam)
{
  OnChartEventApp(id, lparam, dparam, sparam);
  ObjectSetString(0, "loss_money", OBJPROP_TEXT, (string)RiskMoney);
}