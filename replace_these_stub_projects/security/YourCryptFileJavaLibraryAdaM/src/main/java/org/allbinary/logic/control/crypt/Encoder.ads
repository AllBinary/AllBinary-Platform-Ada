--  Generated Code Do Not Modify

limited with org.allbinary.logic.control.crypt.Encoder_Package;
package org.allbinary.logic.control.crypt.Encoder_Package_References is
   type Encoder_Access is access all org.allbinary.logic.control.crypt.Encoder_Package.Encoder'Class;
   type Encoder_Access_Array is array (Natural range <>) of Encoder_Access;
   type Encoder_Access_Array_Access is access all Encoder_Access_Array;
   type Encoder_Access_Array_Access_Array is array (Natural range <>) of Encoder_Access_Array_Access;
   type Encoder_Access_Array_Access_Array_Access is access all Encoder_Access_Array_Access_Array;
end org.allbinary.logic.control.crypt.Encoder_Package_References;

with org.allbinary.logic.control.crypt.Encoder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.control.crypt.Encoder_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Encoder_Access is org.allbinary.logic.control.crypt.Encoder_Package_References.Encoder_Access;
   function "=" (Left, Right : Encoder_Access) return Boolean renames org.allbinary.logic.control.crypt.Encoder_Package_References."=";
   subtype Encoder_Access_Array is org.allbinary.logic.control.crypt.Encoder_Package_References.Encoder_Access_Array;
   function "=" (Left, Right : Encoder_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.Encoder_Package_References."=";
   subtype Encoder_Access_Array_Access is org.allbinary.logic.control.crypt.Encoder_Package_References.Encoder_Access_Array_Access;
   function "=" (Left, Right : Encoder_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.Encoder_Package_References."=";
   subtype Encoder_Access_Array_Access_Array is org.allbinary.logic.control.crypt.Encoder_Package_References.Encoder_Access_Array_Access_Array;
   function "=" (Left, Right : Encoder_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.Encoder_Package_References."=";
   subtype Encoder_Access_Array_Access_Array_Access is org.allbinary.logic.control.crypt.Encoder_Package_References.Encoder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Encoder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.Encoder_Package_References."=";

   type Encoder is new Java_Object with null record;

   procedure Initialize (This : in out Encoder'Class);
   function Create return Encoder_Access;
   function encode (value : Short_Short_Integer_Array_Access) return Unbounded_String;
   procedure encode (value : Short_Short_Integer_Array_Access);
   function decode (value : Unbounded_String) return Short_Short_Integer_Array_Access;
   procedure decode (value : Unbounded_String);

end org.allbinary.logic.control.crypt.Encoder_Package;


