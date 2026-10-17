--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;
with org.allbinary.graphics.form.ItemIndexPaintable_Package; use org.allbinary.graphics.form.ItemIndexPaintable_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;

package org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type MultipleScrollSelectionHorizontalForm is tagged;
   type MultipleScrollSelectionHorizontalForm_Access is access all MultipleScrollSelectionHorizontalForm'Class;
   type MultipleScrollSelectionHorizontalForm_Access_Array is array (Natural range <>) of MultipleScrollSelectionHorizontalForm_Access;
   type MultipleScrollSelectionHorizontalForm_Access_Array_Access is access all MultipleScrollSelectionHorizontalForm_Access_Array;

   type MultipleScrollSelectionHorizontalForm is new ScrollSelectionForm and UpdateMyFontInterface with record
      rectPaintable : Paintable_Access;
      multipleScrollSelectionHorizontalFormTypeItemIndexPaintable : ItemIndexPaintable_Access;
      backgroundColor : Integer;
      myFontProcessor : MyFontProcessor_Access;
      logged : Boolean;
      fontHeight : Integer;
   end record;

   procedure Initialize (This : in out MultipleScrollSelectionHorizontalForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return MultipleScrollSelectionHorizontalForm_Access;
   function createForm (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle : Rectangle_Access; formType : FormType_Access; border : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ScrollSelectionForm_Access;
   procedure createForm (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle : Rectangle_Access; formType : FormType_Access; border : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   procedure fillRect (This : in out MultipleScrollSelectionHorizontalForm; graphics : Graphics_Access);
   procedure init (This : in out MultipleScrollSelectionHorizontalForm; rectangle : Rectangle_Access; formType : FormType_Access);
   procedure updateMeasurement (This : in out MultipleScrollSelectionHorizontalForm; graphics : Graphics_Access);
   function paintHorizontal (This : in out MultipleScrollSelectionHorizontalForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx_Param : Integer; dy : Integer) return Integer;
   procedure paintHorizontal (This : in out MultipleScrollSelectionHorizontalForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx_Param : Integer; dy : Integer);
   function paintVertical (This : in out MultipleScrollSelectionHorizontalForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure paintVertical (This : in out MultipleScrollSelectionHorizontalForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);
   function getStartIndex (This : in out MultipleScrollSelectionHorizontalForm) return Integer;
   procedure paint (This : in out MultipleScrollSelectionHorizontalForm; graphics : Graphics_Access);

end org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;
with org.allbinary.graphics.form.ItemIndexPaintable_Package; use org.allbinary.graphics.form.ItemIndexPaintable_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;

package org.allbinary.graphics.form.MultipleScrollSelectionFormHorizontalPaintable_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type MultipleScrollSelectionFormHorizontalPaintable is tagged;
   type MultipleScrollSelectionFormHorizontalPaintable_Access is access all MultipleScrollSelectionFormHorizontalPaintable'Class;
   type MultipleScrollSelectionFormHorizontalPaintable_Access_Array is array (Natural range <>) of MultipleScrollSelectionFormHorizontalPaintable_Access;
   type MultipleScrollSelectionFormHorizontalPaintable_Access_Array_Access is access all MultipleScrollSelectionFormHorizontalPaintable_Access_Array;

   type MultipleScrollSelectionFormHorizontalPaintable is new ItemIndexPaintable with record
      multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm_Access;
   end record;

   procedure Initialize (This : in out MultipleScrollSelectionFormHorizontalPaintable'Class; multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm_Access);
   function Create (multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm_Access) return MultipleScrollSelectionFormHorizontalPaintable_Access;
   function paint (This : in out MultipleScrollSelectionFormHorizontalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure paint (This : in out MultipleScrollSelectionFormHorizontalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.MultipleScrollSelectionFormHorizontalPaintable_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;
with org.allbinary.graphics.form.ItemIndexPaintable_Package; use org.allbinary.graphics.form.ItemIndexPaintable_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;

package org.allbinary.graphics.form.MultipleScrollSelectionFormVerticalPaintable_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type MultipleScrollSelectionFormVerticalPaintable is tagged;
   type MultipleScrollSelectionFormVerticalPaintable_Access is access all MultipleScrollSelectionFormVerticalPaintable'Class;
   type MultipleScrollSelectionFormVerticalPaintable_Access_Array is array (Natural range <>) of MultipleScrollSelectionFormVerticalPaintable_Access;
   type MultipleScrollSelectionFormVerticalPaintable_Access_Array_Access is access all MultipleScrollSelectionFormVerticalPaintable_Access_Array;

   type MultipleScrollSelectionFormVerticalPaintable is new ItemIndexPaintable with record
      multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm_Access;
   end record;

   procedure Initialize (This : in out MultipleScrollSelectionFormVerticalPaintable'Class; multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm_Access);
   function Create (multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm_Access) return MultipleScrollSelectionFormVerticalPaintable_Access;
   function paint (This : in out MultipleScrollSelectionFormVerticalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure paint (This : in out MultipleScrollSelectionFormVerticalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.MultipleScrollSelectionFormVerticalPaintable_Package;


