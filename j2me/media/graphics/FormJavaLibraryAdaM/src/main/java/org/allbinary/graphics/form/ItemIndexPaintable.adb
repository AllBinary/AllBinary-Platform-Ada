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


package body org.allbinary.graphics.form.ItemIndexPaintable_Package is

   procedure Initialize_Fields (This : in out ItemIndexPaintable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ItemIndexPaintable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ItemIndexPaintable_Access is
      This : constant ItemIndexPaintable_Access := new ItemIndexPaintable;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ItemIndexPaintable_Access is
   begin
        return ItemIndexPaintable_Package.instance;
   end getInstance;

   --  throws Exception
   function paint (This : in out ItemIndexPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
        return 0;
   end paint;

   procedure getInstance is
      Java_Result : constant ItemIndexPaintable_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure paint (This : in out ItemIndexPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ItemIndexPaintable'Class (This).paint (graphics, index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paint;

begin
   null;
   instance := ItemIndexPaintable_Package.Create;

end org.allbinary.graphics.form.ItemIndexPaintable_Package;


