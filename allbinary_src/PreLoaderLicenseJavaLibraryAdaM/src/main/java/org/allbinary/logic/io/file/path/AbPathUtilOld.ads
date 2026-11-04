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

limited with org.allbinary.logic.io.file.path.AbPathUtilOld_Package;
package org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References is
   type AbPathUtilOld_Access is access all org.allbinary.logic.io.file.path.AbPathUtilOld_Package.AbPathUtilOld'Class;
   type AbPathUtilOld_Access_Array is array (Natural range <>) of AbPathUtilOld_Access;
   type AbPathUtilOld_Access_Array_Access is access all AbPathUtilOld_Access_Array;
   type AbPathUtilOld_Access_Array_Access_Array is array (Natural range <>) of AbPathUtilOld_Access_Array_Access;
   type AbPathUtilOld_Access_Array_Access_Array_Access is access all AbPathUtilOld_Access_Array_Access_Array;
end org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References;

with org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References;
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
limited with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.file.FilePathData_Package_References;
limited with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbFilePath_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.AbPathData_Package_References;

package org.allbinary.logic.io.file.path.AbPathUtilOld_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package FilePathData_Package renames Standard.org.allbinary.logic.io.file.FilePathData_Package;
   package AbFilePath_Package renames Standard.org.allbinary.logic.io.path.AbFilePath_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
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
   subtype FilePathData_Access is org.allbinary.logic.io.file.FilePathData_Package_References.FilePathData_Access;
   use type FilePathData_Access;
   subtype FilePathData_Access_Array is org.allbinary.logic.io.file.FilePathData_Package_References.FilePathData_Access_Array;
   use type FilePathData_Access_Array;
   subtype FilePathData_Access_Array_Access is org.allbinary.logic.io.file.FilePathData_Package_References.FilePathData_Access_Array_Access;
   use type FilePathData_Access_Array_Access;
   subtype FilePathData_Access_Array_Access_Array is org.allbinary.logic.io.file.FilePathData_Package_References.FilePathData_Access_Array_Access_Array;
   use type FilePathData_Access_Array_Access_Array;
   subtype FilePathData_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FilePathData_Package_References.FilePathData_Access_Array_Access_Array_Access;
   use type FilePathData_Access_Array_Access_Array_Access;
   subtype AbFilePath_Access is org.allbinary.logic.io.path.AbFilePath_Package_References.AbFilePath_Access;
   use type AbFilePath_Access;
   subtype AbFilePath_Access_Array is org.allbinary.logic.io.path.AbFilePath_Package_References.AbFilePath_Access_Array;
   use type AbFilePath_Access_Array;
   subtype AbFilePath_Access_Array_Access is org.allbinary.logic.io.path.AbFilePath_Package_References.AbFilePath_Access_Array_Access;
   use type AbFilePath_Access_Array_Access;
   subtype AbFilePath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbFilePath_Package_References.AbFilePath_Access_Array_Access_Array;
   use type AbFilePath_Access_Array_Access_Array;
   subtype AbFilePath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbFilePath_Package_References.AbFilePath_Access_Array_Access_Array_Access;
   use type AbFilePath_Access_Array_Access_Array_Access;
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
   subtype AbPathData_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access;
   use type AbPathData_Access;
   subtype AbPathData_Access_Array is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array;
   use type AbPathData_Access_Array;
   subtype AbPathData_Access_Array_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access;
   use type AbPathData_Access_Array_Access;
   subtype AbPathData_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access_Array;
   use type AbPathData_Access_Array_Access_Array;
   subtype AbPathData_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access_Array_Access;
   use type AbPathData_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbPathUtilOld_Access is org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References.AbPathUtilOld_Access;
   function "=" (Left, Right : AbPathUtilOld_Access) return Boolean renames org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References."=";
   subtype AbPathUtilOld_Access_Array is org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References.AbPathUtilOld_Access_Array;
   function "=" (Left, Right : AbPathUtilOld_Access_Array) return Boolean renames org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References."=";
   subtype AbPathUtilOld_Access_Array_Access is org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References.AbPathUtilOld_Access_Array_Access;
   function "=" (Left, Right : AbPathUtilOld_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References."=";
   subtype AbPathUtilOld_Access_Array_Access_Array is org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References.AbPathUtilOld_Access_Array_Access_Array;
   function "=" (Left, Right : AbPathUtilOld_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References."=";
   subtype AbPathUtilOld_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References.AbPathUtilOld_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbPathUtilOld_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.path.AbPathUtilOld_Package_References."=";

   type AbPathUtilOld is new Java_Object with record
      logUtil : LogUtil_Access;
      abPathData : AbPathData_Access;
      filePathData : FilePathData_Access;
   end record;
   instance : AbPathUtilOld_Access;
   MIN : constant Integer := 4;

   procedure Initialize (This : in out AbPathUtilOld'Class);
   function Create return AbPathUtilOld_Access;
   function getInstance return AbPathUtilOld_Access;
   function getExtension (This : in out AbPathUtilOld; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) return Unbounded_String;
   procedure getExtension (This : in out AbPathUtilOld; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class);
   function getExtension (This : in out AbPathUtilOld; abPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String;
   procedure getExtension (This : in out AbPathUtilOld; abPath_Param : access AbPath_Package.AbPath'Class);
   function getExtension (This : in out AbPathUtilOld; filePath : Unbounded_String) return Unbounded_String;
   procedure getExtension (This : in out AbPathUtilOld; filePath : Unbounded_String);
   function getWithoutExtension (This : in out AbPathUtilOld; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) return Unbounded_String;
   procedure getWithoutExtension (This : in out AbPathUtilOld; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class);
   function getWithoutExtension (This : in out AbPathUtilOld; abPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String;
   procedure getWithoutExtension (This : in out AbPathUtilOld; abPath_Param : access AbPath_Package.AbPath'Class);
   function getWithoutExtension (This : in out AbPathUtilOld; filePath : Unbounded_String) return Unbounded_String;
   procedure getWithoutExtension (This : in out AbPathUtilOld; filePath : Unbounded_String);
   function isValid (This : in out AbPathUtilOld; path : Unbounded_String) return Boolean;
   procedure isValid (This : in out AbPathUtilOld; path : Unbounded_String);
   function isValidStart (This : in out AbPathUtilOld; path : Unbounded_String) return Boolean;
   procedure isValidStart (This : in out AbPathUtilOld; path : Unbounded_String);
   function isValidEnd (This : in out AbPathUtilOld; path : Unbounded_String) return Boolean;
   procedure isValidEnd (This : in out AbPathUtilOld; path : Unbounded_String);
   function adjustStart (This : in out AbPathUtilOld; path_Param : Unbounded_String) return Unbounded_String;
   procedure adjustStart (This : in out AbPathUtilOld; path_Param : Unbounded_String);
   function adjustEnd (This : in out AbPathUtilOld; path_Param : Unbounded_String) return Unbounded_String;
   procedure adjustEnd (This : in out AbPathUtilOld; path_Param : Unbounded_String);
   function adjust (This : in out AbPathUtilOld; path_Param : Unbounded_String) return Unbounded_String;
   procedure adjust (This : in out AbPathUtilOld; path_Param : Unbounded_String);
   function getNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String) return Unbounded_String;
   procedure getNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String);
   function removeNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String) return AbPath_Access;
   procedure removeNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String);

end org.allbinary.logic.io.file.path.AbPathUtilOld_Package;


