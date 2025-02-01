void MyCreateRectangle(ENUM_BASE_CORNER corner,int xPosition,int yPosition)
{
    ObjectCreate(0, "FormContainer", OBJ_RECTANGLE_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "FormContainer", OBJPROP_XDISTANCE, xPosition);       // X position
    ObjectSetInteger(0, "FormContainer", OBJPROP_YDISTANCE, yPosition);        // Y position
    ObjectSetInteger(0, "FormContainer", OBJPROP_XSIZE, 230);           // Width of the form
    ObjectSetInteger(0, "FormContainer", OBJPROP_YSIZE, 230);           // Height of the form
    ObjectSetInteger(0, "FormContainer", OBJPROP_CORNER, corner);       // Corner reference
    ObjectSetInteger(0, "FormContainer", OBJPROP_BGCOLOR, C'8,21,33'); // Background color
    ObjectSetInteger(0, "FormContainer", OBJPROP_STYLE, STYLE_SOLID);
}
void MyCreateRectangle2(ENUM_BASE_CORNER corner,int xPosition,int yPosition,int width,int height, color clr)
{
    ObjectCreate(0, "FormContainer2", OBJ_RECTANGLE_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "FormContainer2", OBJPROP_XDISTANCE, xPosition);       // X position
    ObjectSetInteger(0, "FormContainer2", OBJPROP_YDISTANCE, yPosition);        // Y position
    ObjectSetInteger(0, "FormContainer2", OBJPROP_XSIZE, width);           // Width of the form
    ObjectSetInteger(0, "FormContainer2", OBJPROP_YSIZE, height);           // Height of the form
    ObjectSetInteger(0, "FormContainer2", OBJPROP_CORNER, corner);       // Corner reference
    ObjectSetInteger(0, "FormContainer2", OBJPROP_BGCOLOR, clr); // Background color
    ObjectSetInteger(0, "FormContainer2", OBJPROP_STYLE, STYLE_SOLID);
}