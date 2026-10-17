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
with com.google.gwt.i18n.client.DateTimeFormat_Package; use com.google.gwt.i18n.client.DateTimeFormat_Package;
with java.util.Date_Package; use java.util.Date_Package;

package org.allbinary.time.TimeStampUtil_Package is

   package DateTimeFormat_Package renames Standard.com.google.gwt.i18n.client.DateTimeFormat_Package;
   package Date_Package renames Standard.java.util.Date_Package;

   type TimeStampUtil is tagged;
   type TimeStampUtil_Access is access all TimeStampUtil'Class;
   type TimeStampUtil_Access_Array is array (Natural range <>) of TimeStampUtil_Access;
   type TimeStampUtil_Access_Array_Access is access all TimeStampUtil_Access_Array;

   type TimeStampUtil is new Java_Object with null record;
   instance : TimeStampUtil_Access;

   procedure Initialize (This : in out TimeStampUtil'Class);
   function Create return TimeStampUtil_Access;
   function getInstance return TimeStampUtil_Access;
   function getAsString (This : in out TimeStampUtil) return Unbounded_String;

end org.allbinary.time.TimeStampUtil_Package;


