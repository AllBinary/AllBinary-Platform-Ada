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
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.globals.PATH_GLOBALS_Package is

   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PATH_GLOBALS is tagged;
   type PATH_GLOBALS_Access is access all PATH_GLOBALS'Class;
   type PATH_GLOBALS_Access_Array is array (Natural range <>) of PATH_GLOBALS_Access;
   type PATH_GLOBALS_Access_Array_Access is access all PATH_GLOBALS_Access_Array;

   type PATH_GLOBALS is new Java_Object with record
      DATA_PATH : Unbounded_String;
      INIT_PATH : Unbounded_String;
      VIEWS_PATH : Unbounded_String;
      LOG_PATH : Unbounded_String;
      BACKUP_PATH : Unbounded_String;
   end record;
   instance : PATH_GLOBALS_Access;

   procedure Initialize (This : in out PATH_GLOBALS'Class);
   function Create return PATH_GLOBALS_Access;
   function getInstance return PATH_GLOBALS_Access;
   procedure getInstance;

end org.allbinary.globals.PATH_GLOBALS_Package;


