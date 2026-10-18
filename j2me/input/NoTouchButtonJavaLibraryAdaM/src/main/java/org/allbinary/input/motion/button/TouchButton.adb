--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.input.motion.button.TouchButton_Package is

   procedure Initialize_Fields (This : in out TouchButton'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
      
      
      This.rectangle := RectangleFactory_Package.SINGLETON;
      
      This.animationX := 0;
      This.animationY := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButton'Class; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; animationInterface_Param : access AnimationInterface_Package.AnimationInterface'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
      animationInterface : constant AnimationInterface_Access := AnimationInterface_Access (animationInterface_Param);
      rawRectangle : constant Rectangle_Access := Rectangle_Access (rawRectangle_Param);
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.touchButtonInput := touchButtonInput;
        This.animationInterface := Animation_Access (animationInterface);
        This.rawRectangle := rawRectangle;
        This.cellPosition := cellPosition;
        This.xBorder := xBorder;
        This.yBorder := yBorder;
        TouchButton'Class (This).updateRectangle;
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Created: ")).append (TouchButton'Class (This).toString).toString, TouchButton_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; animationInterface_Param : access AnimationInterface_Package.AnimationInterface'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) return TouchButton_Access is
      This : constant TouchButton_Access := new TouchButton;
   begin
      TouchButton_Package.Initialize (This.all, touchButtonInput_Param, animationInterface_Param, rawRectangle_Param, cellPosition_Param, xBorder, yBorder);
      return This;
   end Create;

   procedure paint (This : in out TouchButton; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintXY (graphics, This.animationX, This.animationY);
   end paint;

   procedure updateRectangle (This : in out TouchButton) is
      x : Integer;
      y : Integer;
      pointFactory : PointFactory_Access;
      point : GPoint_Access;
   begin
        begin
            x := (This.rawRectangle.getWidth) * (This.cellPosition.getColumn);
            y := (This.rawRectangle.getHeight) * (This.cellPosition.getRow);
            pointFactory := PointFactory_Package.getInstance;
            This.rectangle := Rectangle_Package.Create (pointFactory.createXY ((x) + (This.xBorder), (y) + (This.yBorder)), This.rawRectangle.getWidth, This.rawRectangle.getHeight);
            point := This.rectangle.getPoint;
            This.animationX := point.getX;
            This.animationY := point.getY;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, TouchButton_Access'(This'Unchecked_Access), To_Unbounded_String ("updateRectangle"), e);
                end;
        end;
   end updateRectangle;

   function getCellPositionP (This : in out TouchButton) return CellPosition_Access is
   begin
        return This.cellPosition;
   end getCellPositionP;

   function getRectangleP (This : in out TouchButton) return Rectangle_Access is
   begin
        return This.rectangle;
   end getRectangleP;

   function getTouchButtonInput (This : in out TouchButton) return TouchButtonInput_Access is
   begin
        return This.touchButtonInput;
   end getTouchButtonInput;

   function toString (This : in out TouchButton) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      stringUtil : StringUtil_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringUtil := StringUtil_Package.getInstance;
        stringBuffer.append (To_Unbounded_String ("TouchButton: "));
        stringBuffer.append (stringUtil.toString (This.rectangle));
        stringBuffer.append (To_Unbounded_String (" CellPosition: "));
        stringBuffer.append (stringUtil.toString (This.cellPosition));
        stringBuffer.append (To_Unbounded_String (" xBorder: "));
        stringBuffer.appendint (This.xBorder);
        stringBuffer.append (To_Unbounded_String (" yBorder: "));
        stringBuffer.appendint (This.yBorder);
        return stringBuffer.toString;
   end toString;

end org.allbinary.input.motion.button.TouchButton_Package;


