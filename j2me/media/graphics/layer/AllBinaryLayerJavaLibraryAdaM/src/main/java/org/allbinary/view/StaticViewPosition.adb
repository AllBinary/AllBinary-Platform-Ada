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


package body org.allbinary.view.StaticViewPosition_Package is

   procedure Initialize_Fields (This : in out StaticViewPosition'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StaticViewPosition'Class; x : Integer; y : Integer; z : Integer) is
   begin
        ViewPosition_Package.Initialize (This, x, y, z);
   end Initialize;

   function Create (x : Integer; y : Integer; z : Integer) return StaticViewPosition_Access is
      This : constant StaticViewPosition_Access := new StaticViewPosition;
   begin
      Initialize (This.all, x, y, z);
      return This;
   end Create;

   function getX (This : in out StaticViewPosition) return Integer is
   begin
        return This.getRawX;
   end getX;

   function getY (This : in out StaticViewPosition) return Integer is
   begin
        return This.getRawY;
   end getY;

   function getZ (This : in out StaticViewPosition) return Integer is
   begin
        return This.getRawZ;
   end getZ;

   procedure getX (This : in out StaticViewPosition) is
      Java_Result : constant Integer := StaticViewPosition'Class (This).getX;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getX;

   procedure getY (This : in out StaticViewPosition) is
      Java_Result : constant Integer := StaticViewPosition'Class (This).getY;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getY;

   procedure getZ (This : in out StaticViewPosition) is
      Java_Result : constant Integer := StaticViewPosition'Class (This).getZ;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getZ;

end org.allbinary.view.StaticViewPosition_Package;


