--  Generated Code Do Not Modify

limited with org.allbinary.logic.control.crypt.file.CryptFileWriter_Package;
package org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References is
   type CryptFileWriter_Access is access all org.allbinary.logic.control.crypt.file.CryptFileWriter_Package.CryptFileWriter'Class;
   type CryptFileWriter_Access_Array is array (Natural range <>) of CryptFileWriter_Access;
   type CryptFileWriter_Access_Array_Access is access all CryptFileWriter_Access_Array;
   type CryptFileWriter_Access_Array_Access_Array is array (Natural range <>) of CryptFileWriter_Access_Array_Access;
   type CryptFileWriter_Access_Array_Access_Array_Access is access all CryptFileWriter_Access_Array_Access_Array;
end org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References;

with org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.logic.control.crypt.file.CryptFileWriter_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CryptFileWriter_Access is org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References.CryptFileWriter_Access;
   function "=" (Left, Right : CryptFileWriter_Access) return Boolean renames org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References."=";
   subtype CryptFileWriter_Access_Array is org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References.CryptFileWriter_Access_Array;
   function "=" (Left, Right : CryptFileWriter_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References."=";
   subtype CryptFileWriter_Access_Array_Access is org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References.CryptFileWriter_Access_Array_Access;
   function "=" (Left, Right : CryptFileWriter_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References."=";
   subtype CryptFileWriter_Access_Array_Access_Array is org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References.CryptFileWriter_Access_Array_Access_Array;
   function "=" (Left, Right : CryptFileWriter_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References."=";
   subtype CryptFileWriter_Access_Array_Access_Array_Access is org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References.CryptFileWriter_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CryptFileWriter_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.file.CryptFileWriter_Package_References."=";

   type CryptFileWriter is new Java_Object with null record;

   procedure Initialize (This : in out CryptFileWriter'Class; decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String);
   function Create (decryptedExtension : Unbounded_String; encryptedExtension : Unbounded_String) return CryptFileWriter_Access;
   procedure write (This : in out CryptFileWriter; fileAbPath_Param : access AbPath_Package.AbPath'Class; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.control.crypt.file.CryptFileWriter_Package;


