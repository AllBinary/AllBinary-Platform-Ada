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

limited with org.allbinary.logic.io.file.FileLockUtil_Package;
package org.allbinary.logic.io.file.FileLockUtil_Package_References is
   type FileLockUtil_Access is access all org.allbinary.logic.io.file.FileLockUtil_Package.FileLockUtil'Class;
   type FileLockUtil_Access_Array is array (Natural range <>) of FileLockUtil_Access;
   type FileLockUtil_Access_Array_Access is access all FileLockUtil_Access_Array;
   type FileLockUtil_Access_Array_Access_Array is array (Natural range <>) of FileLockUtil_Access_Array_Access;
   type FileLockUtil_Access_Array_Access_Array_Access is access all FileLockUtil_Access_Array_Access_Array;
end org.allbinary.logic.io.file.FileLockUtil_Package_References;

with org.allbinary.logic.io.file.FileLockUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.nio.channels.FileChannel_Package; use java.nio.channels.FileChannel_Package;
--  with java.nio.channels.FileLock_Package; use java.nio.channels.FileLock_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;

package org.allbinary.logic.io.file.FileLockUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFileOutputStream_Package renames Standard.org.allbinary.logic.io.AbFileOutputStream_Package;
   package Reference_Types is
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
   subtype AbFileOutputStream_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access;
   use type AbFileOutputStream_Access;
   subtype AbFileOutputStream_Access_Array is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array;
   use type AbFileOutputStream_Access_Array;
   subtype AbFileOutputStream_Access_Array_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access;
   use type AbFileOutputStream_Access_Array_Access;
   subtype AbFileOutputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access_Array;
   use type AbFileOutputStream_Access_Array_Access_Array;
   subtype AbFileOutputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access_Array_Access;
   use type AbFileOutputStream_Access_Array_Access_Array_Access;
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


   subtype FileLockUtil_Access is org.allbinary.logic.io.file.FileLockUtil_Package_References.FileLockUtil_Access;
   function "=" (Left, Right : FileLockUtil_Access) return Boolean renames org.allbinary.logic.io.file.FileLockUtil_Package_References."=";
   subtype FileLockUtil_Access_Array is org.allbinary.logic.io.file.FileLockUtil_Package_References.FileLockUtil_Access_Array;
   function "=" (Left, Right : FileLockUtil_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileLockUtil_Package_References."=";
   subtype FileLockUtil_Access_Array_Access is org.allbinary.logic.io.file.FileLockUtil_Package_References.FileLockUtil_Access_Array_Access;
   function "=" (Left, Right : FileLockUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileLockUtil_Package_References."=";
   subtype FileLockUtil_Access_Array_Access_Array is org.allbinary.logic.io.file.FileLockUtil_Package_References.FileLockUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FileLockUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileLockUtil_Package_References."=";
   subtype FileLockUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FileLockUtil_Package_References.FileLockUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileLockUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileLockUtil_Package_References."=";

   type FileLockUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : FileLockUtil_Access;

   procedure Initialize (This : in out FileLockUtil'Class);
   function Create return FileLockUtil_Access;
   function getInstance return FileLockUtil_Access;
   function getAll (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; isReturnOnFailure : Boolean) return BasicArrayList_Access;
   procedure getAll (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; isReturnOnFailure : Boolean);
   function getAllPossible (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAllPossible (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getAllOrNone (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAllOrNone (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getLock (This : in out FileLockUtil; file_Param : access AbFile_Package.AbFile'Class) return FileLock_Access;
   procedure getLock (This : in out FileLockUtil; file_Param : access AbFile_Package.AbFile'Class);
   function getLock (This : in out FileLockUtil; fileOutputStream_Param : access AbFileOutputStream_Package.AbFileOutputStream'Class) return FileLock_Access;
   procedure getLock (This : in out FileLockUtil; fileOutputStream_Param : access AbFileOutputStream_Package.AbFileOutputStream'Class);
   function getLock (This : in out FileLockUtil; fileChannel_Param : access FileChannel_Package.FileChannel'Class) return FileLock_Access;
   procedure getLock (This : in out FileLockUtil; fileChannel_Param : access FileChannel_Package.FileChannel'Class);

end org.allbinary.logic.io.file.FileLockUtil_Package;


