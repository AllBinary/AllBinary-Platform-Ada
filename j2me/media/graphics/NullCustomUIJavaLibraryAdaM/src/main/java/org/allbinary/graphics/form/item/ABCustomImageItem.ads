--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.item.ABCustomImageItem_Package;
package org.allbinary.graphics.form.item.ABCustomImageItem_Package_References is
   type ABCustomImageItem_Access is access all org.allbinary.graphics.form.item.ABCustomImageItem_Package.ABCustomImageItem'Class;
   type ABCustomImageItem_Access_Array is array (Natural range <>) of ABCustomImageItem_Access;
   type ABCustomImageItem_Access_Array_Access is access all ABCustomImageItem_Access_Array;
   type ABCustomImageItem_Access_Array_Access_Array is array (Natural range <>) of ABCustomImageItem_Access_Array_Access;
   type ABCustomImageItem_Access_Array_Access_Array_Access is access all ABCustomImageItem_Access_Array_Access_Array;
   type ABCustomImageItem_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABCustomImageItem_Access_Array_Access;
   end record;
   function Java_Box (Value : ABCustomImageItem_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABCustomImageItem_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABCustomImageItem_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABCustomImageItem_Access_Array_Access is (if Value /= null and then Value.all in ABCustomImageItem_Access_Array_Object'Class then ABCustomImageItem_Access_Array_Object'Class (Value.all).Value else null);
   type ABCustomImageItem_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABCustomImageItem_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABCustomImageItem_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABCustomImageItem_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABCustomImageItem_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABCustomImageItem_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABCustomImageItem_Access_Array_Access_Array_Object'Class then ABCustomImageItem_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.ABCustomImageItem_Package_References;

with org.allbinary.graphics.form.item.ABCustomImageItem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.graphics.form.item.ABCustomImageItem_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype ABCustomImageItem_Access is org.allbinary.graphics.form.item.ABCustomImageItem_Package_References.ABCustomImageItem_Access;
   function "=" (Left, Right : ABCustomImageItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomImageItem_Package_References."=";
   subtype ABCustomImageItem_Access_Array is org.allbinary.graphics.form.item.ABCustomImageItem_Package_References.ABCustomImageItem_Access_Array;
   function "=" (Left, Right : ABCustomImageItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomImageItem_Package_References."=";
   subtype ABCustomImageItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomImageItem_Package_References.ABCustomImageItem_Access_Array_Access;
   function "=" (Left, Right : ABCustomImageItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomImageItem_Package_References."=";
   function Java_Box (Value : ABCustomImageItem_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABCustomImageItem_Package_References.Java_Box;
   function Java_Unbox_ABCustomImageItem_Access_Array (Value : access Java_Object'Class) return ABCustomImageItem_Access_Array_Access renames org.allbinary.graphics.form.item.ABCustomImageItem_Package_References.Java_Unbox_ABCustomImageItem_Access_Array;
   subtype ABCustomImageItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomImageItem_Package_References.ABCustomImageItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomImageItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomImageItem_Package_References."=";
   subtype ABCustomImageItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomImageItem_Package_References.ABCustomImageItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomImageItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomImageItem_Package_References."=";
   function Java_Box (Value : ABCustomImageItem_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABCustomImageItem_Package_References.Java_Box;
   function Java_Unbox_ABCustomImageItem_Access_Array_Access_Array (Value : access Java_Object'Class) return ABCustomImageItem_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.ABCustomImageItem_Package_References.Java_Unbox_ABCustomImageItem_Access_Array_Access_Array;

   type ABCustomImageItem is new ABCustomItem with record
      yOffset : Integer;
   end record;

   procedure Initialize (This : in out ABCustomImageItem'Class; label : Unbounded_String; image_Param : access Image_Package.Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class; yOffset : Integer);
   function Create (label : Unbounded_String; image_Param : access Image_Package.Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class; yOffset : Integer) return ABCustomImageItem_Access;
   function getImage (This : in out ABCustomImageItem) return Image_Access;

end org.allbinary.graphics.form.item.ABCustomImageItem_Package;


