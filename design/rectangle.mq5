void MyCreateRectangle(ENUM_BASE_CORNER corner,int xPosition,int yPosition)
{
    ObjectCreate(0, "FormContainer", OBJ_RECTANGLE_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "FormContainer", OBJPROP_XDISTANCE, xPosition);       // X position
    ObjectSetInteger(0, "FormContainer", OBJPROP_YDISTANCE, yPosition);        // Y position
    ObjectSetInteger(0, "FormContainer", OBJPROP_XSIZE, 170);           // Width of the form
    ObjectSetInteger(0, "FormContainer", OBJPROP_YSIZE, 170);           // Height of the form
    ObjectSetInteger(0, "FormContainer", OBJPROP_CORNER, corner);       // Corner reference
    ObjectSetInteger(0, "FormContainer", OBJPROP_BGCOLOR, C'8,21,33'); // Background color
    ObjectSetInteger(0, "FormContainer", OBJPROP_STYLE, STYLE_SOLID);
}