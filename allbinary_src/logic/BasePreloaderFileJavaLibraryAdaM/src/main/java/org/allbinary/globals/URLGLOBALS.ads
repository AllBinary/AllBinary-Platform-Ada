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
with org.allbinary.globals.AppUrlGlobals_Package; use org.allbinary.globals.AppUrlGlobals_Package;
with org.allbinary.globals.UrlGlobalsInterface_Package; use org.allbinary.globals.UrlGlobalsInterface_Package;

package org.allbinary.globals.URLGLOBALS_Package is


   type URLGLOBALS is tagged;
   type URLGLOBALS_Access is access all URLGLOBALS'Class;
   type URLGLOBALS_Access_Array is array (Natural range <>) of URLGLOBALS_Access;
   type URLGLOBALS_Access_Array_Access is access all URLGLOBALS_Access_Array;

   type URLGLOBALS is new Java_Object with null record;
   urlGlobalsInterface : UrlGlobalsInterface_Access;

   procedure Initialize (This : in out URLGLOBALS'Class);
   function Create return URLGLOBALS_Access;
   procedure init (urlGlobalsInterface : UrlGlobalsInterface_Access);
   function isTestingMode return Boolean;
   function getWebappPath return Unbounded_String;
   function getTestHtmlPath return Unbounded_String;
   function getMainPath return Unbounded_String;

end org.allbinary.globals.URLGLOBALS_Package;


