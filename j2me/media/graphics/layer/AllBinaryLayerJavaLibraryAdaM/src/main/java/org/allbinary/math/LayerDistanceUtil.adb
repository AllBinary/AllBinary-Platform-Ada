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


package body org.allbinary.math.LayerDistanceUtil_Package is

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
        return LayerDistanceUtil_Package.instance;
   end getInstance;

   function getDistance (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Integer is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      layerInterface2 : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface2_Param);
      dx : Integer;
      dy : Integer;
   begin
        dx := (((layerInterface.getXP) + (layerInterface.getHalfWidth))) - (((layerInterface2.getXP) + (layerInterface2.getHalfWidth)));
        dy := (((layerInterface.getYP) + (layerInterface.getHalfHeight))) - (((layerInterface2.getYP) + (layerInterface2.getHalfHeight)));
        return Integer (This.mathUtil.sqrt ((((dx) * (dx))) + (((dy) * (dy)))));
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
        return Integer (This.mathUtil.sqrt (((((dx) * (dx))) + (((dy) * (dy)))) + (((dz) * (dz)))));
   end getDistance3D;

   function getDistanceAt (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; point_Param : access GPoint_Package.GPoint'Class) return Integer is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      dx : Integer;
      dy : Integer;
   begin
        dx := (layerInterface.getXP) - (point.getX);
        dy := (layerInterface.getYP) - (point.getY);
        return Integer (This.mathUtil.sqrt ((((dx) * (dx))) + (((dy) * (dy)))));
   end getDistanceAt;

   procedure getDistance (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Integer := LayerDistanceUtil'Class (This).getDistance (layerInterface_Param, layerInterface2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDistance;

   procedure getDistance3D (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; layerInterface2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Integer := LayerDistanceUtil'Class (This).getDistance3D (layerInterface_Param, layerInterface2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDistance3D;

   procedure getDistanceAt (This : in out LayerDistanceUtil; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; point_Param : access GPoint_Package.GPoint'Class) is
      Java_Result : constant Integer := LayerDistanceUtil'Class (This).getDistanceAt (layerInterface_Param, point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDistanceAt;

begin
   null;
   instance := LayerDistanceUtil_Package.Create;

end org.allbinary.math.LayerDistanceUtil_Package;


