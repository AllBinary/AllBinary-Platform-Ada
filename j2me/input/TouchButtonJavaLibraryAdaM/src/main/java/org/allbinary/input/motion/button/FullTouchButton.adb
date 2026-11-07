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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPosition_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;
with org.allbinary.input.motion.button.TouchButtonResource_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.motion.button.FullTouchButton_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype CellPosition_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access;
   function "=" (Left, Right : CellPosition_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array;
   function "=" (Left, Right : CellPosition_Access_Array) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access;
   function "=" (Left, Right : CellPosition_Access_Array_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : CellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   function "=" (Left, Right : TouchButtonInput_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonResource_Access is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access;
   function "=" (Left, Right : TouchButtonResource_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonResource_Package_References."=";
   subtype TouchButtonResource_Access_Array is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array;
   function "=" (Left, Right : TouchButtonResource_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonResource_Package_References."=";
   subtype TouchButtonResource_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array_Access;
   function "=" (Left, Right : TouchButtonResource_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonResource_Package_References."=";
   subtype TouchButtonResource_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonResource_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonResource_Package_References."=";
   subtype TouchButtonResource_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonResource_Package_References."=";
   procedure Initialize_Fields (This : in out FullTouchButton'Class) is
   begin
      null;
   end Initialize_Fields;


   --  throws Exception
   function createButton (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; touchButtonResource_Param : access TouchButtonResource_Package.TouchButtonResource'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) return FullTouchButton_Access is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
      touchButtonResource : constant TouchButtonResource_Access := TouchButtonResource_Access (touchButtonResource_Param);
      rawRectangle : constant Rectangle_Access := Rectangle_Access (rawRectangle_Param);
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
   begin
        return FullTouchButton_Package.Create (touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (touchButtonResource.RESOURCE).getInstance (0), FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (touchButtonResource.HINT).getInstance (0), rawRectangle, cellPosition, xBorder, yBorder);
   end createButton;

   procedure Initialize (This : in out FullTouchButton'Class; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; animationInterface_Param : access Animation_Package.Animation'Class; hintAnimationInterface_Param : access Animation_Package.Animation'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      hintAnimationInterface : constant Animation_Access := Animation_Access (hintAnimationInterface_Param);
      rawRectangle : constant Rectangle_Access := Rectangle_Access (rawRectangle_Param);
      cellPosition : constant CellPosition_Access := CellPosition_Access (cellPosition_Param);
   begin
        TouchButton_Package.Initialize (This, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder);
   end Initialize;

   function Create (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; animationInterface_Param : access Animation_Package.Animation'Class; hintAnimationInterface_Param : access Animation_Package.Animation'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) return FullTouchButton_Access is
      This : constant FullTouchButton_Access := new FullTouchButton;
   begin
      FullTouchButton_Package.Initialize (This.all, touchButtonInput_Param, animationInterface_Param, hintAnimationInterface_Param, rawRectangle_Param, cellPosition_Param, xBorder, yBorder);
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
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, FullTouchButton_Access'(This'Unchecked_Access), To_Unbounded_String ("updateRectangle"), e);
                end;
        end;
   end updateRectangle;

   procedure createButton (touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; touchButtonResource_Param : access TouchButtonResource_Package.TouchButtonResource'Class; rawRectangle_Param : access Rectangle_Package.Rectangle'Class; cellPosition_Param : access CellPosition_Package.CellPosition'Class; xBorder : Integer; yBorder : Integer) is
      Java_Result : constant FullTouchButton_Access := createButton (touchButtonInput_Param => touchButtonInput_Param, touchButtonResource_Param => touchButtonResource_Param, rawRectangle_Param => rawRectangle_Param, cellPosition_Param => cellPosition_Param, xBorder => xBorder, yBorder => yBorder);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createButton;

end org.allbinary.input.motion.button.FullTouchButton_Package;


