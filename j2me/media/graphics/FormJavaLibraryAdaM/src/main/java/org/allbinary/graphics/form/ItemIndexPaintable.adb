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
      ItemIndexPaintable_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ItemIndexPaintable_Access is
   begin
        return ItemIndexPaintable_Package.instance;
   end getInstance;

   --  throws Exception
   function paint (This : in out ItemIndexPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        return 0;
   end paint;

   procedure paint (This : in out ItemIndexPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ItemIndexPaintable'Class (This).paint (graphics_Param, index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paint;

begin
   null;
   instance := ItemIndexPaintable_Package.Create;

end org.allbinary.graphics.form.ItemIndexPaintable_Package;


