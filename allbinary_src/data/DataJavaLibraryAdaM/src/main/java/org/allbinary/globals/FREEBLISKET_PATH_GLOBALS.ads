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

package org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package is

   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type FREEBLISKET_PATH_GLOBALS is tagged;
   type FREEBLISKET_PATH_GLOBALS_Access is access all FREEBLISKET_PATH_GLOBALS'Class;
   type FREEBLISKET_PATH_GLOBALS_Access_Array is array (Natural range <>) of FREEBLISKET_PATH_GLOBALS_Access;
   type FREEBLISKET_PATH_GLOBALS_Access_Array_Access is access all FREEBLISKET_PATH_GLOBALS_Access_Array;

   type FREEBLISKET_PATH_GLOBALS is new Java_Object with record
      INSTALLPATH : Unbounded_String;
      XSLPATH : Unbounded_String;
      TEMPLATEPATH : Unbounded_String;
      STYLEPATH : Unbounded_String;
      THEMEPATH : Unbounded_String;
      DBINITPATH : Unbounded_String;
      LINEDATAPATH : Unbounded_String;
      CONFIGURATIONPATH : Unbounded_String;
      USERCONFIGURATIONPATH : Unbounded_String;
      CONTEXTCONFIGURATIONPATH : Unbounded_String;
      LICENSEERRORPAGE : Unbounded_String;
      ERRORPAGE : Unbounded_String;
   end record;
   instance : FREEBLISKET_PATH_GLOBALS_Access;

   procedure Initialize (This : in out FREEBLISKET_PATH_GLOBALS'Class);
   function Create return FREEBLISKET_PATH_GLOBALS_Access;
   function getInstance return FREEBLISKET_PATH_GLOBALS_Access;
   procedure getInstance;

end org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;


