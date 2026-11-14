--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.CustomDisplayable_Package;
package org.allbinary.graphics.form.CustomDisplayable_Package_References is
   type CustomDisplayable_Access is access all org.allbinary.graphics.form.CustomDisplayable_Package.CustomDisplayable'Class;
   type CustomDisplayable_Access_Array is array (Natural range <>) of CustomDisplayable_Access;
   type CustomDisplayable_Access_Array_Access is access all CustomDisplayable_Access_Array;
   type CustomDisplayable_Access_Array_Access_Array is array (Natural range <>) of CustomDisplayable_Access_Array_Access;
   type CustomDisplayable_Access_Array_Access_Array_Access is access all CustomDisplayable_Access_Array_Access_Array;
   type CustomDisplayable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomDisplayable_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomDisplayable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomDisplayable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomDisplayable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomDisplayable_Access_Array_Access is (if Value /= null and then Value.all in CustomDisplayable_Access_Array_Object'Class then CustomDisplayable_Access_Array_Object'Class (Value.all).Value else null);
   type CustomDisplayable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomDisplayable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomDisplayable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomDisplayable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomDisplayable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomDisplayable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomDisplayable_Access_Array_Access_Array_Object'Class then CustomDisplayable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.CustomDisplayable_Package_References;

with org.allbinary.graphics.form.CustomDisplayable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.CustomDisplayable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CustomDisplayable_Access is org.allbinary.graphics.form.CustomDisplayable_Package_References.CustomDisplayable_Access;
   function "=" (Left, Right : CustomDisplayable_Access) return Boolean renames org.allbinary.graphics.form.CustomDisplayable_Package_References."=";
   subtype CustomDisplayable_Access_Array is org.allbinary.graphics.form.CustomDisplayable_Package_References.CustomDisplayable_Access_Array;
   function "=" (Left, Right : CustomDisplayable_Access_Array) return Boolean renames org.allbinary.graphics.form.CustomDisplayable_Package_References."=";
   subtype CustomDisplayable_Access_Array_Access is org.allbinary.graphics.form.CustomDisplayable_Package_References.CustomDisplayable_Access_Array_Access;
   function "=" (Left, Right : CustomDisplayable_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.CustomDisplayable_Package_References."=";
   function Java_Box (Value : CustomDisplayable_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.CustomDisplayable_Package_References.Java_Box;
   function Java_Unbox_CustomDisplayable_Access_Array (Value : access Java_Object'Class) return CustomDisplayable_Access_Array_Access renames org.allbinary.graphics.form.CustomDisplayable_Package_References.Java_Unbox_CustomDisplayable_Access_Array;
   subtype CustomDisplayable_Access_Array_Access_Array is org.allbinary.graphics.form.CustomDisplayable_Package_References.CustomDisplayable_Access_Array_Access_Array;
   function "=" (Left, Right : CustomDisplayable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.CustomDisplayable_Package_References."=";
   subtype CustomDisplayable_Access_Array_Access_Array_Access is org.allbinary.graphics.form.CustomDisplayable_Package_References.CustomDisplayable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomDisplayable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.CustomDisplayable_Package_References."=";
   function Java_Box (Value : CustomDisplayable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.CustomDisplayable_Package_References.Java_Box;
   function Java_Unbox_CustomDisplayable_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomDisplayable_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.CustomDisplayable_Package_References.Java_Unbox_CustomDisplayable_Access_Array_Access_Array;

   type CustomDisplayable is new Java_Object with null record;

   procedure Initialize (This : in out CustomDisplayable'Class);
   function Create return CustomDisplayable_Access;
   procedure setTitle (This : in out CustomDisplayable; title : Unbounded_String);

end org.allbinary.graphics.form.CustomDisplayable_Package;


