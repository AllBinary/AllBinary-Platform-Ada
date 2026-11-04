--  Generated Code Do Not Modify

limited with org.allbinary.graphics.form.item.ABImageStringItem_Package;
package org.allbinary.graphics.form.item.ABImageStringItem_Package_References is
   type ABImageStringItem_Access is access all org.allbinary.graphics.form.item.ABImageStringItem_Package.ABImageStringItem'Class;
   type ABImageStringItem_Access_Array is array (Natural range <>) of ABImageStringItem_Access;
   type ABImageStringItem_Access_Array_Access is access all ABImageStringItem_Access_Array;
   type ABImageStringItem_Access_Array_Access_Array is array (Natural range <>) of ABImageStringItem_Access_Array_Access;
   type ABImageStringItem_Access_Array_Access_Array_Access is access all ABImageStringItem_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.ABImageStringItem_Package_References;

with org.allbinary.graphics.form.item.ABImageStringItem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.ABImageStringItem_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ABImageStringItem_Access is org.allbinary.graphics.form.item.ABImageStringItem_Package_References.ABImageStringItem_Access;
   function "=" (Left, Right : ABImageStringItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABImageStringItem_Package_References."=";
   subtype ABImageStringItem_Access_Array is org.allbinary.graphics.form.item.ABImageStringItem_Package_References.ABImageStringItem_Access_Array;
   function "=" (Left, Right : ABImageStringItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABImageStringItem_Package_References."=";
   subtype ABImageStringItem_Access_Array_Access is org.allbinary.graphics.form.item.ABImageStringItem_Package_References.ABImageStringItem_Access_Array_Access;
   function "=" (Left, Right : ABImageStringItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABImageStringItem_Package_References."=";
   subtype ABImageStringItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABImageStringItem_Package_References.ABImageStringItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABImageStringItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABImageStringItem_Package_References."=";
   subtype ABImageStringItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABImageStringItem_Package_References.ABImageStringItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABImageStringItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABImageStringItem_Package_References."=";

   type ABImageStringItem is new Java_Object with null record;

   procedure Initialize (This : in out ABImageStringItem'Class);
   function Create return ABImageStringItem_Access;

end org.allbinary.graphics.form.item.ABImageStringItem_Package;


