--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Screen_Package; use javax.microedition.lcdui.Screen_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.graphics.form.item.ABCustomItem_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Screen_Package renames Standard.javax.microedition.lcdui.Screen_Package;
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


