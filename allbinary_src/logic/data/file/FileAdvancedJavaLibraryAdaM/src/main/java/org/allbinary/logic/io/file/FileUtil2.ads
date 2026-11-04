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

limited with org.allbinary.logic.io.file.FileUtil2_Package;
package org.allbinary.logic.io.file.FileUtil2_Package_References is
   type FileUtil2_Access is access all org.allbinary.logic.io.file.FileUtil2_Package.FileUtil2'Class;
   type FileUtil2_Access_Array is array (Natural range <>) of FileUtil2_Access;
   type FileUtil2_Access_Array_Access is access all FileUtil2_Access_Array;
   type FileUtil2_Access_Array_Access_Array is array (Natural range <>) of FileUtil2_Access_Array_Access;
   type FileUtil2_Access_Array_Access_Array_Access is access all FileUtil2_Access_Array_Access_Array;
end org.allbinary.logic.io.file.FileUtil2_Package_References;

with org.allbinary.logic.io.file.FileUtil2_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;

package org.allbinary.logic.io.file.FileUtil2_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype StreamUtil_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access;
   use type StreamUtil_Access;
   subtype StreamUtil_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array;
   use type StreamUtil_Access_Array;
   subtype StreamUtil_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access;
   use type StreamUtil_Access_Array_Access;
   subtype StreamUtil_Access_Array_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array;
   use type StreamUtil_Access_Array_Access_Array;
   subtype StreamUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array_Access;
   use type StreamUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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


   subtype FileUtil2_Access is org.allbinary.logic.io.file.FileUtil2_Package_References.FileUtil2_Access;
   function "=" (Left, Right : FileUtil2_Access) return Boolean renames org.allbinary.logic.io.file.FileUtil2_Package_References."=";
   subtype FileUtil2_Access_Array is org.allbinary.logic.io.file.FileUtil2_Package_References.FileUtil2_Access_Array;
   function "=" (Left, Right : FileUtil2_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileUtil2_Package_References."=";
   subtype FileUtil2_Access_Array_Access is org.allbinary.logic.io.file.FileUtil2_Package_References.FileUtil2_Access_Array_Access;
   function "=" (Left, Right : FileUtil2_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileUtil2_Package_References."=";
   subtype FileUtil2_Access_Array_Access_Array is org.allbinary.logic.io.file.FileUtil2_Package_References.FileUtil2_Access_Array_Access_Array;
   function "=" (Left, Right : FileUtil2_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileUtil2_Package_References."=";
   subtype FileUtil2_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FileUtil2_Package_References.FileUtil2_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileUtil2_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileUtil2_Package_References."=";

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


