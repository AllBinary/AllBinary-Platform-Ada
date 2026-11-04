--  Generated Code Do Not Modify

limited with org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
package org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References is
   type CryptFileReader_Access is access all org.allbinary.logic.control.crypt.file.CryptFileReader_Package.CryptFileReader'Class;
   type CryptFileReader_Access_Array is array (Natural range <>) of CryptFileReader_Access;
   type CryptFileReader_Access_Array_Access is access all CryptFileReader_Access_Array;
   type CryptFileReader_Access_Array_Access_Array is array (Natural range <>) of CryptFileReader_Access_Array_Access;
   type CryptFileReader_Access_Array_Access_Array_Access is access all CryptFileReader_Access_Array_Access_Array;
end org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References;

with org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.logic.control.crypt.file.CryptFileReader_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CryptFileReader_Access is org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References.CryptFileReader_Access;
   function "=" (Left, Right : CryptFileReader_Access) return Boolean renames org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References."=";
   subtype CryptFileReader_Access_Array is org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References.CryptFileReader_Access_Array;
   function "=" (Left, Right : CryptFileReader_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References."=";
   subtype CryptFileReader_Access_Array_Access is org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References.CryptFileReader_Access_Array_Access;
   function "=" (Left, Right : CryptFileReader_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References."=";
   subtype CryptFileReader_Access_Array_Access_Array is org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References.CryptFileReader_Access_Array_Access_Array;
   function "=" (Left, Right : CryptFileReader_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References."=";
   subtype CryptFileReader_Access_Array_Access_Array_Access is org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References.CryptFileReader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CryptFileReader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.file.CryptFileReader_Package_References."=";

   type CryptFileReader is new Java_Object with null record;

   procedure Initialize (This : in out CryptFileReader'Class; decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String);
   function Create (decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String) return CryptFileReader_Access;
   function get (This : in out CryptFileReader; fileAbPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String;
   procedure get (This : in out CryptFileReader; fileAbPath_Param : access AbPath_Package.AbPath'Class);
   function getInputStream (This : in out CryptFileReader; fileAbPath_Param : access AbPath_Package.AbPath'Class) return InputStream_Access;
   procedure getInputStream (This : in out CryptFileReader; fileAbPath_Param : access AbPath_Package.AbPath'Class);

end org.allbinary.logic.control.crypt.file.CryptFileReader_Package;


