--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.item.ABTextItem_Package;
package org.allbinary.graphics.form.item.ABTextItem_Package_References is
   type ABTextItem_Access is access all org.allbinary.graphics.form.item.ABTextItem_Package.ABTextItem'Class;
   type ABTextItem_Access_Array is array (Natural range <>) of ABTextItem_Access;
   type ABTextItem_Access_Array_Access is access all ABTextItem_Access_Array;
   type ABTextItem_Access_Array_Access_Array is array (Natural range <>) of ABTextItem_Access_Array_Access;
   type ABTextItem_Access_Array_Access_Array_Access is access all ABTextItem_Access_Array_Access_Array;
   type ABTextItem_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABTextItem_Access_Array_Access;
   end record;
   function Java_Box (Value : ABTextItem_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABTextItem_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABTextItem_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABTextItem_Access_Array_Access is (if Value /= null and then Value.all in ABTextItem_Access_Array_Object'Class then ABTextItem_Access_Array_Object'Class (Value.all).Value else null);
   type ABTextItem_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABTextItem_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABTextItem_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABTextItem_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABTextItem_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABTextItem_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABTextItem_Access_Array_Access_Array_Object'Class then ABTextItem_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.ABTextItem_Package_References;

with org.allbinary.graphics.form.item.ABTextItem_Package_References;
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
with org.allbinary.graphics.form.item.CustomCustomItem_Package; use org.allbinary.graphics.form.item.CustomCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItemInterface_Package; use org.allbinary.graphics.form.item.ABCustomItemInterface_Package;
limited with org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package_References;

package org.allbinary.graphics.form.item.ABTextItem_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   subtype ABStringComponent_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access;
   use type ABStringComponent_Access;
   subtype ABStringComponent_Access_Array is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array;
   use type ABStringComponent_Access_Array;
   subtype ABStringComponent_Access_Array_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access;
   use type ABStringComponent_Access_Array_Access;
   subtype ABStringComponent_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access_Array;
   use type ABStringComponent_Access_Array_Access_Array;
   subtype ABStringComponent_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access_Array_Access;
   use type ABStringComponent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ABTextItem_Access is org.allbinary.graphics.form.item.ABTextItem_Package_References.ABTextItem_Access;
   function "=" (Left, Right : ABTextItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextItem_Package_References."=";
   subtype ABTextItem_Access_Array is org.allbinary.graphics.form.item.ABTextItem_Package_References.ABTextItem_Access_Array;
   function "=" (Left, Right : ABTextItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABTextItem_Package_References."=";
   subtype ABTextItem_Access_Array_Access is org.allbinary.graphics.form.item.ABTextItem_Package_References.ABTextItem_Access_Array_Access;
   function "=" (Left, Right : ABTextItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextItem_Package_References."=";
   function Java_Box (Value : ABTextItem_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABTextItem_Package_References.Java_Box;
   function Java_Unbox_ABTextItem_Access_Array (Value : access Java_Object'Class) return ABTextItem_Access_Array_Access renames org.allbinary.graphics.form.item.ABTextItem_Package_References.Java_Unbox_ABTextItem_Access_Array;
   subtype ABTextItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABTextItem_Package_References.ABTextItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABTextItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABTextItem_Package_References."=";
   subtype ABTextItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABTextItem_Package_References.ABTextItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABTextItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextItem_Package_References."=";
   function Java_Box (Value : ABTextItem_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABTextItem_Package_References.Java_Box;
   function Java_Unbox_ABTextItem_Access_Array_Access_Array (Value : access Java_Object'Class) return ABTextItem_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.ABTextItem_Package_References.Java_Unbox_ABTextItem_Access_Array_Access_Array;

   type ABTextItem is new CustomCustomItem and ABCustomItemInterface with null record;

   procedure Initialize (This : in out ABTextItem'Class; label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABTextItem_Access;
   procedure keyPressed (This : in out ABTextItem; keyCode : Integer);
   procedure paintUnselected (This : in out ABTextItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   function getLabelStringComponent (This : in out ABTextItem) return ABStringComponent_Access;
   function getMinimumWidth (This : in out ABTextItem) return Integer;
   function getMinimumHeight (This : in out ABTextItem) return Integer;
   function getLabel (This : in out ABTextItem) return Unbounded_String;
   procedure paintXY (This : in out ABTextItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.graphics.form.item.ABTextItem_Package;


