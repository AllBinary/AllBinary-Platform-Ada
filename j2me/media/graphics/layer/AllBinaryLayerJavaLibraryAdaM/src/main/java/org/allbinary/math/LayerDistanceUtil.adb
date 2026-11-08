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


with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.MathUtil_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.layer.PositionInterface_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.math.LayerDistanceUtil_Package is

   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype MathUtil_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access;
   function "=" (Left, Right : MathUtil_Access) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array;
   function "=" (Left, Right : MathUtil_Access_Array) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access;
   function "=" (Left, Right : MathUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MathUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MathUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   procedure Initialize_Fields (This : in out LayerDistanceUtil'Class) is
   begin
      null;
      This.mathUtil := MathUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out LayerDistanceUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerDistanceUtil_Access is
      This : constant LayerDistanceUtil_Access := new LayerDistanceUtil;
   begin
      LayerDistanceUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LayerDistanceUtil_Access is
   begin
        return LayerDistanceUtil_Access (LayerDistanceUtil_Package.instance);
   end getInstance;

   function getDistance (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Integer is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      layerInterface2 : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface2_Param);
      dx : Integer;
      dy : Integer;
   begin
        dx := (((layerInterface.getXP) + (layerInterface.getHalfWidth))) - (((layerInterface2.getXP) + (layerInterface2.getHalfWidth)));
        dy := (((layerInterface.getYP) + (layerInterface.getHalfHeight))) - (((layerInterface2.getYP) + (layerInterface2.getHalfHeight)));
        return This.mathUtil.sqrt ((((dx) * (dx))) + (((dy) * (dy))));
   end getDistance;

   function getDistance3D (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Integer is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      layerInterface2 : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface2_Param);
      dx : Integer;
      dy : Integer;
      dz : Integer;
   begin
        dx := (((layerInterface.getXP) + (layerInterface.getHalfWidth))) - (((layerInterface2.getXP) + (layerInterface2.getHalfWidth)));
        dy := (((layerInterface.getYP) + (layerInterface.getHalfHeight))) - (((layerInterface2.getYP) + (layerInterface2.getHalfHeight)));
        dz := (((layerInterface.getZP) + (layerInterface.getHalfDepth))) - (((layerInterface2.getZP) + (layerInterface2.getHalfDepth)));
        return This.mathUtil.sqrt (((((dx) * (dx))) + (((dy) * (dy)))) + (((dz) * (dz))));
   end getDistance3D;

   function getDistanceAt (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; point_Param : access GPoint_Package.GPoint'Class) return Integer is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      dx : Integer;
      dy : Integer;
   begin
        dx := (layerInterface.getXP) - (point.getX);
        dy := (layerInterface.getYP) - (point.getY);
        return This.mathUtil.sqrt ((((dx) * (dx))) + (((dy) * (dy))));
   end getDistanceAt;

   procedure getDistance (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Integer := LayerDistanceUtil'Class (This).getDistance (layerInterface_Param => layerInterface_Param, layerInterface2_Param => layerInterface2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDistance;

   procedure getDistance3D (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Integer := LayerDistanceUtil'Class (This).getDistance3D (layerInterface_Param => layerInterface_Param, layerInterface2_Param => layerInterface2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDistance3D;

   procedure getDistanceAt (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; point_Param : access GPoint_Package.GPoint'Class) is
      Java_Result : constant Integer := LayerDistanceUtil'Class (This).getDistanceAt (layerInterface_Param => layerInterface_Param, point_Param => point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDistanceAt;

begin
   null;
   instance := LayerDistanceUtil_Package.Create;

end org.allbinary.math.LayerDistanceUtil_Package;


