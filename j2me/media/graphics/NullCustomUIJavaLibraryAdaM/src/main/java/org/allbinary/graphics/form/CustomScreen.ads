--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.CustomScreen_Package;
package org.allbinary.graphics.form.CustomScreen_Package_References is
   type CustomScreen_Access is access all org.allbinary.graphics.form.CustomScreen_Package.CustomScreen'Class;
   type CustomScreen_Access_Array is array (Natural range <>) of CustomScreen_Access;
   type CustomScreen_Access_Array_Access is access all CustomScreen_Access_Array;
   type CustomScreen_Access_Array_Access_Array is array (Natural range <>) of CustomScreen_Access_Array_Access;
   type CustomScreen_Access_Array_Access_Array_Access is access all CustomScreen_Access_Array_Access_Array;
   type CustomScreen_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomScreen_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomScreen_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomScreen_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomScreen_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomScreen_Access_Array_Access is (if Value /= null and then Value.all in CustomScreen_Access_Array_Object'Class then CustomScreen_Access_Array_Object'Class (Value.all).Value else null);
   type CustomScreen_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomScreen_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomScreen_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomScreen_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomScreen_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomScreen_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomScreen_Access_Array_Access_Array_Object'Class then CustomScreen_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.CustomScreen_Package_References;

with org.allbinary.graphics.form.CustomScreen_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.form.CustomDisplayable_Package; use org.allbinary.graphics.form.CustomDisplayable_Package;

package org.allbinary.graphics.form.CustomScreen_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CustomScreen_Access is org.allbinary.graphics.form.CustomScreen_Package_References.CustomScreen_Access;
   function "=" (Left, Right : CustomScreen_Access) return Boolean renames org.allbinary.graphics.form.CustomScreen_Package_References."=";
   subtype CustomScreen_Access_Array is org.allbinary.graphics.form.CustomScreen_Package_References.CustomScreen_Access_Array;
   function "=" (Left, Right : CustomScreen_Access_Array) return Boolean renames org.allbinary.graphics.form.CustomScreen_Package_References."=";
   subtype CustomScreen_Access_Array_Access is org.allbinary.graphics.form.CustomScreen_Package_References.CustomScreen_Access_Array_Access;
   function "=" (Left, Right : CustomScreen_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.CustomScreen_Package_References."=";
   function Java_Box (Value : CustomScreen_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.CustomScreen_Package_References.Java_Box;
   function Java_Unbox_CustomScreen_Access_Array (Value : access Java_Object'Class) return CustomScreen_Access_Array_Access renames org.allbinary.graphics.form.CustomScreen_Package_References.Java_Unbox_CustomScreen_Access_Array;
   subtype CustomScreen_Access_Array_Access_Array is org.allbinary.graphics.form.CustomScreen_Package_References.CustomScreen_Access_Array_Access_Array;
   function "=" (Left, Right : CustomScreen_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.CustomScreen_Package_References."=";
   subtype CustomScreen_Access_Array_Access_Array_Access is org.allbinary.graphics.form.CustomScreen_Package_References.CustomScreen_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomScreen_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.CustomScreen_Package_References."=";
   function Java_Box (Value : CustomScreen_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.CustomScreen_Package_References.Java_Box;
   function Java_Unbox_CustomScreen_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomScreen_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.CustomScreen_Package_References.Java_Unbox_CustomScreen_Access_Array_Access_Array;

   type CustomScreen is new CustomDisplayable with null record;

   procedure Initialize (This : in out CustomScreen'Class);
   function Create return CustomScreen_Access;

end org.allbinary.graphics.form.CustomScreen_Package;


