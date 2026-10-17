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
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;

package org.allbinary.graphics.form.item.ABStringComponent_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;

   type ABStringComponent is tagged;
   type ABStringComponent_Access is access all ABStringComponent'Class;
   type ABStringComponent_Access_Array is array (Natural range <>) of ABStringComponent_Access;
   type ABStringComponent_Access_Array_Access is access all ABStringComponent_Access_Array;

   type ABStringComponent is new Java_Object with null record;
   NULL_STRING_COMPONENT : ABStringComponent_Access;

   procedure Initialize (This : in out ABStringComponent'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABStringComponent_Access;
   function getBackgroundBasicColor (This : in out ABStringComponent) return BasicColor_Access;
   function getForegroundBasicColor (This : in out ABStringComponent) return BasicColor_Access;
   procedure setForegroundBasicColor (This : in out ABStringComponent; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.graphics.form.item.ABStringComponent_Package;


