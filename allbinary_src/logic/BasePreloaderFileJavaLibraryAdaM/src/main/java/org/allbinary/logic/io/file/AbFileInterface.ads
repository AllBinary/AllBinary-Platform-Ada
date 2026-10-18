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
--  with java.io.FilenameFilter_Package; use java.io.FilenameFilter_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.net.URI_Package; use java.net.URI_Package;

package org.allbinary.logic.io.file.AbFileInterface_Package is


   type AbFileInterface is interface;
   type AbFileInterface_Access is access all AbFileInterface'Class;
   type AbFileInterface_Access_Array is array (Natural range <>) of AbFileInterface_Access;
   type AbFileInterface_Access_Array_Access is access all AbFileInterface_Access_Array;
   type AbFileInterface_Access_Array_Access_Array is array (Natural range <>) of AbFileInterface_Access_Array_Access;
   type AbFileInterface_Access_Array_Access_Array_Access is access all AbFileInterface_Access_Array_Access_Array;
   function canRead (This : in out AbFileInterface) return Boolean is abstract;
   function canWrite (This : in out AbFileInterface) return Boolean is abstract;
   function createNewFile (This : in out AbFileInterface) return Boolean is abstract;
   function delete (This : in out AbFileInterface) return Boolean is abstract;
   procedure deleteOnExit (This : in out AbFileInterface) is abstract;
   function exists (This : in out AbFileInterface) return Boolean is abstract;
   function getAbsolutePath (This : in out AbFileInterface) return Unbounded_String is abstract;
   function getCanonicalPath (This : in out AbFileInterface) return Unbounded_String is abstract;
   function getParent (This : in out AbFileInterface) return Unbounded_String is abstract;
   function getPath (This : in out AbFileInterface) return Unbounded_String is abstract;
   function isAbsolute (This : in out AbFileInterface) return Boolean is abstract;
   function isDirectory (This : in out AbFileInterface) return Boolean is abstract;
   function isFile (This : in out AbFileInterface) return Boolean is abstract;
   function isHidden (This : in out AbFileInterface) return Boolean is abstract;
   function lastModified (This : in out AbFileInterface) return Long_Long_Integer is abstract;
   function length (This : in out AbFileInterface) return Long_Long_Integer is abstract;
   function list (This : in out AbFileInterface) return Unbounded_String_Array_Access is abstract;
   function listWithFilter (This : in out AbFileInterface; filter_Param : access FilenameFilter_Package.FilenameFilter'Class) return Unbounded_String_Array_Access is abstract;
   function mkdir (This : in out AbFileInterface) return Boolean is abstract;
   function mkdirs (This : in out AbFileInterface) return Boolean is abstract;
   function setLastModified (This : in out AbFileInterface; time : Long_Long_Integer) return Boolean is abstract;
   function setReadOnly (This : in out AbFileInterface) return Boolean is abstract;
   function toString (This : in out AbFileInterface) return Unbounded_String is abstract;
   function toURI (This : in out AbFileInterface) return URI_Access is abstract;

end org.allbinary.logic.io.file.AbFileInterface_Package;


