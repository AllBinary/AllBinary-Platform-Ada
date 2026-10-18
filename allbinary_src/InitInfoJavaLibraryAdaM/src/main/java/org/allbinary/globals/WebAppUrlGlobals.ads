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
with org.allbinary.globals.UrlGlobalsInterface_Package; use org.allbinary.globals.UrlGlobalsInterface_Package;

package org.allbinary.globals.WebAppUrlGlobals_Package is


   type WebAppUrlGlobals is tagged;
   type WebAppUrlGlobals_Access is access all WebAppUrlGlobals'Class;
   type WebAppUrlGlobals_Access_Array is array (Natural range <>) of WebAppUrlGlobals_Access;
   type WebAppUrlGlobals_Access_Array_Access is access all WebAppUrlGlobals_Access_Array;
   type WebAppUrlGlobals_Access_Array_Access_Array is array (Natural range <>) of WebAppUrlGlobals_Access_Array_Access;
   type WebAppUrlGlobals_Access_Array_Access_Array_Access is access all WebAppUrlGlobals_Access_Array_Access_Array;

   type WebAppUrlGlobals is new UrlGlobalsInterface with record
      path : Unbounded_String;
      isWebappPathSet : Boolean;
   end record;

   procedure Initialize (This : in out WebAppUrlGlobals'Class);
   function Create return WebAppUrlGlobals_Access;
   function isTestingMode (This : in out WebAppUrlGlobals) return Boolean;
   function getWebappPath (This : in out WebAppUrlGlobals) return Unbounded_String;
   procedure setWebappPath (This : in out WebAppUrlGlobals; path_Param : Unbounded_String);
   function getTestHtmlPath (This : in out WebAppUrlGlobals) return Unbounded_String;
   function getMainPath (This : in out WebAppUrlGlobals) return Unbounded_String;

end org.allbinary.globals.WebAppUrlGlobals_Package;


