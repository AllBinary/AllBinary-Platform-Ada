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
--  with java.io.FileNotFoundException_Package; use java.io.FileNotFoundException_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;

package org.allbinary.logic.io.AbFileLocalInputStream_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;

   type AbFileLocalInputStream is tagged;
   type AbFileLocalInputStream_Access is access all AbFileLocalInputStream'Class;
   type AbFileLocalInputStream_Access_Array is array (Natural range <>) of AbFileLocalInputStream_Access;
   type AbFileLocalInputStream_Access_Array_Access is access all AbFileLocalInputStream_Access_Array;

   type AbFileLocalInputStream is new AbFileInputStream with null record;

   procedure Initialize (This : in out AbFileLocalInputStream'Class; file : AbFile_Access);
   function Create (file : AbFile_Access) return AbFileLocalInputStream_Access;

end org.allbinary.logic.io.AbFileLocalInputStream_Package;


