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

   procedure Initialize (This : in out DisplayPointScalar'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DisplayPointScalar_Access is
      This : constant DisplayPointScalar_Access := new DisplayPointScalar;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return DisplayPointScalar_Access is
   begin
        return DisplayPointScalar_Package.instance;
   end getInstance;

   function process (This : in out DisplayPointScalar; point : GPoint_Access) return GPoint_Access is
   begin
        return point;
   end process;

   procedure getInstance is
      Java_Result : constant DisplayPointScalar_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure process (This : in out DisplayPointScalar; point : GPoint_Access) is
      Java_Result : constant GPoint_Access := DisplayPointScalar'Class (This).process (point);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

begin
   null;
   instance := DisplayPointScalar_Package.Create;

end org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package;


