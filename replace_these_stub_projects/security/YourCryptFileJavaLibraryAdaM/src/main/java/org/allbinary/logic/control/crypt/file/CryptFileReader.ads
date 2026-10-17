--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.logic.control.crypt.file.CryptFileReader_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;

   type CryptFileReader is tagged;
   type CryptFileReader_Access is access all CryptFileReader'Class;
   type CryptFileReader_Access_Array is array (Natural range <>) of CryptFileReader_Access;
   type CryptFileReader_Access_Array_Access is access all CryptFileReader_Access_Array;

   type CryptFileReader is new Java_Object with null record;

   procedure Initialize (This : in out CryptFileReader'Class; decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String);
   function Create (decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String) return CryptFileReader_Access;
   function get (This : in out CryptFileReader; fileAbPath : AbPath_Access) return Unbounded_String;
   procedure get (This : in out CryptFileReader; fileAbPath : AbPath_Access);
   function getInputStream (This : in out CryptFileReader; fileAbPath : AbPath_Access) return InputStream_Access;
   procedure getInputStream (This : in out CryptFileReader; fileAbPath : AbPath_Access);

end org.allbinary.logic.control.crypt.file.CryptFileReader_Package;


