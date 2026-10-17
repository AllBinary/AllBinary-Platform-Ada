--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Screen_Package; use javax.microedition.lcdui.Screen_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.graphics.form.item.ABCustomItem_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type ABCustomItem is tagged;
   type ABCustomItem_Access is access all ABCustomItem'Class;
   type ABCustomItem_Access_Array is array (Natural range <>) of ABCustomItem_Access;
   type ABCustomItem_Access_Array_Access is access all ABCustomItem_Access_Array;

   type ABCustomItem is new Java_Object with null record;
   NULL_CUSTOM_ITEM : Java_Object_Access;

   procedure Initialize (This : in out ABCustomItem'Class; label : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (label : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ABCustomItem_Access;
   function getNullInstance return ABCustomItem_Access;
   procedure getNullInstance;
   procedure setOwner (This : in out ABCustomItem; owner : Screen_Access);
   procedure paintXY (This : in out ABCustomItem; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure paintUnselected (This : in out ABCustomItem; graphics : Graphics_Access; x : Integer; y : Integer);
   function isFocusable (This : in out ABCustomItem) return Boolean;
   procedure isFocusable (This : in out ABCustomItem);
   function getLabel (This : in out ABCustomItem) return Unbounded_String;
   procedure getLabel (This : in out ABCustomItem);
   procedure setLabel (This : in out ABCustomItem; label : Unbounded_String);
   function getHeight (This : in out ABCustomItem) return Integer;
   procedure getHeight (This : in out ABCustomItem);
   procedure setHeight (This : in out ABCustomItem; height : Integer);
   function getValue (This : in out ABCustomItem) return Float;
   procedure getValue (This : in out ABCustomItem);
   procedure setValue (This : in out ABCustomItem; value : Float);
   function getMinimumWidth (This : in out ABCustomItem) return Integer;
   procedure getMinimumWidth (This : in out ABCustomItem);
   function getMinimumHeight (This : in out ABCustomItem) return Integer;
   procedure getMinimumHeight (This : in out ABCustomItem);
   procedure preMeasurement (This : in out ABCustomItem; graphics : Graphics_Access);

end org.allbinary.graphics.form.item.ABCustomItem_Package;


