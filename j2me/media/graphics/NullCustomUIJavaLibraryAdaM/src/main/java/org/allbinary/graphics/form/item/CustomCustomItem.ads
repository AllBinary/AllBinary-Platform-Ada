--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.item.CustomCustomItem_Package;
package org.allbinary.graphics.form.item.CustomCustomItem_Package_References is
   type CustomCustomItem_Access is access all org.allbinary.graphics.form.item.CustomCustomItem_Package.CustomCustomItem'Class;
   type CustomCustomItem_Access_Array is array (Natural range <>) of CustomCustomItem_Access;
   type CustomCustomItem_Access_Array_Access is access all CustomCustomItem_Access_Array;
   type CustomCustomItem_Access_Array_Access_Array is array (Natural range <>) of CustomCustomItem_Access_Array_Access;
   type CustomCustomItem_Access_Array_Access_Array_Access is access all CustomCustomItem_Access_Array_Access_Array;
   type CustomCustomItem_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomCustomItem_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomCustomItem_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomCustomItem_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomCustomItem_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomCustomItem_Access_Array_Access is (if Value /= null and then Value.all in CustomCustomItem_Access_Array_Object'Class then CustomCustomItem_Access_Array_Object'Class (Value.all).Value else null);
   type CustomCustomItem_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomCustomItem_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomCustomItem_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomCustomItem_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomCustomItem_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomCustomItem_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomCustomItem_Access_Array_Access_Array_Object'Class then CustomCustomItem_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.CustomCustomItem_Package_References;

with org.allbinary.graphics.form.item.CustomCustomItem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.graphics.form.item.CustomCustomItem_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
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
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CustomCustomItem_Access is org.allbinary.graphics.form.item.CustomCustomItem_Package_References.CustomCustomItem_Access;
   function "=" (Left, Right : CustomCustomItem_Access) return Boolean renames org.allbinary.graphics.form.item.CustomCustomItem_Package_References."=";
   subtype CustomCustomItem_Access_Array is org.allbinary.graphics.form.item.CustomCustomItem_Package_References.CustomCustomItem_Access_Array;
   function "=" (Left, Right : CustomCustomItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CustomCustomItem_Package_References."=";
   subtype CustomCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.CustomCustomItem_Package_References.CustomCustomItem_Access_Array_Access;
   function "=" (Left, Right : CustomCustomItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CustomCustomItem_Package_References."=";
   function Java_Box (Value : CustomCustomItem_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.CustomCustomItem_Package_References.Java_Box;
   function Java_Unbox_CustomCustomItem_Access_Array (Value : access Java_Object'Class) return CustomCustomItem_Access_Array_Access renames org.allbinary.graphics.form.item.CustomCustomItem_Package_References.Java_Unbox_CustomCustomItem_Access_Array;
   subtype CustomCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.CustomCustomItem_Package_References.CustomCustomItem_Access_Array_Access_Array;
   function "=" (Left, Right : CustomCustomItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CustomCustomItem_Package_References."=";
   subtype CustomCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.CustomCustomItem_Package_References.CustomCustomItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomCustomItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CustomCustomItem_Package_References."=";
   function Java_Box (Value : CustomCustomItem_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.CustomCustomItem_Package_References.Java_Box;
   function Java_Unbox_CustomCustomItem_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomCustomItem_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.CustomCustomItem_Package_References.Java_Unbox_CustomCustomItem_Access_Array_Access_Array;

   type CustomCustomItem is new ABCustomItem and UpdateMyFontInterface with record
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
   end record;

   procedure Initialize (This : in out CustomCustomItem'Class; label : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (label : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CustomCustomItem_Access;
   procedure updateMeasurement (This : in out CustomCustomItem; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.form.item.CustomCustomItem_Package;


