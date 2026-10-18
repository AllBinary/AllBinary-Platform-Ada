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
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;

package org.allbinary.logic.system.security.licensing.LicenseUtil_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;

   type LicenseUtil is tagged;
   type LicenseUtil_Access is access all LicenseUtil'Class;
   type LicenseUtil_Access_Array is array (Natural range <>) of LicenseUtil_Access;
   type LicenseUtil_Access_Array_Access is access all LicenseUtil_Access_Array;
   type LicenseUtil_Access_Array_Access_Array is array (Natural range <>) of LicenseUtil_Access_Array_Access;
   type LicenseUtil_Access_Array_Access_Array_Access is access all LicenseUtil_Access_Array_Access_Array;

   type LicenseUtil is new Java_Object with null record;
   instance : LicenseUtil_Access;

   procedure Initialize (This : in out LicenseUtil'Class);
   function Create return LicenseUtil_Access;
   function getInstance return LicenseUtil_Access;
   procedure init (This : in out LicenseUtil);
   function isRunning (This : in out LicenseUtil) return Boolean;
   procedure setRunning (This : in out LicenseUtil; running : Boolean);
   function shouldWait (This : in out LicenseUtil; commandListener_Param : access CommandListener_Package.CommandListener'Class) return Boolean;
   procedure shouldWait (This : in out LicenseUtil; commandListener_Param : access CommandListener_Package.CommandListener'Class);

end org.allbinary.logic.system.security.licensing.LicenseUtil_Package;


