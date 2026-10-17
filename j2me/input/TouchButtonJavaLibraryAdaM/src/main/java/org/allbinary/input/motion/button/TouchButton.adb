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
      
      
      
      
      
      
      This.rectangleP := RectangleFactory_Package.SINGLETON;
      
      This.animationX := 0;
      This.animationY := 0;
      This.hintAnimationY := 0;
   end Initialize_Fields;


   --  throws Exception
   function createButton (touchButtonInput_Param : access TouchButtonInput'Class; touchButtonResource_Param : access TouchButtonResource'Class; rawRectangle_Param : access Rectangle'Class; cellPosition_Param : access CellPosition'Class; xBorder : Integer; yBorder : Integer) return TouchButton_Access is
      touchButtonInput : TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
      touchButtonResource : TouchButtonResource_Access := TouchButtonResource_Access (touchButtonResource_Param);
      rawRectangle : Rectangle_Access := Rectangle_Access (rawRectangle_Param);
      cellPosition : CellPosition_Access := CellPosition_Access (cellPosition_Param);
   begin
        return TouchButton_Package.Create (touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (touchButtonResource.RESOURCE).getInstance (0), FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (touchButtonResource.HINT).getInstance (0), rawRectangle, cellPosition, xBorder, yBorder);
   end createButton;

   procedure Initialize (This : in out TouchButton'Class; touchButtonInput_Param : access TouchButtonInput'Class; animationInterface_Param : access Animation'Class; hintAnimationInterface_Param : access Animation'Class; rawRectangle_Param : access Rectangle'Class; cellPosition_Param : access CellPosition'Class; xBorder : Integer; yBorder : Integer) is
      touchButtonInput : TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
      hintAnimationInterface : Animation_Access := Animation_Access (hintAnimationInterface_Param);
      rawRectangle : Rectangle_Access := Rectangle_Access (rawRectangle_Param);
      cellPosition : CellPosition_Access := CellPosition_Access (cellPosition_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.touchButtonInput := touchButtonInput;
        This.animationInterface := animationInterface;
        This.hintAnimationInterface := hintAnimationInterface;
        This.rawRectangle := rawRectangle;
        This.cellPositionP := cellPosition;
        This.xBorder := xBorder;
        This.yBorder := yBorder;
        This.updateRectangle;
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Created: ")).append (This.toString).toString, TouchButton_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (touchButtonInput_Param : access TouchButtonInput'Class; animationInterface_Param : access Animation'Class; hintAnimationInterface_Param : access Animation'Class; rawRectangle_Param : access Rectangle'Class; cellPosition_Param : access CellPosition'Class; xBorder : Integer; yBorder : Integer) return TouchButton_Access is
      This : constant TouchButton_Access := new TouchButton;
   begin
      TouchButton_Package.Initialize (This.all, touchButtonInput_Param, animationInterface_Param, hintAnimationInterface_Param, rawRectangle_Param, cellPosition_Param, xBorder, yBorder);
      return This;
   end Create;

   procedure paintHint (This : in out TouchButton; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.hintAnimationInterface.paintXY (graphics, This.animationX, This.hintAnimationY);
   end paintHint;

   procedure paint (This : in out TouchButton; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintXY (graphics, This.animationX, This.animationY);
   end paint;

   procedure updateRectangle (This : in out TouchButton) is
      pointFactory : PointFactory_Access;
      x : Integer;
      y : Integer;
      point : GPoint_Access;
   begin
        begin
            pointFactory := PointFactory_Package.getInstance;
            x := (This.rawRectangle.getWidth) * (This.cellPositionP.getColumn);
            y := (This.rawRectangle.getHeight) * (This.cellPositionP.getRow);
            This.rectangleP := Rectangle_Package.Create (pointFactory.createXY ((x) + (This.xBorder), (y) + (This.yBorder)), This.rawRectangle.getWidth, This.rawRectangle.getHeight);
            point := This.rectangleP.getPoint;
            This.animationX := point.getX;
            This.animationY := point.getY;
            This.hintAnimationY := (This.animationY) - (32);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, TouchButton_Access'(This'Unchecked_Access), To_Unbounded_String ("updateRectangle"), e);
                end;
        end;
   end updateRectangle;

   function getCellPosition (This : in out TouchButton) return CellPosition_Access is
   begin
        return This.cellPositionP;
   end getCellPosition;

   function getRectangle (This : in out TouchButton) return Rectangle_Access is
   begin
        return This.rectangleP;
   end getRectangle;

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
        stringBuffer.append (stringUtil.toString (This.getRectangle));
        stringBuffer.append (To_Unbounded_String (" CellPosition: "));
        stringBuffer.append (stringUtil.toString (This.cellPositionP));
        stringBuffer.append (To_Unbounded_String (" xBorder: "));
        stringBuffer.appendint (This.xBorder);
        stringBuffer.append (To_Unbounded_String (" yBorder: "));
        stringBuffer.appendint (This.yBorder);
        return stringBuffer.toString;
   end toString;

   procedure createButton (touchButtonInput_Param : access TouchButtonInput'Class; touchButtonResource_Param : access TouchButtonResource'Class; rawRectangle_Param : access Rectangle'Class; cellPosition_Param : access CellPosition'Class; xBorder : Integer; yBorder : Integer) is
      Java_Result : constant TouchButton_Access := createButton (touchButtonInput_Param, touchButtonResource_Param, rawRectangle_Param, cellPosition_Param, xBorder, yBorder);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createButton;

end org.allbinary.input.motion.button.TouchButton_Package;


