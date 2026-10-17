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


package body org.allbinary.graphics.form.ItemPaintable_Package is

   procedure Initialize_Fields (This : in out ItemPaintable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ItemPaintable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ItemPaintable_Access is
      This : constant ItemPaintable_Access := new ItemPaintable;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure paint (This : in out ItemPaintable; graphics : Graphics_Access; currentIndex : Integer; x : Integer; y : Integer) is
   begin
        null;
   end paint;

end org.allbinary.graphics.form.ItemPaintable_Package;


