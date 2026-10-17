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


package body org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package is

   procedure Initialize_Fields (This : in out PreGameLockableFormPaintableFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PreGameLockableFormPaintableFactory'Class; lockedIndex : Integer) is
   begin
      ItemPaintableFactory_Package.Initialize (This);
      Initialize_Fields (This);
        This.lockedIndex := lockedIndex;
   end Initialize;

   function Create (lockedIndex : Integer) return PreGameLockableFormPaintableFactory_Access is
      This : constant PreGameLockableFormPaintableFactory_Access := new PreGameLockableFormPaintableFactory;
   begin
      PreGameLockableFormPaintableFactory_Package.Initialize (This.all, lockedIndex);
      return This;
   end Create;

   --  throws Exception
   function getInstanceItemPaintable (This : in out PreGameLockableFormPaintableFactory; paintableForm : PaintableForm_Access) return ItemPaintable_Access is
   begin
        return PreGameLockablePaintable_Package.Create (ScrollCurrentSelectionForm_Access (paintableForm), This.lockedIndex);
   end getInstanceItemPaintable;

   procedure getInstanceItemPaintable (This : in out PreGameLockableFormPaintableFactory; paintableForm : PaintableForm_Access) is
      Java_Result : constant ItemPaintable_Access := PreGameLockableFormPaintableFactory'Class (This).getInstanceItemPaintable (paintableForm);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceItemPaintable;

end org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package;


