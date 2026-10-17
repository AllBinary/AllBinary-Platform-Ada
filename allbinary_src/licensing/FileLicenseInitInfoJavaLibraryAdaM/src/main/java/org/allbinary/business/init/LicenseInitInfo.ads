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
with org.allbinary.debug.DebugFactory_Package; use org.allbinary.debug.DebugFactory_Package;
with org.allbinary.debug.NoDebug_Package; use org.allbinary.debug.NoDebug_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.business.init.LicenseInitInfo_Package is

   package DebugFactory_Package renames Standard.org.allbinary.debug.DebugFactory_Package;
   package NoDebug_Package renames Standard.org.allbinary.debug.NoDebug_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type LicenseInitInfo is tagged;
   type LicenseInitInfo_Access is access all LicenseInitInfo'Class;
   type LicenseInitInfo_Access_Array is array (Natural range <>) of LicenseInitInfo_Access;
   type LicenseInitInfo_Access_Array_Access is access all LicenseInitInfo_Access_Array;

   type LicenseInitInfo is new Java_Object with record
      id : Unbounded_String;
      serverVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out LicenseInitInfo'Class);
   function Create return LicenseInitInfo_Access;
   function getLicenseId (This : in out LicenseInitInfo) return Unbounded_String;
   procedure getLicenseId (This : in out LicenseInitInfo);
   function getServer (This : in out LicenseInitInfo; index : Integer) return Unbounded_String;
   procedure getServer (This : in out LicenseInitInfo; index : Integer);
   function getNumberOfServers (This : in out LicenseInitInfo) return Integer;
   procedure getNumberOfServers (This : in out LicenseInitInfo);
   procedure setLicenseId (This : in out LicenseInitInfo; value : Unbounded_String);
   procedure clearServers (This : in out LicenseInitInfo);
   procedure setServer (This : in out LicenseInitInfo; value : Unbounded_String; index : Integer);
   procedure addServer (This : in out LicenseInitInfo; value : Unbounded_String);
   function getServerList (This : in out LicenseInitInfo) return BasicArrayList_Access;
   procedure getServerList (This : in out LicenseInitInfo);
   procedure setServerList (This : in out LicenseInitInfo; servers : BasicArrayList_Access);

end org.allbinary.business.init.LicenseInitInfo_Package;


