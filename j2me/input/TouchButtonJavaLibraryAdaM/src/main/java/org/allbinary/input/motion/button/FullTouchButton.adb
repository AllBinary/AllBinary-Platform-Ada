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


package body org.allbinary.input.motion.button.FullTouchButton_Package is

   procedure Initialize_Fields (This : in out FullTouchButton'Class) is
   begin
      null;
   end Initialize_Fields;


   --  throws Exception
   function createButton (touchButtonInput : TouchButtonInput_Access; touchButtonResource : TouchButtonResource_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer) return FullTouchButton_Access is
   begin
        return FullTouchButton_Package.Create (touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (touchButtonResource.RESOURCE).getInstance (0), FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (touchButtonResource.HINT).getInstance (0), rawRectangle, cellPosition, xBorder, yBorder);
   end createButton;

   procedure Initialize (This : in out FullTouchButton'Class; touchButtonInput : TouchButtonInput_Access; animationInterface : Animation_Access; hintAnimationInterface : Animation_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer) is
   begin
        TouchButton_Package.Initialize (This, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder);
   end Initialize;

   function Create (touchButtonInput : TouchButtonInput_Access; animationInterface : Animation_Access; hintAnimationInterface : Animation_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer) return FullTouchButton_Access is
      This : constant FullTouchButton_Access := new FullTouchButton;
   begin
      Initialize (This.all, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder);
      return This;
   end Create;

   procedure updateRectangle (This : in out FullTouchButton) is
      pointFactory : PointFactory_Access;
      x : Integer;
      y : Integer;
      point : GPoint_Access;
   begin
        begin
            pointFactory := PointFactory_Package.getInstance;
            x := (This.rawRectangle.getWidth) * (This.cellPositionP.getColumn);
            y := (This.rawRectangle.getHeight) * (This.cellPositionP.getRow);
            This.rectangleP := Rectangle_Package.Create (pointFactory.createXY (x, y), (This.rawRectangle.getWidth) + (((2) * (This.xBorder))), (This.rawRectangle.getHeight) + (((2) * (This.yBorder))));
            point := This.rectangleP.getPoint;
            This.animationX := (point.getX) + (This.xBorder);
            This.animationY := (point.getY) + (This.yBorder);
            This.hintAnimationY := Java_Shift_Right_Arithmetic ((This.animationY) - (This.rectangleP.getHeight), 1);
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("updateRectangle"), e);
        end;
   end updateRectangle;

   procedure createButton (touchButtonInput : TouchButtonInput_Access; touchButtonResource : TouchButtonResource_Access; rawRectangle : Rectangle_Access; cellPosition : CellPosition_Access; xBorder : Integer; yBorder : Integer) is
      Java_Result : constant FullTouchButton_Access := createButton (touchButtonInput, touchButtonResource, rawRectangle, cellPosition, xBorder, yBorder);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createButton;

end org.allbinary.input.motion.button.FullTouchButton_Package;


