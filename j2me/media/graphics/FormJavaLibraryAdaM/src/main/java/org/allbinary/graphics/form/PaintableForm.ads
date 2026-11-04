--  Generated Code Do Not Modify

limited with org.allbinary.graphics.form.PaintableForm_Package;
package org.allbinary.graphics.form.PaintableForm_Package_References is
   type PaintableForm_Access is access all org.allbinary.graphics.form.PaintableForm_Package.PaintableForm'Class;
   type PaintableForm_Access_Array is array (Natural range <>) of PaintableForm_Access;
   type PaintableForm_Access_Array_Access is access all PaintableForm_Access_Array;
   type PaintableForm_Access_Array_Access_Array is array (Natural range <>) of PaintableForm_Access_Array_Access;
   type PaintableForm_Access_Array_Access_Array_Access is access all PaintableForm_Access_Array_Access_Array;
end org.allbinary.graphics.form.PaintableForm_Package_References;

with org.allbinary.graphics.form.PaintableForm_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package_References;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
with org.allbinary.graphics.form.ABCustomForm_Package; use org.allbinary.graphics.form.ABCustomForm_Package;
limited with org.allbinary.graphics.form.FormType_Package;
with org.allbinary.graphics.form.FormType_Package_References;

package org.allbinary.graphics.form.PaintableForm_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype CanvasStrings_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access;
   use type CanvasStrings_Access;
   subtype CanvasStrings_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array;
   use type CanvasStrings_Access_Array;
   subtype CanvasStrings_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access;
   use type CanvasStrings_Access_Array_Access;
   subtype CanvasStrings_Access_Array_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array;
   use type CanvasStrings_Access_Array_Access_Array;
   subtype CanvasStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array_Access;
   use type CanvasStrings_Access_Array_Access_Array_Access;
   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   use type ABCustomItem_Access;
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   use type ABCustomItem_Access_Array;
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access;
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   use type ABCustomItem_Access_Array_Access_Array;
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access_Array_Access;
   subtype FormType_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access;
   use type FormType_Access;
   subtype FormType_Access_Array is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array;
   use type FormType_Access_Array;
   subtype FormType_Access_Array_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access;
   use type FormType_Access_Array_Access;
   subtype FormType_Access_Array_Access_Array is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access_Array;
   use type FormType_Access_Array_Access_Array;
   subtype FormType_Access_Array_Access_Array_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access_Array_Access;
   use type FormType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaintableForm_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access;
   function "=" (Left, Right : PaintableForm_Access) return Boolean renames org.allbinary.graphics.form.PaintableForm_Package_References."=";
   subtype PaintableForm_Access_Array is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array;
   function "=" (Left, Right : PaintableForm_Access_Array) return Boolean renames org.allbinary.graphics.form.PaintableForm_Package_References."=";
   subtype PaintableForm_Access_Array_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access;
   function "=" (Left, Right : PaintableForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.PaintableForm_Package_References."=";
   subtype PaintableForm_Access_Array_Access_Array is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access_Array;
   function "=" (Left, Right : PaintableForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.PaintableForm_Package_References."=";
   subtype PaintableForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaintableForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.PaintableForm_Package_References."=";

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


