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


package body org.allbinary.graphics.form.LockableFormPaintableFactory_Package is

   procedure Initialize_Fields (This : in out LockableFormPaintableFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LockableFormPaintableFactory'Class; lockedIndex : Integer) is
   begin
      ItemPaintableFactory_Package.Initialize (This);
      Initialize_Fields (This);
        This.lockedIndex := lockedIndex;
   end Initialize;

   function Create (lockedIndex : Integer) return LockableFormPaintableFactory_Access is
      This : constant LockableFormPaintableFactory_Access := new LockableFormPaintableFactory;
   begin
      Initialize (This.all, lockedIndex);
      return This;
   end Create;

   --  throws Exception
   function getInstanceItemPaintable (This : in out LockableFormPaintableFactory; paintableForm : PaintableForm_Access) return ItemPaintable_Access is
   begin
        return LockablePaintable_Package.Create (This.lockedIndex);
   end getInstanceItemPaintable;

   procedure getInstanceItemPaintable (This : in out LockableFormPaintableFactory; paintableForm : PaintableForm_Access) is
      Java_Result : constant ItemPaintable_Access := LockableFormPaintableFactory'Class (This).getInstanceItemPaintable (paintableForm);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceItemPaintable;

end org.allbinary.graphics.form.LockableFormPaintableFactory_Package;


