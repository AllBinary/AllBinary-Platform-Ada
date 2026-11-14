--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.ScreenInfo_Package;
package org.allbinary.graphics.form.ScreenInfo_Package_References is
   type ScreenInfo_Access is access all org.allbinary.graphics.form.ScreenInfo_Package.ScreenInfo'Class;
   type ScreenInfo_Access_Array is array (Natural range <>) of ScreenInfo_Access;
   type ScreenInfo_Access_Array_Access is access all ScreenInfo_Access_Array;
   type ScreenInfo_Access_Array_Access_Array is array (Natural range <>) of ScreenInfo_Access_Array_Access;
   type ScreenInfo_Access_Array_Access_Array_Access is access all ScreenInfo_Access_Array_Access_Array;
   type ScreenInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenInfo_Access_Array_Access is (if Value /= null and then Value.all in ScreenInfo_Access_Array_Object'Class then ScreenInfo_Access_Array_Object'Class (Value.all).Value else null);
   type ScreenInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScreenInfo_Access_Array_Access_Array_Object'Class then ScreenInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.ScreenInfo_Package_References;

with org.allbinary.graphics.form.ScreenInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.ScreenInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ScreenInfo_Access is org.allbinary.graphics.form.ScreenInfo_Package_References.ScreenInfo_Access;
   function "=" (Left, Right : ScreenInfo_Access) return Boolean renames org.allbinary.graphics.form.ScreenInfo_Package_References."=";
   subtype ScreenInfo_Access_Array is org.allbinary.graphics.form.ScreenInfo_Package_References.ScreenInfo_Access_Array;
   function "=" (Left, Right : ScreenInfo_Access_Array) return Boolean renames org.allbinary.graphics.form.ScreenInfo_Package_References."=";
   subtype ScreenInfo_Access_Array_Access is org.allbinary.graphics.form.ScreenInfo_Package_References.ScreenInfo_Access_Array_Access;
   function "=" (Left, Right : ScreenInfo_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScreenInfo_Package_References."=";
   function Java_Box (Value : ScreenInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.ScreenInfo_Package_References.Java_Box;
   function Java_Unbox_ScreenInfo_Access_Array (Value : access Java_Object'Class) return ScreenInfo_Access_Array_Access renames org.allbinary.graphics.form.ScreenInfo_Package_References.Java_Unbox_ScreenInfo_Access_Array;
   subtype ScreenInfo_Access_Array_Access_Array is org.allbinary.graphics.form.ScreenInfo_Package_References.ScreenInfo_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScreenInfo_Package_References."=";
   subtype ScreenInfo_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScreenInfo_Package_References.ScreenInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScreenInfo_Package_References."=";
   function Java_Box (Value : ScreenInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.ScreenInfo_Package_References.Java_Box;
   function Java_Unbox_ScreenInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return ScreenInfo_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.ScreenInfo_Package_References.Java_Unbox_ScreenInfo_Access_Array_Access_Array;

   type ScreenInfo is new Java_Object with record
      SMALL_WIDTH : Integer;
      SMALL_HEIGHT : Integer;
      MEDIUM_WIDTH : Integer;
      MEDIUM_HEIGHT : Integer;
   end record;
   instance : ScreenInfo_Access;

   procedure Initialize (This : in out ScreenInfo'Class);
   function Create return ScreenInfo_Access;
   function getInstance return ScreenInfo_Access;

end org.allbinary.graphics.form.ScreenInfo_Package;


