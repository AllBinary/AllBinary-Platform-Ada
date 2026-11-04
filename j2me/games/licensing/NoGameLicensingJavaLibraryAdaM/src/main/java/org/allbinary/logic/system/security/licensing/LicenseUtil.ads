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

limited with org.allbinary.logic.system.security.licensing.LicenseUtil_Package;
package org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References is
   type LicenseUtil_Access is access all org.allbinary.logic.system.security.licensing.LicenseUtil_Package.LicenseUtil'Class;
   type LicenseUtil_Access_Array is array (Natural range <>) of LicenseUtil_Access;
   type LicenseUtil_Access_Array_Access is access all LicenseUtil_Access_Array;
   type LicenseUtil_Access_Array_Access_Array is array (Natural range <>) of LicenseUtil_Access_Array_Access;
   type LicenseUtil_Access_Array_Access_Array_Access is access all LicenseUtil_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References;

with org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;

package org.allbinary.logic.system.security.licensing.LicenseUtil_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Reference_Types is
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LicenseUtil_Access is org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References.LicenseUtil_Access;
   function "=" (Left, Right : LicenseUtil_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References."=";
   subtype LicenseUtil_Access_Array is org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References.LicenseUtil_Access_Array;
   function "=" (Left, Right : LicenseUtil_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References."=";
   subtype LicenseUtil_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References.LicenseUtil_Access_Array_Access;
   function "=" (Left, Right : LicenseUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References."=";
   subtype LicenseUtil_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References.LicenseUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References."=";
   subtype LicenseUtil_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References.LicenseUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseUtil_Package_References."=";

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


