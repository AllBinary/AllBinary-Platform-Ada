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


package body org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package is

   procedure Initialize_Fields (This : in out PreGameScrollSelectionForm'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PreGameScrollSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        ScrollCurrentSelectionForm_Package.Initialize (This, title, items, formPaintableFactory, 0, 3, False, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return PreGameScrollSelectionForm_Access is
      This : constant PreGameScrollSelectionForm_Access := new PreGameScrollSelectionForm;
   begin
      Initialize (This.all, title, items, formPaintableFactory, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out PreGameScrollSelectionForm; rectangle : Rectangle_Access) is
   begin
        ScrollCurrentSelectionForm (This).init (rectangle, FormTypeFactory_Package.getInstance.TEMP_HORIZONTAL_FORM);
   end init;

end org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package;


