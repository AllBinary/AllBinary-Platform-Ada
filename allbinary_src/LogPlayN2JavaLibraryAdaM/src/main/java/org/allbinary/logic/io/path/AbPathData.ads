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
with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.logic.io.path.AbPathData_Package is

   package FilePathData_Package renames Standard.org.allbinary.logic.io.file.FilePathData_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type AbPathData is tagged;
   type AbPathData_Access is access all AbPathData'Class;
   type AbPathData_Access_Array is array (Natural range <>) of AbPathData_Access;
   type AbPathData_Access_Array_Access is access all AbPathData_Access_Array;

   type AbPathData is new Java_Object with record
      EXTENSION_SEP : Unbounded_String;
      SEPARATORCHAR : Character;
      SEPARATOR : Unbounded_String;
   end record;
   instance : AbPathData_Access;

   procedure Initialize (This : in out AbPathData'Class);
   function Create return AbPathData_Access;
   function getInstance return AbPathData_Access;
   procedure getInstance;
   function getExtensionIndex (This : in out AbPathData; filePath : Unbounded_String) return Integer;
   procedure getExtensionIndex (This : in out AbPathData; filePath : Unbounded_String);
   function getExtensionWithDot (This : in out AbPathData; filePath : Unbounded_String) return Unbounded_String;
   procedure getExtensionWithDot (This : in out AbPathData; filePath : Unbounded_String);
   function getExtension (This : in out AbPathData; filePath : Unbounded_String) return Unbounded_String;
   procedure getExtension (This : in out AbPathData; filePath : Unbounded_String);
   function getNameFromPath (This : in out AbPathData; path : Unbounded_String) return Unbounded_String;
   procedure getNameFromPath (This : in out AbPathData; path : Unbounded_String);
   function removeNameFromPath (This : in out AbPathData; path : Unbounded_String) return Unbounded_String;
   procedure removeNameFromPath (This : in out AbPathData; path : Unbounded_String);

end org.allbinary.logic.io.path.AbPathData_Package;


