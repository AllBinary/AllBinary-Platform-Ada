--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.graphics.form.ABCustomForm_Package; use org.allbinary.graphics.form.ABCustomForm_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;

package org.allbinary.graphics.form.PaintableForm_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type PaintableForm is tagged;
   type PaintableForm_Access is access all PaintableForm'Class;
   type PaintableForm_Access_Array is array (Natural range <>) of PaintableForm_Access;
   type PaintableForm_Access_Array_Access is access all PaintableForm_Access_Array;

   type PaintableForm is new ABCustomForm with record
      canvasStrings : CanvasStrings_Access;
      rectangle : Rectangle_Access;
      x : Integer;
      y : Integer;
      formType : FormType_Access;
   end record;
   NULL_PAINTABLE_FORM : Java_Object_Access;

   procedure Initialize (This : in out PaintableForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return PaintableForm_Access;
   function getNullPaintableForm return PaintableForm_Access;
   procedure init (This : in out PaintableForm; rectangle : Rectangle_Access; formType : FormType_Access);
   function getWidth (This : in out PaintableForm) return Integer;

end org.allbinary.graphics.form.PaintableForm_Package;


