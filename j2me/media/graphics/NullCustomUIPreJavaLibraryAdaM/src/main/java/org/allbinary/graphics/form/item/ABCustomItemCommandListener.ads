--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package;
package org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References is
   type ABCustomItemCommandListener_Access is access all org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package.ABCustomItemCommandListener'Class;
   type ABCustomItemCommandListener_Access_Array is array (Natural range <>) of ABCustomItemCommandListener_Access;
   type ABCustomItemCommandListener_Access_Array_Access is access all ABCustomItemCommandListener_Access_Array;
   type ABCustomItemCommandListener_Access_Array_Access_Array is array (Natural range <>) of ABCustomItemCommandListener_Access_Array_Access;
   type ABCustomItemCommandListener_Access_Array_Access_Array_Access is access all ABCustomItemCommandListener_Access_Array_Access_Array;
   type ABCustomItemCommandListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABCustomItemCommandListener_Access_Array_Access;
   end record;
   function Java_Box (Value : ABCustomItemCommandListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABCustomItemCommandListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABCustomItemCommandListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABCustomItemCommandListener_Access_Array_Access is (if Value /= null and then Value.all in ABCustomItemCommandListener_Access_Array_Object'Class then ABCustomItemCommandListener_Access_Array_Object'Class (Value.all).Value else null);
   type ABCustomItemCommandListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABCustomItemCommandListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABCustomItemCommandListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABCustomItemCommandListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABCustomItemCommandListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABCustomItemCommandListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABCustomItemCommandListener_Access_Array_Access_Array_Object'Class then ABCustomItemCommandListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References;

with org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ABCustomItemCommandListener is interface;
   subtype ABCustomItemCommandListener_Access is org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References.ABCustomItemCommandListener_Access;
   function "=" (Left, Right : ABCustomItemCommandListener_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References."=";
   subtype ABCustomItemCommandListener_Access_Array is org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References.ABCustomItemCommandListener_Access_Array;
   function "=" (Left, Right : ABCustomItemCommandListener_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References."=";
   subtype ABCustomItemCommandListener_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References.ABCustomItemCommandListener_Access_Array_Access;
   function "=" (Left, Right : ABCustomItemCommandListener_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References."=";
   function Java_Box (Value : ABCustomItemCommandListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References.Java_Box;
   function Java_Unbox_ABCustomItemCommandListener_Access_Array (Value : access Java_Object'Class) return ABCustomItemCommandListener_Access_Array_Access renames org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References.Java_Unbox_ABCustomItemCommandListener_Access_Array;
   subtype ABCustomItemCommandListener_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References.ABCustomItemCommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomItemCommandListener_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References."=";
   subtype ABCustomItemCommandListener_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References.ABCustomItemCommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomItemCommandListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References."=";
   function Java_Box (Value : ABCustomItemCommandListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References.Java_Box;
   function Java_Unbox_ABCustomItemCommandListener_Access_Array_Access_Array (Value : access Java_Object'Class) return ABCustomItemCommandListener_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package_References.Java_Unbox_ABCustomItemCommandListener_Access_Array_Access_Array;
   function Java_Object_Access_From_ABCustomItemCommandListener (Value : ABCustomItemCommandListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.graphics.form.item.ABCustomItemCommandListener_Package;


