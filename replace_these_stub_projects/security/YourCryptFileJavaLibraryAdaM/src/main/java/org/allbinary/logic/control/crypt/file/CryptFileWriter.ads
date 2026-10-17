--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.logic.control.crypt.file.CryptFileWriter_Package is

   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package Document_Package renames org.w3c.dom.Document_Package;

   type CryptFileWriter is tagged;
   type CryptFileWriter_Access is access all CryptFileWriter'Class;
   type CryptFileWriter_Access_Array is array (Natural range <>) of CryptFileWriter_Access;
   type CryptFileWriter_Access_Array_Access is access all CryptFileWriter_Access_Array;

   type CryptFileWriter is new Java_Object with null record;

   procedure Initialize (This : in out CryptFileWriter'Class; decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String);
   function Create (decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String) return CryptFileWriter_Access;
   procedure write (This : in out CryptFileWriter; fileAbPath : AbPath_Access; document : Document_Access);

end org.allbinary.logic.control.crypt.file.CryptFileWriter_Package;


