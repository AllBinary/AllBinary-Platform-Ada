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
limited with org.allbinary.logic.io.path.PathUtil_Package;
package org.allbinary.logic.io.path.PathUtil_Package_References is
   type PathUtil_Access is access all org.allbinary.logic.io.path.PathUtil_Package.PathUtil'Class;
   type PathUtil_Access_Array is array (Natural range <>) of PathUtil_Access;
   type PathUtil_Access_Array_Access is access all PathUtil_Access_Array;
   type PathUtil_Access_Array_Access_Array is array (Natural range <>) of PathUtil_Access_Array_Access;
   type PathUtil_Access_Array_Access_Array_Access is access all PathUtil_Access_Array_Access_Array;
   type PathUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : PathUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathUtil_Access_Array_Access is (if Value /= null and then Value.all in PathUtil_Access_Array_Object'Class then PathUtil_Access_Array_Object'Class (Value.all).Value else null);
   type PathUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathUtil_Access_Array_Access_Array_Object'Class then PathUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.path.PathUtil_Package_References;

with org.allbinary.logic.io.path.PathUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.file.FilePathData_Package_References;
limited with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.AbPathData_Package_References;
limited with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbFilePath_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.logic.io.path.PathUtil_Package is

   package FilePathData_Package renames Standard.org.allbinary.logic.io.file.FilePathData_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype PathUtil_Access is org.allbinary.logic.io.path.PathUtil_Package_References.PathUtil_Access;
   function "=" (Left, Right : PathUtil_Access) return Boolean renames org.allbinary.logic.io.path.PathUtil_Package_References."=";
   subtype PathUtil_Access_Array is org.allbinary.logic.io.path.PathUtil_Package_References.PathUtil_Access_Array;
   function "=" (Left, Right : PathUtil_Access_Array) return Boolean renames org.allbinary.logic.io.path.PathUtil_Package_References."=";
   subtype PathUtil_Access_Array_Access is org.allbinary.logic.io.path.PathUtil_Package_References.PathUtil_Access_Array_Access;
   function "=" (Left, Right : PathUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.PathUtil_Package_References."=";
   function Java_Box (Value : PathUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.path.PathUtil_Package_References.Java_Box;
   function Java_Unbox_PathUtil_Access_Array (Value : access Java_Object'Class) return PathUtil_Access_Array_Access renames org.allbinary.logic.io.path.PathUtil_Package_References.Java_Unbox_PathUtil_Access_Array;
   subtype PathUtil_Access_Array_Access_Array is org.allbinary.logic.io.path.PathUtil_Package_References.PathUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PathUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.PathUtil_Package_References."=";
   subtype PathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.PathUtil_Package_References.PathUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.PathUtil_Package_References."=";
   function Java_Box (Value : PathUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.path.PathUtil_Package_References.Java_Box;
   function Java_Unbox_PathUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return PathUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.io.path.PathUtil_Package_References.Java_Unbox_PathUtil_Access_Array_Access_Array;

   type PathUtil is new Java_Object with record
      abPathData : AbPathData_Access;
      filePathData : FilePathData_Access;
   end record;
   instance : PathUtil_Access;

   procedure Initialize (This : in out PathUtil'Class);
   function Create return PathUtil_Access;
   function getInstance return PathUtil_Access;
   function getExtensionWithAbFilePath (This : in out PathUtil; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) return Unbounded_String;
   procedure getExtensionWithAbFilePath (This : in out PathUtil; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class);
   function getExtensionWithAbPath (This : in out PathUtil; abPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String;
   procedure getExtensionWithAbPath (This : in out PathUtil; abPath_Param : access AbPath_Package.AbPath'Class);
   function getWithoutExtensionWithAbFilePath (This : in out PathUtil; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) return Unbounded_String;
   procedure getWithoutExtensionWithAbFilePath (This : in out PathUtil; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class);
   function getWithoutExtensionWithAbPath (This : in out PathUtil; abPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String;
   procedure getWithoutExtensionWithAbPath (This : in out PathUtil; abPath_Param : access AbPath_Package.AbPath'Class);
   function getWithoutExtension (This : in out PathUtil; filePath : Unbounded_String) return Unbounded_String;
   procedure getWithoutExtension (This : in out PathUtil; filePath : Unbounded_String);
   function isValid (This : in out PathUtil; path : Unbounded_String) return Boolean;
   procedure isValid (This : in out PathUtil; path : Unbounded_String);
   function isValidStart (This : in out PathUtil; path : Unbounded_String) return Boolean;
   procedure isValidStart (This : in out PathUtil; path : Unbounded_String);
   function isValidEnd (This : in out PathUtil; path : Unbounded_String) return Boolean;
   procedure isValidEnd (This : in out PathUtil; path : Unbounded_String);
   function adjustStart (This : in out PathUtil; path_Param : Unbounded_String) return Unbounded_String;
   procedure adjustStart (This : in out PathUtil; path_Param : Unbounded_String);
   function adjustEnd (This : in out PathUtil; path_Param : Unbounded_String) return Unbounded_String;
   procedure adjustEnd (This : in out PathUtil; path_Param : Unbounded_String);
   function adjust (This : in out PathUtil; path_Param : Unbounded_String) return Unbounded_String;
   procedure adjust (This : in out PathUtil; path_Param : Unbounded_String);
   function removeNameFromPath (This : in out PathUtil; path : Unbounded_String) return AbPath_Access;
   procedure removeNameFromPath (This : in out PathUtil; path : Unbounded_String);

end org.allbinary.logic.io.path.PathUtil_Package;


