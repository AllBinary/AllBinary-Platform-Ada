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
   function createButton (touchButtonInput : TouchButtonInput_Access; touchButtonResource : TouchButtonResource_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer) return TouchButton_Access is
   begin
        return TouchButton_Package.Create (touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (touchButtonResource.RESOURCE).getInstance (0), FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (touchButtonResource.HINT).getInstance (0), rawRectangle, cellPosition, xBorder, yBorder);
   end createButton;

   procedure Initialize (This : in out TouchButton'Class; touchButtonInput : TouchButtonInput_Access; animationInterface : Animation_Access; hintAnimationInterface : Animation_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer) is
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
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Created: ")).append (This.toString).toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (touchButtonInput : TouchButtonInput_Access; animationInterface : Animation_Access; hintAnimationInterface : Animation_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer) return TouchButton_Access is
      This : constant TouchButton_Access := new TouchButton;
   begin
      Initialize (This.all, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder);
      return This;
   end Create;

   procedure paintHint (This : in out TouchButton; graphics : Graphics_Access) is
   begin
        This.hintAnimationInterface.paintXY (graphics, This.animationX, This.hintAnimationY);
   end paintHint;

   procedure paint (This : in out TouchButton; graphics : Graphics_Access) is
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
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("updateRectangle"), e);
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

   procedure createButton (touchButtonInput : TouchButtonInput_Access; touchButtonResource : TouchButtonResource_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer) is
      Java_Result : constant TouchButton_Access := createButton (touchButtonInput, touchButtonResource, rawRectangle, cellPosition, xBorder, yBorder);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createButton;

   procedure getCellPosition (This : in out TouchButton) is
      Java_Result : constant CellPosition_Access := TouchButton'Class (This).getCellPosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPosition;

   procedure getRectangle (This : in out TouchButton) is
      Java_Result : constant Rectangle_Access := TouchButton'Class (This).getRectangle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRectangle;

   procedure getTouchButtonInput (This : in out TouchButton) is
      Java_Result : constant TouchButtonInput_Access := TouchButton'Class (This).getTouchButtonInput;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTouchButtonInput;

   procedure toString (This : in out TouchButton) is
      Java_Result : constant Unbounded_String := TouchButton'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.input.motion.button.TouchButton_Package;


