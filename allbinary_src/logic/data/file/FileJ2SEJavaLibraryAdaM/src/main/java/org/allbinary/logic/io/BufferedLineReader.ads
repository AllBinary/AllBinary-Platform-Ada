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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.BufferedReader_Package; use java.io.BufferedReader_Package;
--  with java.io.FileReader_Package; use java.io.FileReader_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;

package org.allbinary.logic.io.BufferedLineReader_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;

   type BufferedLineReader is tagged;
   type BufferedLineReader_Access is access all BufferedLineReader'Class;
   type BufferedLineReader_Access_Array is array (Natural range <>) of BufferedLineReader_Access;
   type BufferedLineReader_Access_Array_Access is access all BufferedLineReader_Access_Array;

   type BufferedLineReader is new Java_Object with record
      tmpIn : BufferedReader_Access;
   end record;

   procedure Initialize (This : in out BufferedLineReader'Class; file : AbFile_Access);
   function Create (file : AbFile_Access) return BufferedLineReader_Access;
   procedure readUpToLines (This : in out BufferedLineReader; readAheadIndex : Long_Long_Integer);
   function readLine (This : in out BufferedLineReader) return Unbounded_String;
   procedure readLine (This : in out BufferedLineReader);
   function getSize (This : in out BufferedLineReader) return Long_Long_Integer;
   procedure getSize (This : in out BufferedLineReader);
   function getCurrent (This : in out BufferedLineReader) return Integer;
   procedure getCurrent (This : in out BufferedLineReader);

end org.allbinary.logic.io.BufferedLineReader_Package;


