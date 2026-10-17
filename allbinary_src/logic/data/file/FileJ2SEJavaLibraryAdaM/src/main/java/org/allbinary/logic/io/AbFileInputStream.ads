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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
--  with java.io.FileNotFoundException_Package; use java.io.FileNotFoundException_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;

package org.allbinary.logic.io.AbFileInputStream_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;

   type AbFileInputStream is tagged;
   type AbFileInputStream_Access is access all AbFileInputStream'Class;
   type AbFileInputStream_Access_Array is array (Natural range <>) of AbFileInputStream_Access;
   type AbFileInputStream_Access_Array_Access is access all AbFileInputStream_Access_Array;

   type AbFileInputStream is new FileInputStream with null record;

   procedure Initialize (This : in out AbFileInputStream'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return AbFileInputStream_Access;

end org.allbinary.logic.io.AbFileInputStream_Package;


