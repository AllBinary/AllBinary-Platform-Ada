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


with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package; use org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;

package body org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package is

   package FormTypeFactory_Package renames Standard.org.allbinary.graphics.form.FormTypeFactory_Package;
   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   function "=" (Left, Right : ABCustomItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   function "=" (Left, Right : ABCustomItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   function "=" (Left, Right : ABCustomItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype ItemPaintableFactory_Access is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access;
   function "=" (Left, Right : ItemPaintableFactory_Access) return Boolean renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References."=";
   subtype ItemPaintableFactory_Access_Array is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array;
   function "=" (Left, Right : ItemPaintableFactory_Access_Array) return Boolean renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References."=";
   subtype ItemPaintableFactory_Access_Array_Access is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array_Access;
   function "=" (Left, Right : ItemPaintableFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References."=";
   subtype ItemPaintableFactory_Access_Array_Access_Array is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ItemPaintableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References."=";
   subtype ItemPaintableFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemPaintableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References."=";
   procedure Initialize_Fields (This : in out PreGameScrollSelectionForm'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PreGameScrollSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory_Package.ItemPaintableFactory'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      formPaintableFactory : constant ItemPaintableFactory_Access := ItemPaintableFactory_Access (formPaintableFactory_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ScrollCurrentSelectionForm_Package.Initialize (This, title, items, formPaintableFactory, 0, 3, False, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory_Package.ItemPaintableFactory'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return PreGameScrollSelectionForm_Access is
      This : constant PreGameScrollSelectionForm_Access := new PreGameScrollSelectionForm;
   begin
      PreGameScrollSelectionForm_Package.Initialize (This.all, title, items, formPaintableFactory_Param, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out PreGameScrollSelectionForm; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        ScrollCurrentSelectionForm (This).init (rectangle, FormTypeFactory_Package.getInstance.TEMP_HORIZONTAL_FORM);
   end init;

end org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package;


