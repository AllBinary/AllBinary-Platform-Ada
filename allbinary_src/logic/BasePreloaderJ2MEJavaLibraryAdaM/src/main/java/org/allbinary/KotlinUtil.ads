--  Generated Code Do Not Modify

limited with org.allbinary.KotlinUtil_Package;
package org.allbinary.KotlinUtil_Package_References is
   type KotlinUtil_Access is access all org.allbinary.KotlinUtil_Package.KotlinUtil'Class;
   type KotlinUtil_Access_Array is array (Natural range <>) of KotlinUtil_Access;
   type KotlinUtil_Access_Array_Access is access all KotlinUtil_Access_Array;
   type KotlinUtil_Access_Array_Access_Array is array (Natural range <>) of KotlinUtil_Access_Array_Access;
   type KotlinUtil_Access_Array_Access_Array_Access is access all KotlinUtil_Access_Array_Access_Array;
end org.allbinary.KotlinUtil_Package_References;

with org.allbinary.KotlinUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.KotlinUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype KotlinUtil_Access is org.allbinary.KotlinUtil_Package_References.KotlinUtil_Access;
   function "=" (Left, Right : KotlinUtil_Access) return Boolean renames org.allbinary.KotlinUtil_Package_References."=";
   subtype KotlinUtil_Access_Array is org.allbinary.KotlinUtil_Package_References.KotlinUtil_Access_Array;
   function "=" (Left, Right : KotlinUtil_Access_Array) return Boolean renames org.allbinary.KotlinUtil_Package_References."=";
   subtype KotlinUtil_Access_Array_Access is org.allbinary.KotlinUtil_Package_References.KotlinUtil_Access_Array_Access;
   function "=" (Left, Right : KotlinUtil_Access_Array_Access) return Boolean renames org.allbinary.KotlinUtil_Package_References."=";
   subtype KotlinUtil_Access_Array_Access_Array is org.allbinary.KotlinUtil_Package_References.KotlinUtil_Access_Array_Access_Array;
   function "=" (Left, Right : KotlinUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.KotlinUtil_Package_References."=";
   subtype KotlinUtil_Access_Array_Access_Array_Access is org.allbinary.KotlinUtil_Package_References.KotlinUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KotlinUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.KotlinUtil_Package_References."=";

   type KotlinUtil is new Java_Object with null record;

   procedure Initialize (This : in out KotlinUtil'Class);
   function Create return KotlinUtil_Access;
   function isKotlin return Boolean;
   function getShortName return Unbounded_String;

end org.allbinary.KotlinUtil_Package;


