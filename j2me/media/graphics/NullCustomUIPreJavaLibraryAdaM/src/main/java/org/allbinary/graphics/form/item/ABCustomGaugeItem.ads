--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
package org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References is
   type ABCustomGaugeItem_Access is access all org.allbinary.graphics.form.item.ABCustomGaugeItem_Package.ABCustomGaugeItem'Class;
   type ABCustomGaugeItem_Access_Array is array (Natural range <>) of ABCustomGaugeItem_Access;
   type ABCustomGaugeItem_Access_Array_Access is access all ABCustomGaugeItem_Access_Array;
   type ABCustomGaugeItem_Access_Array_Access_Array is array (Natural range <>) of ABCustomGaugeItem_Access_Array_Access;
   type ABCustomGaugeItem_Access_Array_Access_Array_Access is access all ABCustomGaugeItem_Access_Array_Access_Array;
   type ABCustomGaugeItem_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABCustomGaugeItem_Access_Array_Access;
   end record;
   function Java_Box (Value : ABCustomGaugeItem_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABCustomGaugeItem_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABCustomGaugeItem_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABCustomGaugeItem_Access_Array_Access is (if Value /= null and then Value.all in ABCustomGaugeItem_Access_Array_Object'Class then ABCustomGaugeItem_Access_Array_Object'Class (Value.all).Value else null);
   type ABCustomGaugeItem_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABCustomGaugeItem_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABCustomGaugeItem_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABCustomGaugeItem_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABCustomGaugeItem_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABCustomGaugeItem_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABCustomGaugeItem_Access_Array_Access_Array_Object'Class then ABCustomGaugeItem_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References;

with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.graphics.form.item.ABCustomGaugeItem_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
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


   subtype ABCustomGaugeItem_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access;
   function "=" (Left, Right : ABCustomGaugeItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   function Java_Box (Value : ABCustomGaugeItem_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.Java_Box;
   function Java_Unbox_ABCustomGaugeItem_Access_Array (Value : access Java_Object'Class) return ABCustomGaugeItem_Access_Array_Access renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.Java_Unbox_ABCustomGaugeItem_Access_Array;
   subtype ABCustomGaugeItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   function Java_Box (Value : ABCustomGaugeItem_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.Java_Box;
   function Java_Unbox_ABCustomGaugeItem_Access_Array_Access_Array (Value : access Java_Object'Class) return ABCustomGaugeItem_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.Java_Unbox_ABCustomGaugeItem_Access_Array_Access_Array;

   type ABCustomGaugeItem is new ABCustomItem with null record;
   NULL_GAUGE_ITEM : ABCustomGaugeItem_Access;

   procedure Initialize (This : in out ABCustomGaugeItem'Class; label : Unbounded_String; maxValue : Integer; initialValue : Integer; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (label : Unbounded_String; maxValue : Integer; initialValue : Integer; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABCustomGaugeItem_Access;

end org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;


