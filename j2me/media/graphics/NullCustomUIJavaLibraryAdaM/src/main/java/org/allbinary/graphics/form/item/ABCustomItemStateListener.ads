--  Generated Code Do Not Modify

limited with org.allbinary.graphics.form.item.ABCustomItemStateListener_Package;
package org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References is
   type ABCustomItemStateListener_Access is access all org.allbinary.graphics.form.item.ABCustomItemStateListener_Package.ABCustomItemStateListener'Class;
   type ABCustomItemStateListener_Access_Array is array (Natural range <>) of ABCustomItemStateListener_Access;
   type ABCustomItemStateListener_Access_Array_Access is access all ABCustomItemStateListener_Access_Array;
   type ABCustomItemStateListener_Access_Array_Access_Array is array (Natural range <>) of ABCustomItemStateListener_Access_Array_Access;
   type ABCustomItemStateListener_Access_Array_Access_Array_Access is access all ABCustomItemStateListener_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References;

with org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.ABCustomItemStateListener_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ABCustomItemStateListener is interface;
   subtype ABCustomItemStateListener_Access is org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References.ABCustomItemStateListener_Access;
   function "=" (Left, Right : ABCustomItemStateListener_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References."=";
   subtype ABCustomItemStateListener_Access_Array is org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References.ABCustomItemStateListener_Access_Array;
   function "=" (Left, Right : ABCustomItemStateListener_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References."=";
   subtype ABCustomItemStateListener_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References.ABCustomItemStateListener_Access_Array_Access;
   function "=" (Left, Right : ABCustomItemStateListener_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References."=";
   subtype ABCustomItemStateListener_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References.ABCustomItemStateListener_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomItemStateListener_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References."=";
   subtype ABCustomItemStateListener_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References.ABCustomItemStateListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomItemStateListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemStateListener_Package_References."=";
   function Java_Object_Access_From_ABCustomItemStateListener (Value : ABCustomItemStateListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.graphics.form.item.ABCustomItemStateListener_Package;


