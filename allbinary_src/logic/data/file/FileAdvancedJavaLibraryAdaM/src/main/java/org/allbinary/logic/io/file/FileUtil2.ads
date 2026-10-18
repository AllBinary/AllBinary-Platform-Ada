-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;

package org.allbinary.logic.io.file.FileUtil2_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type FileUtil2 is tagged;
   type FileUtil2_Access is access all FileUtil2'Class;
   type FileUtil2_Access_Array is array (Natural range <>) of FileUtil2_Access;
   type FileUtil2_Access_Array_Access is access all FileUtil2_Access_Array;
   type FileUtil2_Access_Array_Access_Array is array (Natural range <>) of FileUtil2_Access_Array_Access;
   type FileUtil2_Access_Array_Access_Array_Access is access all FileUtil2_Access_Array_Access_Array;

   type FileUtil2 is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      streamUtil : StreamUtil_Access;
   end record;
   instance : FileUtil2_Access;

   procedure Initialize (This : in out FileUtil2'Class);
   function Create return FileUtil2_Access;
   function getInstance return FileUtil2_Access;
   function loadFileAsList (This : in out FileUtil2; file_Param : access AbFile_Package.AbFile'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) return BasicArrayList_Access;
   procedure loadFileAsList (This : in out FileUtil2; file_Param : access AbFile_Package.AbFile'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access);

end org.allbinary.logic.io.file.FileUtil2_Package;


