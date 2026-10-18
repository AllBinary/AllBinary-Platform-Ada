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


with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;

package body org.allbinary.game.layer.GameLayerUtil_Package is

   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   procedure Initialize_Fields (This : in out GameLayerUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameLayerUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameLayerUtil_Access is
      This : constant GameLayerUtil_Access := new GameLayerUtil;
   begin
      GameLayerUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isOnScreen (layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      displayInfo : DisplayInfoSingleton_Access;
      viewPosition : ViewPositionBase_Access;
   begin
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        viewPosition := layer.getViewPosition;
        return GameLayerUtil_Package.isInside (viewPosition.getX, viewPosition.getY, viewPosition.getX2, viewPosition.getY2, 0, 0, displayInfo.getLastWidth, displayInfo.getLastHeight);
   end isOnScreen;

   function isInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer) return Boolean is
   begin
        if ((((rectX1) > (rect2X1)) and then ((rectX2) < (rect2X2))) and then ((rectY1) > (rect2Y1))) and then ((rectY2) < (rect2Y2)) then
            return True;
        else
            return False;
        end if;
   end isInside;

   procedure isOnScreen (layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := isOnScreen (layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOnScreen;

   procedure isInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; rect2X1 : Integer; rect2Y1 : Integer; rect2X2 : Integer; rect2Y2 : Integer) is
      Java_Result : constant Boolean := isInside (rectX1 => rectX1, rectY1 => rectY1, rectX2 => rectX2, rectY2 => rectY2, rect2X1 => rect2X1, rect2Y1 => rect2Y1, rect2X2 => rect2X2, rect2Y2 => rect2Y2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInside;

end org.allbinary.game.layer.GameLayerUtil_Package;


