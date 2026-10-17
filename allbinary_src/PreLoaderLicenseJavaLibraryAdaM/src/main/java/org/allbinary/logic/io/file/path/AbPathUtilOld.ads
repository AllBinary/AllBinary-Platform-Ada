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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.path.AbFilePath_Package; use org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;

package org.allbinary.logic.io.file.path.AbPathUtilOld_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package FilePathData_Package renames org.allbinary.logic.io.file.FilePathData_Package;
   package AbFilePath_Package renames org.allbinary.logic.io.path.AbFilePath_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;

   type AbPathUtilOld is tagged;
   type AbPathUtilOld_Access is access all AbPathUtilOld'Class;
   type AbPathUtilOld_Access_Array is array (Natural range <>) of AbPathUtilOld_Access;
   type AbPathUtilOld_Access_Array_Access is access all AbPathUtilOld_Access_Array;

   type AbPathUtilOld is new Java_Object with record
      logUtil : LogUtil_Access;
      abPathData : AbPathData_Access;
      filePathData : FilePathData_Access;
   end record;
   instance : AbPathUtilOld_Access;
   MIN : Integer;

   procedure Initialize (This : in out AbPathUtilOld'Class);
   function Create return AbPathUtilOld_Access;
   function getInstance return AbPathUtilOld_Access;
   procedure getInstance;
   function getExtension (This : in out AbPathUtilOld; abFilePath : AbFilePath_Access) return Unbounded_String;
   procedure getExtension (This : in out AbPathUtilOld; abFilePath : AbFilePath_Access);
   function getExtension (This : in out AbPathUtilOld; abPath : AbPath_Access) return Unbounded_String;
   procedure getExtension (This : in out AbPathUtilOld; abPath : AbPath_Access);
   function getExtension (This : in out AbPathUtilOld; filePath : Unbounded_String) return Unbounded_String;
   procedure getExtension (This : in out AbPathUtilOld; filePath : Unbounded_String);
   function getWithoutExtension (This : in out AbPathUtilOld; abFilePath : AbFilePath_Access) return Unbounded_String;
   procedure getWithoutExtension (This : in out AbPathUtilOld; abFilePath : AbFilePath_Access);
   function getWithoutExtension (This : in out AbPathUtilOld; abPath : AbPath_Access) return Unbounded_String;
   procedure getWithoutExtension (This : in out AbPathUtilOld; abPath : AbPath_Access);
   function getWithoutExtension (This : in out AbPathUtilOld; filePath : Unbounded_String) return Unbounded_String;
   procedure getWithoutExtension (This : in out AbPathUtilOld; filePath : Unbounded_String);
   function isValid (This : in out AbPathUtilOld; path : Unbounded_String) return Boolean;
   procedure isValid (This : in out AbPathUtilOld; path : Unbounded_String);
   function isValidStart (This : in out AbPathUtilOld; path : Unbounded_String) return Boolean;
   procedure isValidStart (This : in out AbPathUtilOld; path : Unbounded_String);
   function isValidEnd (This : in out AbPathUtilOld; path : Unbounded_String) return Boolean;
   procedure isValidEnd (This : in out AbPathUtilOld; path : Unbounded_String);
   function adjustStart (This : in out AbPathUtilOld; path : Unbounded_String) return Unbounded_String;
   procedure adjustStart (This : in out AbPathUtilOld; path : Unbounded_String);
   function adjustEnd (This : in out AbPathUtilOld; path : Unbounded_String) return Unbounded_String;
   procedure adjustEnd (This : in out AbPathUtilOld; path : Unbounded_String);
   function adjust (This : in out AbPathUtilOld; path : Unbounded_String) return Unbounded_String;
   procedure adjust (This : in out AbPathUtilOld; path : Unbounded_String);
   function getNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String) return Unbounded_String;
   procedure getNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String);
   function removeNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String) return AbPath_Access;
   procedure removeNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String);

end org.allbinary.logic.io.file.path.AbPathUtilOld_Package;


