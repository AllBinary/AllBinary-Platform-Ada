--  Generated Code Do Not Modify

limited with org.allbinary.graphics.form.item.ABStringComponent_Package;
package org.allbinary.graphics.form.item.ABStringComponent_Package_References is
   type ABStringComponent_Access is access all org.allbinary.graphics.form.item.ABStringComponent_Package.ABStringComponent'Class;
   type ABStringComponent_Access_Array is array (Natural range <>) of ABStringComponent_Access;
   type ABStringComponent_Access_Array_Access is access all ABStringComponent_Access_Array;
   type ABStringComponent_Access_Array_Access_Array is array (Natural range <>) of ABStringComponent_Access_Array_Access;
   type ABStringComponent_Access_Array_Access_Array_Access is access all ABStringComponent_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.ABStringComponent_Package_References;

with org.allbinary.graphics.form.item.ABStringComponent_Package_References;
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

package org.allbinary.graphics.form.item.ABStringComponent_Package is

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


   subtype ABStringComponent_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access;
   function "=" (Left, Right : ABStringComponent_Access) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array;
   function "=" (Left, Right : ABStringComponent_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access;
   function "=" (Left, Right : ABStringComponent_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access_Array;
   function "=" (Left, Right : ABStringComponent_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABStringComponent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";

   type ABStringComponent is new Java_Object with null record;
   NULL_STRING_COMPONENT : ABStringComponent_Access;

   procedure Initialize (This : in out ABStringComponent'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABStringComponent_Access;
   function getBackgroundBasicColor (This : in out ABStringComponent) return BasicColor_Access;
   function getForegroundBasicColor (This : in out ABStringComponent) return BasicColor_Access;
   procedure setForegroundBasicColor (This : in out ABStringComponent; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.graphics.form.item.ABStringComponent_Package;


