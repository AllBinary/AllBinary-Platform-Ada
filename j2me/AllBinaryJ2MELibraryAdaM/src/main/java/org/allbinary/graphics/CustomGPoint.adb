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


package body org.allbinary.graphics.CustomGPoint_Package is

   procedure Initialize_Fields (This : in out CustomGPoint'Class) is
   begin
      null;
      This.cx := 0;
      This.cy := 0;
      This.cz := 0;
   end Initialize_Fields;


   function getInstance (point_Param : access GPoint'Class) return CustomGPoint_Access is
      point : GPoint_Access := GPoint_Access (point_Param);
   begin
        return CustomGPoint_Package.Create (point.getX, point.getY, point.getZ);
   end getInstance;

   function getInstance3 (x : Integer; y : Integer) return CustomGPoint_Access is
   begin
        return CustomGPoint_Package.Create (x, y, 3);
   end getInstance3;

   procedure Initialize (This : in out CustomGPoint'Class; x : Integer; y : Integer; z : Integer) is
   begin
        GPoint_Package.Initialize (This, x, y, z);
        Initialize_Fields (This);
   end Initialize;

   function Create (x : Integer; y : Integer; z : Integer) return CustomGPoint_Access is
      This : constant CustomGPoint_Access := new CustomGPoint;
   begin
      CustomGPoint_Package.Initialize (This.all, x, y, z);
      return This;
   end Create;

   procedure setX (This : in out CustomGPoint; x : Integer) is
   begin
        This.cx := x;
   end setX;

   function getX (This : in out CustomGPoint) return Integer is
   begin
        return This.cx;
   end getX;

   procedure setY (This : in out CustomGPoint; y : Integer) is
   begin
        This.cy := y;
   end setY;

   function getY (This : in out CustomGPoint) return Integer is
   begin
        return This.cy;
   end getY;

   procedure setZ (This : in out CustomGPoint; z : Integer) is
   begin
        This.cz := z;
   end setZ;

   function getZ (This : in out CustomGPoint) return Integer is
   begin
        return This.cz;
   end getZ;

   procedure getInstance (point_Param : access GPoint'Class) is
      Java_Result : constant CustomGPoint_Access := getInstance (point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance3 (x : Integer; y : Integer) is
      Java_Result : constant CustomGPoint_Access := getInstance3 (x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance3;

begin
   null;
   NULL_CUSTOM_POINT := CustomGPoint_Package.Create (0, 0, 0);

end org.allbinary.graphics.CustomGPoint_Package;


