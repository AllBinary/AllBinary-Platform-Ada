--  Generated Code Do Not Modify

limited with org.allbinary.logic.control.crypt.SuperCrypt_Package;
package org.allbinary.logic.control.crypt.SuperCrypt_Package_References is
   type SuperCrypt_Access is access all org.allbinary.logic.control.crypt.SuperCrypt_Package.SuperCrypt'Class;
   type SuperCrypt_Access_Array is array (Natural range <>) of SuperCrypt_Access;
   type SuperCrypt_Access_Array_Access is access all SuperCrypt_Access_Array;
   type SuperCrypt_Access_Array_Access_Array is array (Natural range <>) of SuperCrypt_Access_Array_Access;
   type SuperCrypt_Access_Array_Access_Array_Access is access all SuperCrypt_Access_Array_Access_Array;
end org.allbinary.logic.control.crypt.SuperCrypt_Package_References;

with org.allbinary.logic.control.crypt.SuperCrypt_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.control.crypt.SuperCrypt_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SuperCrypt_Access is org.allbinary.logic.control.crypt.SuperCrypt_Package_References.SuperCrypt_Access;
   function "=" (Left, Right : SuperCrypt_Access) return Boolean renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References."=";
   subtype SuperCrypt_Access_Array is org.allbinary.logic.control.crypt.SuperCrypt_Package_References.SuperCrypt_Access_Array;
   function "=" (Left, Right : SuperCrypt_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References."=";
   subtype SuperCrypt_Access_Array_Access is org.allbinary.logic.control.crypt.SuperCrypt_Package_References.SuperCrypt_Access_Array_Access;
   function "=" (Left, Right : SuperCrypt_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References."=";
   subtype SuperCrypt_Access_Array_Access_Array is org.allbinary.logic.control.crypt.SuperCrypt_Package_References.SuperCrypt_Access_Array_Access_Array;
   function "=" (Left, Right : SuperCrypt_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References."=";
   subtype SuperCrypt_Access_Array_Access_Array_Access is org.allbinary.logic.control.crypt.SuperCrypt_Package_References.SuperCrypt_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SuperCrypt_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References."=";

   type SuperCrypt is new Java_Object with null record;
   KEYMAX : Integer;

   procedure Initialize (This : in out SuperCrypt'Class; key : Integer);
   function Create (key : Integer) return SuperCrypt_Access;
   function encrypt (This : in out SuperCrypt; value : Unbounded_String) return Unbounded_String;
   procedure encrypt (This : in out SuperCrypt; value : Unbounded_String);
   function decrypt (This : in out SuperCrypt; value : Unbounded_String) return Unbounded_String;
   procedure decrypt (This : in out SuperCrypt; value : Unbounded_String);

end org.allbinary.logic.control.crypt.SuperCrypt_Package;


