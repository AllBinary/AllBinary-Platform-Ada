-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package is

   procedure Initialize_Fields (This : in out DisplayPointScalar'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return DisplayPointScalar_Access is
   begin
        return DisplayPointScalar_Package.instance;
   end getInstance;

   procedure Initialize (This : in out DisplayPointScalar'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DisplayPointScalar_Access is
      This : constant DisplayPointScalar_Access := new DisplayPointScalar;
   begin
      DisplayPointScalar_Package.Initialize (This.all);
      return This;
   end Create;

   function processX (This : in out DisplayPointScalar; value : Integer) return Integer is
   begin
        return value;
   end processX;

   function processY (This : in out DisplayPointScalar; value : Integer) return Integer is
   begin
        return value;
   end processY;

   function process (This : in out DisplayPointScalar; point_Param : access GPoint'Class) return GPoint_Access is
      point : GPoint_Access := GPoint_Access (point_Param);
   begin
        return point;
   end process;

   procedure processX (This : in out DisplayPointScalar; value : Integer) is
      Java_Result : constant Integer := DisplayPointScalar'Class (This).processX (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processX;

   procedure processY (This : in out DisplayPointScalar; value : Integer) is
      Java_Result : constant Integer := DisplayPointScalar'Class (This).processY (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processY;

   procedure process (This : in out DisplayPointScalar; point_Param : access GPoint'Class) is
      Java_Result : constant GPoint_Access := DisplayPointScalar'Class (This).process (point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

begin
   null;
   instance := DisplayPointScalar_Package.Create;

end org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package;


