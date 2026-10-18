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



package body org.allbinary.graphics.form.ItemPaintableFactory_Package is

   procedure Initialize_Fields (This : in out ItemPaintableFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ItemPaintableFactory'Class) is
   begin
      ItemPaintable_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ItemPaintableFactory_Access is
      This : constant ItemPaintableFactory_Access := new ItemPaintableFactory;
   begin
      ItemPaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ItemPaintableFactory_Access is
   begin
        return ItemPaintableFactory_Package.instance;
   end getInstance;

   --  throws Exception
   function getInstanceItemPaintable (This : in out ItemPaintableFactory; paintableForm_Param : access PaintableForm_Package.PaintableForm'Class) return ItemPaintable_Access is
      paintableForm : constant PaintableForm_Access := PaintableForm_Access (paintableForm_Param);
   begin
        return ItemPaintableFactory_Package.instance;
   end getInstanceItemPaintable;

   procedure getInstanceItemPaintable (This : in out ItemPaintableFactory; paintableForm_Param : access PaintableForm_Package.PaintableForm'Class) is
      Java_Result : constant ItemPaintable_Access := ItemPaintableFactory'Class (This).getInstanceItemPaintable (paintableForm_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceItemPaintable;

begin
   null;
   instance := ItemPaintableFactory_Package.Create;

end org.allbinary.graphics.form.ItemPaintableFactory_Package;


