--  Generated Code Do Not Modify

limited with org.allbinary.graphics.form.item.ABChoiceItemInterface_Package;
package org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References is
   type ABChoiceItemInterface_Access is access all org.allbinary.graphics.form.item.ABChoiceItemInterface_Package.ABChoiceItemInterface'Class;
   type ABChoiceItemInterface_Access_Array is array (Natural range <>) of ABChoiceItemInterface_Access;
   type ABChoiceItemInterface_Access_Array_Access is access all ABChoiceItemInterface_Access_Array;
   type ABChoiceItemInterface_Access_Array_Access_Array is array (Natural range <>) of ABChoiceItemInterface_Access_Array_Access;
   type ABChoiceItemInterface_Access_Array_Access_Array_Access is access all ABChoiceItemInterface_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References;

with org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.ABChoiceItemInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ABChoiceItemInterface is interface;
   subtype ABChoiceItemInterface_Access is org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References.ABChoiceItemInterface_Access;
   function "=" (Left, Right : ABChoiceItemInterface_Access) return Boolean renames org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References."=";
   subtype ABChoiceItemInterface_Access_Array is org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References.ABChoiceItemInterface_Access_Array;
   function "=" (Left, Right : ABChoiceItemInterface_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References."=";
   subtype ABChoiceItemInterface_Access_Array_Access is org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References.ABChoiceItemInterface_Access_Array_Access;
   function "=" (Left, Right : ABChoiceItemInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References."=";
   subtype ABChoiceItemInterface_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References.ABChoiceItemInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ABChoiceItemInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References."=";
   subtype ABChoiceItemInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References.ABChoiceItemInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABChoiceItemInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABChoiceItemInterface_Package_References."=";
   function Java_Object_Access_From_ABChoiceItemInterface (Value : ABChoiceItemInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.graphics.form.item.ABChoiceItemInterface_Package;


