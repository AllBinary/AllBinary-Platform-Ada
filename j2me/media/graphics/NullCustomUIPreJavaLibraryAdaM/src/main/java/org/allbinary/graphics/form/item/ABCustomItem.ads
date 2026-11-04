--  Generated Code Do Not Modify

limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
package org.allbinary.graphics.form.item.ABCustomItem_Package_References is
   type ABCustomItem_Access is access all org.allbinary.graphics.form.item.ABCustomItem_Package.ABCustomItem'Class;
   type ABCustomItem_Access_Array is array (Natural range <>) of ABCustomItem_Access;
   type ABCustomItem_Access_Array_Access is access all ABCustomItem_Access_Array;
   type ABCustomItem_Access_Array_Access_Array is array (Natural range <>) of ABCustomItem_Access_Array_Access;
   type ABCustomItem_Access_Array_Access_Array_Access is access all ABCustomItem_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.ABCustomItem_Package_References;

with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
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
limited with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.Screen_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.graphics.form.item.ABCustomItem_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Screen_Package renames Standard.javax.microedition.lcdui.Screen_Package;
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
   subtype Screen_Access is javax.microedition.lcdui.Screen_Package_References.Screen_Access;
   use type Screen_Access;
   subtype Screen_Access_Array is javax.microedition.lcdui.Screen_Package_References.Screen_Access_Array;
   use type Screen_Access_Array;
   subtype Screen_Access_Array_Access is javax.microedition.lcdui.Screen_Package_References.Screen_Access_Array_Access;
   use type Screen_Access_Array_Access;
   subtype Screen_Access_Array_Access_Array is javax.microedition.lcdui.Screen_Package_References.Screen_Access_Array_Access_Array;
   use type Screen_Access_Array_Access_Array;
   subtype Screen_Access_Array_Access_Array_Access is javax.microedition.lcdui.Screen_Package_References.Screen_Access_Array_Access_Array_Access;
   use type Screen_Access_Array_Access_Array_Access;
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

   type ABCustomItem is new Java_Object with null record;
   NULL_CUSTOM_ITEM : Java_Object_Access;

   procedure Initialize (This : in out ABCustomItem'Class; label : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (label : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABCustomItem_Access;
   function getNullInstance return ABCustomItem_Access;
   procedure setOwner (This : in out ABCustomItem; owner_Param : access Screen_Package.Screen'Class);
   procedure paintXY (This : in out ABCustomItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintUnselected (This : in out ABCustomItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   function isFocusable (This : in out ABCustomItem) return Boolean;
   function getLabel (This : in out ABCustomItem) return Unbounded_String;
   procedure setLabel (This : in out ABCustomItem; label : Unbounded_String);
   function getHeight (This : in out ABCustomItem) return Integer;
   procedure setHeight (This : in out ABCustomItem; height : Integer);
   function getValue (This : in out ABCustomItem) return Float;
   procedure setValue (This : in out ABCustomItem; value : Float);
   function getMinimumWidth (This : in out ABCustomItem) return Integer;
   function getMinimumHeight (This : in out ABCustomItem) return Integer;
   procedure preMeasurement (This : in out ABCustomItem; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.form.item.ABCustomItem_Package;


