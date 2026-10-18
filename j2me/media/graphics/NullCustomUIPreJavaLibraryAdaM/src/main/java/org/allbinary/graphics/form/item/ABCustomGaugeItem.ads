--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.graphics.form.item.ABCustomGaugeItem_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type ABCustomGaugeItem is tagged;
   type ABCustomGaugeItem_Access is access all ABCustomGaugeItem'Class;
   type ABCustomGaugeItem_Access_Array is array (Natural range <>) of ABCustomGaugeItem_Access;
   type ABCustomGaugeItem_Access_Array_Access is access all ABCustomGaugeItem_Access_Array;
   type ABCustomGaugeItem_Access_Array_Access_Array is array (Natural range <>) of ABCustomGaugeItem_Access_Array_Access;
   type ABCustomGaugeItem_Access_Array_Access_Array_Access is access all ABCustomGaugeItem_Access_Array_Access_Array;

   type ABCustomGaugeItem is new ABCustomItem with null record;
   NULL_GAUGE_ITEM : ABCustomGaugeItem_Access;

   procedure Initialize (This : in out ABCustomGaugeItem'Class; label : Unbounded_String; maxValue : Integer; initialValue : Integer; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (label : Unbounded_String; maxValue : Integer; initialValue : Integer; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABCustomGaugeItem_Access;

end org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;


