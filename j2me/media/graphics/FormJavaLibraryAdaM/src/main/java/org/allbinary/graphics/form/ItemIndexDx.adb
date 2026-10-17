-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.graphics.form.ItemIndexDx_Package is

   procedure Initialize_Fields (This : in out ItemIndexDx'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ItemIndexDx'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ItemIndexDx_Access is
      This : constant ItemIndexDx_Access := new ItemIndexDx;
   begin
      ItemIndexDx_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ItemIndexDx_Access is
   begin
        return ItemIndexDx_Package.instance;
   end getInstance;

   --  throws Exception
   function getDx (This : in out ItemIndexDx; index : Integer; item_Param : access ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      item : ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        return 0;
   end getDx;

   procedure getDx (This : in out ItemIndexDx; index : Integer; item_Param : access ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ItemIndexDx'Class (This).getDx (index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

begin
   null;
   instance := ItemIndexDx_Package.Create;

end org.allbinary.graphics.form.ItemIndexDx_Package;


