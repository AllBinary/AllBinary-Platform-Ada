-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
--  with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.io.file.AbFileSystem_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AbFileSystem is tagged;
   type AbFileSystem_Access is access all AbFileSystem'Class;
   type AbFileSystem_Access_Array is array (Natural range <>) of AbFileSystem_Access;
   type AbFileSystem_Access_Array_Access is access all AbFileSystem_Access_Array;
   type AbFileSystem_Access_Array_Access_Array is array (Natural range <>) of AbFileSystem_Access_Array_Access;
   type AbFileSystem_Access_Array_Access_Array_Access is access all AbFileSystem_Access_Array_Access_Array;

   type AbFileSystem is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : AbFileSystem_Access;

   procedure Initialize (This : in out AbFileSystem'Class);
   function Create return AbFileSystem_Access;
   function getInstance return AbFileSystem_Access;
   function isDirectoryOrFile (This : in out AbFileSystem; path : Unbounded_String) return Boolean;
   procedure isDirectoryOrFile (This : in out AbFileSystem; path : Unbounded_String);
   function isDirectory (This : in out AbFileSystem; path : Unbounded_String) return Boolean;
   procedure isDirectory (This : in out AbFileSystem; path : Unbounded_String);
   function getFilesAsStringArrayForPath (This : in out AbFileSystem; currentDirPath : Unbounded_String) return Unbounded_String_Array_Access;
   procedure getFilesAsStringArrayForPath (This : in out AbFileSystem; currentDirPath : Unbounded_String);
   function readAsString (This : in out AbFileSystem; fileName : Unbounded_String) return Unbounded_String;
   procedure readAsString (This : in out AbFileSystem; fileName : Unbounded_String);
   function readAsString (This : in out AbFileSystem; fileName : Unbounded_String; bytes : Short_Short_Integer_Array_Access) return Unbounded_String;
   procedure readAsString (This : in out AbFileSystem; fileName : Unbounded_String; bytes : Short_Short_Integer_Array_Access);
   function close (This : in out AbFileSystem; closeable_Param : access Java_Object'Class) return Boolean;
   procedure close (This : in out AbFileSystem; closeable_Param : access Java_Object'Class);
   function close (This : in out AbFileSystem; Value : Unbounded_String) return Boolean;
   procedure close (This : in out AbFileSystem; Value : Unbounded_String);

end org.allbinary.logic.io.file.AbFileSystem_Package;


