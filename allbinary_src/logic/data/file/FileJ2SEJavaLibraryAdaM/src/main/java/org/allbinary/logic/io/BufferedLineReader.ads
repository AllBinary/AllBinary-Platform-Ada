--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.logic.io.BufferedLineReader_Package;
package org.allbinary.logic.io.BufferedLineReader_Package_References is
   type BufferedLineReader_Access is access all org.allbinary.logic.io.BufferedLineReader_Package.BufferedLineReader'Class;
   type BufferedLineReader_Access_Array is array (Natural range <>) of BufferedLineReader_Access;
   type BufferedLineReader_Access_Array_Access is access all BufferedLineReader_Access_Array;
   type BufferedLineReader_Access_Array_Access_Array is array (Natural range <>) of BufferedLineReader_Access_Array_Access;
   type BufferedLineReader_Access_Array_Access_Array_Access is access all BufferedLineReader_Access_Array_Access_Array;
   type BufferedLineReader_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BufferedLineReader_Access_Array_Access;
   end record;
   function Java_Box (Value : BufferedLineReader_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BufferedLineReader_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BufferedLineReader_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BufferedLineReader_Access_Array_Access is (if Value /= null and then Value.all in BufferedLineReader_Access_Array_Object'Class then BufferedLineReader_Access_Array_Object'Class (Value.all).Value else null);
   type BufferedLineReader_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BufferedLineReader_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BufferedLineReader_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BufferedLineReader_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BufferedLineReader_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BufferedLineReader_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BufferedLineReader_Access_Array_Access_Array_Object'Class then BufferedLineReader_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.BufferedLineReader_Package_References;

with org.allbinary.logic.io.BufferedLineReader_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.BufferedReader_Package; use java.io.BufferedReader_Package;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;

package org.allbinary.logic.io.BufferedLineReader_Package is

   package BufferedReader_Package renames Standard.java.io.BufferedReader_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package Reference_Types is
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BufferedLineReader_Access is org.allbinary.logic.io.BufferedLineReader_Package_References.BufferedLineReader_Access;
   function "=" (Left, Right : BufferedLineReader_Access) return Boolean renames org.allbinary.logic.io.BufferedLineReader_Package_References."=";
   subtype BufferedLineReader_Access_Array is org.allbinary.logic.io.BufferedLineReader_Package_References.BufferedLineReader_Access_Array;
   function "=" (Left, Right : BufferedLineReader_Access_Array) return Boolean renames org.allbinary.logic.io.BufferedLineReader_Package_References."=";
   subtype BufferedLineReader_Access_Array_Access is org.allbinary.logic.io.BufferedLineReader_Package_References.BufferedLineReader_Access_Array_Access;
   function "=" (Left, Right : BufferedLineReader_Access_Array_Access) return Boolean renames org.allbinary.logic.io.BufferedLineReader_Package_References."=";
   function Java_Box (Value : BufferedLineReader_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.BufferedLineReader_Package_References.Java_Box;
   function Java_Unbox_BufferedLineReader_Access_Array (Value : access Java_Object'Class) return BufferedLineReader_Access_Array_Access renames org.allbinary.logic.io.BufferedLineReader_Package_References.Java_Unbox_BufferedLineReader_Access_Array;
   subtype BufferedLineReader_Access_Array_Access_Array is org.allbinary.logic.io.BufferedLineReader_Package_References.BufferedLineReader_Access_Array_Access_Array;
   function "=" (Left, Right : BufferedLineReader_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.BufferedLineReader_Package_References."=";
   subtype BufferedLineReader_Access_Array_Access_Array_Access is org.allbinary.logic.io.BufferedLineReader_Package_References.BufferedLineReader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BufferedLineReader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.BufferedLineReader_Package_References."=";
   function Java_Box (Value : BufferedLineReader_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.BufferedLineReader_Package_References.Java_Box;
   function Java_Unbox_BufferedLineReader_Access_Array_Access_Array (Value : access Java_Object'Class) return BufferedLineReader_Access_Array_Access_Array_Access renames org.allbinary.logic.io.BufferedLineReader_Package_References.Java_Unbox_BufferedLineReader_Access_Array_Access_Array;

   type BufferedLineReader is new Java_Object with record
      tmpIn : BufferedReader_Access;
   end record;

   procedure Initialize (This : in out BufferedLineReader'Class; file_Param : access AbFile_Package.AbFile'Class);
   function Create (file_Param : access AbFile_Package.AbFile'Class) return BufferedLineReader_Access;
   procedure readUpToLines (This : in out BufferedLineReader; readAheadIndex : Long_Long_Integer);
   function readLine (This : in out BufferedLineReader) return Unbounded_String;
   function ready (This : in out BufferedLineReader) return Boolean;
   function getSize (This : in out BufferedLineReader) return Long_Long_Integer;
   function getCurrent (This : in out BufferedLineReader) return Integer;

end org.allbinary.logic.io.BufferedLineReader_Package;


