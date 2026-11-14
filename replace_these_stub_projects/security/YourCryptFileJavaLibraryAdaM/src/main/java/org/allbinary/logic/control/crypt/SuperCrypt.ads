--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.logic.control.crypt.SuperCrypt_Package;
package org.allbinary.logic.control.crypt.SuperCrypt_Package_References is
   type SuperCrypt_Access is access all org.allbinary.logic.control.crypt.SuperCrypt_Package.SuperCrypt'Class;
   type SuperCrypt_Access_Array is array (Natural range <>) of SuperCrypt_Access;
   type SuperCrypt_Access_Array_Access is access all SuperCrypt_Access_Array;
   type SuperCrypt_Access_Array_Access_Array is array (Natural range <>) of SuperCrypt_Access_Array_Access;
   type SuperCrypt_Access_Array_Access_Array_Access is access all SuperCrypt_Access_Array_Access_Array;
   type SuperCrypt_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SuperCrypt_Access_Array_Access;
   end record;
   function Java_Box (Value : SuperCrypt_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SuperCrypt_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SuperCrypt_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SuperCrypt_Access_Array_Access is (if Value /= null and then Value.all in SuperCrypt_Access_Array_Object'Class then SuperCrypt_Access_Array_Object'Class (Value.all).Value else null);
   type SuperCrypt_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SuperCrypt_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SuperCrypt_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SuperCrypt_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SuperCrypt_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SuperCrypt_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SuperCrypt_Access_Array_Access_Array_Object'Class then SuperCrypt_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : SuperCrypt_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References.Java_Box;
   function Java_Unbox_SuperCrypt_Access_Array (Value : access Java_Object'Class) return SuperCrypt_Access_Array_Access renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References.Java_Unbox_SuperCrypt_Access_Array;
   subtype SuperCrypt_Access_Array_Access_Array is org.allbinary.logic.control.crypt.SuperCrypt_Package_References.SuperCrypt_Access_Array_Access_Array;
   function "=" (Left, Right : SuperCrypt_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References."=";
   subtype SuperCrypt_Access_Array_Access_Array_Access is org.allbinary.logic.control.crypt.SuperCrypt_Package_References.SuperCrypt_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SuperCrypt_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References."=";
   function Java_Box (Value : SuperCrypt_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References.Java_Box;
   function Java_Unbox_SuperCrypt_Access_Array_Access_Array (Value : access Java_Object'Class) return SuperCrypt_Access_Array_Access_Array_Access renames org.allbinary.logic.control.crypt.SuperCrypt_Package_References.Java_Unbox_SuperCrypt_Access_Array_Access_Array;

   type SuperCrypt is new Java_Object with null record;
   KEYMAX : Integer;

   procedure Initialize (This : in out SuperCrypt'Class; key : Integer);
   function Create (key : Integer) return SuperCrypt_Access;
   function encrypt (This : in out SuperCrypt; value : Unbounded_String) return Unbounded_String;
   procedure encrypt (This : in out SuperCrypt; value : Unbounded_String);
   function decrypt (This : in out SuperCrypt; value : Unbounded_String) return Unbounded_String;
   procedure decrypt (This : in out SuperCrypt; value : Unbounded_String);

end org.allbinary.logic.control.crypt.SuperCrypt_Package;


