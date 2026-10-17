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

package org.allbinary.globals.UrlGlobalsInterface_Package is

   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type UrlGlobalsInterface is tagged;
   type UrlGlobalsInterface_Access is access all UrlGlobalsInterface'Class;
   type UrlGlobalsInterface_Access_Array is array (Natural range <>) of UrlGlobalsInterface_Access;
   type UrlGlobalsInterface_Access_Array_Access is access all UrlGlobalsInterface_Access_Array;

   type UrlGlobalsInterface is new Java_Object with null record;

   procedure Initialize (This : in out UrlGlobalsInterface'Class);
   function Create return UrlGlobalsInterface_Access;
   function getMainPath (This : in out UrlGlobalsInterface) return Unbounded_String;
   procedure getMainPath (This : in out UrlGlobalsInterface);
   function getTestHtmlPath (This : in out UrlGlobalsInterface) return Unbounded_String;
   procedure getTestHtmlPath (This : in out UrlGlobalsInterface);
   function getWebappPath (This : in out UrlGlobalsInterface) return Unbounded_String;
   procedure getWebappPath (This : in out UrlGlobalsInterface);
   function isTestingMode (This : in out UrlGlobalsInterface) return Boolean;
   procedure isTestingMode (This : in out UrlGlobalsInterface);

end org.allbinary.globals.UrlGlobalsInterface_Package;


