#include "./label.mq5"
#include "./rectangle.mq5"
#include "./edit.mq5"
#include "./button.mq5"
class TradeForm
{
private:
    int xPosition;
    int yPosition;
    ENUM_BASE_CORNER corner;
    int font_size;
    bool isFirst;

public:
    TradeForm();
    ~TradeForm();
    void CreateFormContainer();
    void CreateEdit(string name, int xPos, int yPos, int width, int height, int fontSize);
    void CreateTextLabel(string name, int xPos, int yPos, string text, color clr,int fontSize);
    void CreateButton(string name);
    void CreateButton(string name, int xPos, int yPos, int width, int heigth, string text, int fontSize, color clr, color back_clr);
    void show();
    void DeleteAllObjects();
};

TradeForm::~TradeForm()
{
    DeleteAllObjects();
    ObjectDelete(0, "minimize");
}
TradeForm::TradeForm(/* args */)
{
    xPosition = 220;
    yPosition = 35;
    font_size = 14;
    isFirst = true;
    corner = CORNER_RIGHT_UPPER;
}
void TradeForm::CreateFormContainer()
{
    MyCreateRectangle(corner, xPosition, yPosition);
}
void TradeForm::CreateEdit(string name, int xPos, int yPos, int width, int height, int fontSize)
{
    CreateEditText(name, xPos, yPos, width, height, fontSize, corner);
}
void TradeForm::CreateTextLabel(string name, int xPos, int yPos, string text, color clr = clrWhite, int fontSize = 0)
{
    if (fontSize == 0)
    {
        fontSize = font_size;
    }
    LabelCreate(0, name, 0, xPos, yPos, corner, text, "Arial", fontSize, clr, 0.0);
}
void TradeForm::CreateButton(string name, int xPos, int yPos, int width, int heigth, string text, int fontSize, color clr, color back_clr)
{
    ButtonCreate(0, name, 0, xPos, yPos, width, heigth, corner, text, "Arial", fontSize, clr, back_clr);
}
void TradeForm::show()
{
    long minimizeX = ObjectGetInteger(0, "minimize", OBJPROP_XDISTANCE);
    long minimizeY = ObjectGetInteger(0, "minimize", OBJPROP_YDISTANCE);
    // beType = Pip;
    if (!isFirst)
    {
        xPosition = minimizeX + 180;
        yPosition = minimizeY - 5;
    }
    else
    {
        minimizeX = 0;
        minimizeY = 40;
    }
    CreateFormContainer();
    int y_split = 10;
    CreateTextLabel("loss_tag", xPosition - 10, yPosition + y_split, "risk money:",clrWhite,12);
    CreateEdit("loss_money", xPosition - 93, yPosition + y_split, 73, 25, 16);
    y_split += 30;
    CreateTextLabel("volume1_tag", xPosition - 10, yPosition + y_split, "level1 volume:");
    CreateTextLabel("volume1", xPosition - 95, yPosition + y_split, "       1", clrGreen);
    y_split += 25;
    CreateTextLabel("volume2_tag", xPosition - 10, yPosition + y_split, "level2 volume:");
    CreateTextLabel("volume2", xPosition - 95, yPosition + y_split, "       2", clrGreen);
    y_split += 25;
    CreateTextLabel("volume3_tag", xPosition - 10, yPosition + y_split, "level3 volume:");
    CreateTextLabel("volume3", xPosition - 95, yPosition + y_split, "       4", clrGreen);
    y_split += 25;
    CreateTextLabel("volume4_tag", xPosition - 10, yPosition + y_split, "level4 volume:");
    CreateTextLabel("volume4", xPosition - 95, yPosition + y_split, "       8", clrGreen);
    y_split += 25;
    CreateTextLabel("volume5_tag", xPosition - 10, yPosition + y_split, "level5 volume:");
    CreateTextLabel("volume5", xPosition - 95, yPosition + y_split, "       16", clrGreen);
    if (isFirst)
    {
        ButtonCreate(0, "minimize", 0, 40, 40, 35, 35, CORNER_RIGHT_UPPER, "~", "Arial", 18, clrWhite, C'8,21,33', clrNONE, false, false, true);
    }

    isFirst = false;
}
void TradeForm::DeleteAllObjects()
{
    ObjectDelete(0, "loss_tag");
    ObjectDelete(0, "FormContainer");
    ObjectDelete(0, "loss_money");
    ObjectDelete(0, "volume1");
    ObjectDelete(0, "volume2");
    ObjectDelete(0, "volume3");
    ObjectDelete(0, "volume4");
    ObjectDelete(0, "volume5");
    ObjectDelete(0, "volume1_tag");
    ObjectDelete(0, "volume2_tag");
    ObjectDelete(0, "volume3_tag");
    ObjectDelete(0, "volume4_tag");
    ObjectDelete(0, "volume5_tag");
    ObjectDelete(0, "be_Pip");
    ObjectDelete(0, "be_money");
    ObjectDelete(0, "sl_%");
    ObjectDelete(0, "sl_Pip");
    ObjectDelete(0, "sl_money");
    ObjectDelete(0, "op_sell_limit");
    ObjectDelete(0, "op_buy_limit");
    ObjectDelete(0, "op_sell_limit_stop");
    ObjectDelete(0, "op_buy_limit_stop");
    ObjectDelete(0, "stop");
    ObjectDelete(0, "close");
}