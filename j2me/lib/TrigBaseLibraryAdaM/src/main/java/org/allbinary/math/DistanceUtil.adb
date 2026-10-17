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


package body org.allbinary.math.DistanceUtil_Package is

   procedure Initialize_Fields (This : in out DistanceUtil'Class) is
   begin
      null;
      This.mathUtil := MathUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out DistanceUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DistanceUtil_Access is
      This : constant DistanceUtil_Access := new DistanceUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return DistanceUtil_Access is
   begin
        return DistanceUtil_Package.instance;
   end getInstance;

   function getDistance (This : in out DistanceUtil; x1 : Integer; y1 : Integer; x2 : Integer; y2 : Integer) return Integer is
      dx : Integer;
      dy : Integer;
   begin
        dx := (x1) - (x2);
        dy := (y1) - (y2);
        return Integer (This.mathUtil.sqrt ((((dx) * (dx))) + (((dy) * (dy)))));
   end getDistance;

   procedure getInstance is
      Java_Result : constant DistanceUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getDistance (This : in out DistanceUtil; x1 : Integer; y1 : Integer; x2 : Integer; y2 : Integer) is
      Java_Result : constant Integer := DistanceUtil'Class (This).getDistance (x1, y1, x2, y2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDistance;

begin
   null;
   instance := DistanceUtil_Package.Create;

end org.allbinary.math.DistanceUtil_Package;


