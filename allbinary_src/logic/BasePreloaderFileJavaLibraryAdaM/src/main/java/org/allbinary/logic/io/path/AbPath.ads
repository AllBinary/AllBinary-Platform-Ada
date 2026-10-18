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
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package; use org.allbinary.logic.io.path.PathUtil_Package;

package org.allbinary.logic.io.path.AbPath_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type AbPath is tagged;
   type AbPath_Access is access all AbPath'Class;
   type AbPath_Access_Array is array (Natural range <>) of AbPath_Access;
   type AbPath_Access_Array_Access is access all AbPath_Access_Array;
   type AbPath_Access_Array_Access_Array is array (Natural range <>) of AbPath_Access_Array_Access;
   type AbPath_Access_Array_Access_Array_Access is access all AbPath_Access_Array_Access_Array;

   type AbPath is new Java_Object with record
      commonSeps : CommonSeps_Access;
      abPathData : AbPathData_Access;
      abPathUtil : PathUtil_Access;
      EMPTY_STRING : Unbounded_String;
      schema : Unbounded_String;
      path : Unbounded_String;
      nameP : Unbounded_String;
      hasSchemaP : Boolean;
      numberOfSeps : Integer;
   end record;
   NETWORK_SEP : Unbounded_String;

   procedure Initialize (This : in out AbPath'Class; aPath : Unbounded_String; name : Unbounded_String);
   function Create (aPath : Unbounded_String; name : Unbounded_String) return AbPath_Access;
   function createAbPath return AbPath_Access;
   procedure init (This : in out AbPath);
   function getSchema (This : in out AbPath; aPath : Unbounded_String) return Unbounded_String;
   procedure getSchema (This : in out AbPath; aPath : Unbounded_String);
   function hasSchema (This : in out AbPath) return Boolean;
   function getPathFromPath (This : in out AbPath; aPath : Unbounded_String) return Unbounded_String;
   procedure getPathFromPath (This : in out AbPath; aPath : Unbounded_String);
   procedure setName (This : in out AbPath; name : Unbounded_String);
   function getName (This : in out AbPath) return Unbounded_String;
   function toString (This : in out AbPath) return Unbounded_String;
   function toFileSystemString (This : in out AbPath) return Unbounded_String;
   function getPath (This : in out AbPath) return Unbounded_String;
   procedure setPath (This : in out AbPath; path : Unbounded_String);

end org.allbinary.logic.io.path.AbPath_Package;


