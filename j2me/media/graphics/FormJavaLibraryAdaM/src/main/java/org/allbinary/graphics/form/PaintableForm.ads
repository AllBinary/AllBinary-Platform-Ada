--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.ABCustomForm_Package; use org.allbinary.graphics.form.ABCustomForm_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;

package org.allbinary.graphics.form.PaintableForm_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;

   type PaintableForm is tagged;
   type PaintableForm_Access is access all PaintableForm'Class;
   type PaintableForm_Access_Array is array (Natural range <>) of PaintableForm_Access;
   type PaintableForm_Access_Array_Access is access all PaintableForm_Access_Array;
   type PaintableForm_Access_Array_Access_Array is array (Natural range <>) of PaintableForm_Access_Array_Access;
   type PaintableForm_Access_Array_Access_Array_Access is access all PaintableForm_Access_Array_Access_Array;

   type PaintableForm is new ABCustomForm with record
      canvasStrings : CanvasStrings_Access;
      rectangle : Rectangle_Access;
      x : Integer;
      y : Integer;
      formType : FormType_Access;
   end record;
   NULL_PAINTABLE_FORM : Java_Object_Access;

   procedure Initialize (This : in out PaintableForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return PaintableForm_Access;
   function getNullPaintableForm return PaintableForm_Access;
   procedure init (This : in out PaintableForm; rectangle_Param : access Rectangle_Package.Rectangle'Class; formType_Param : access FormType_Package.FormType'Class);
   function getWidth (This : in out PaintableForm) return Integer;

end org.allbinary.graphics.form.PaintableForm_Package;


