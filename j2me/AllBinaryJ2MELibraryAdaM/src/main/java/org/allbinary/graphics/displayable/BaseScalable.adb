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



package body org.allbinary.graphics.displayable.BaseScalable_Package is

   procedure Initialize_Fields (This : in out BaseScalable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseScalable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseScalable_Access is
      This : constant BaseScalable_Access := new BaseScalable;
   begin
      BaseScalable_Package.Initialize (This.all);
      return This;
   end Create;


   function getRatio (This : in out BaseScalable; ratio : Float) return Float is
   begin
        return 1.0;
   end getRatio;

   function getLeft (This : in out BaseScalable; xOffset : Integer) return Integer is
   begin
        return -(1);
   end getLeft;

   function getTop (This : in out BaseScalable; yOffset : Integer) return Integer is
   begin
        return -(1);
   end getTop;

   procedure scale (This : in out BaseScalable; ratio : Float) is
   begin
        null;
   end scale;

   procedure getRatio (This : in out BaseScalable; ratio : Float) is
      Java_Result : constant Float := BaseScalable'Class (This).getRatio (ratio => ratio);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRatio;

   procedure getLeft (This : in out BaseScalable; xOffset : Integer) is
      Java_Result : constant Integer := BaseScalable'Class (This).getLeft (xOffset => xOffset);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLeft;

   procedure getTop (This : in out BaseScalable; yOffset : Integer) is
      Java_Result : constant Integer := BaseScalable'Class (This).getTop (yOffset => yOffset);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTop;

end org.allbinary.graphics.displayable.BaseScalable_Package;


