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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.globals.UrlGlobalsInterface_Package; use org.allbinary.globals.UrlGlobalsInterface_Package;

package org.allbinary.globals.AppUrlGlobals_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type AppUrlGlobals is tagged;
   type AppUrlGlobals_Access is access all AppUrlGlobals'Class;
   type AppUrlGlobals_Access_Array is array (Natural range <>) of AppUrlGlobals_Access;
   type AppUrlGlobals_Access_Array_Access is access all AppUrlGlobals_Access_Array;

   type AppUrlGlobals is new UrlGlobalsInterface with record
      path : Unbounded_String;
   end record;
   NULL_APP_URL_GLOBALS : AppUrlGlobals_Access;

   procedure Initialize (This : in out AppUrlGlobals'Class);
   function Create return AppUrlGlobals_Access;
   function isTestingMode (This : in out AppUrlGlobals) return Boolean;
   function getWebappPath (This : in out AppUrlGlobals) return Unbounded_String;
   procedure setWebappPath (This : in out AppUrlGlobals; path : Unbounded_String);
   function getTestHtmlPath (This : in out AppUrlGlobals) return Unbounded_String;
   function getMainPath (This : in out AppUrlGlobals) return Unbounded_String;

end org.allbinary.globals.AppUrlGlobals_Package;


