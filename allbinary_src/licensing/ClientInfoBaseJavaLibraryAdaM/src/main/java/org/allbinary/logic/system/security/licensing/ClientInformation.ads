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
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.SystemHardwareFactory_Package; use org.allbinary.logic.system.hardware.SystemHardwareFactory_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.NoOperatingSystem_Package; use org.allbinary.logic.system.os.NoOperatingSystem_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.logic.system.security.licensing.ClientInformation_Package is

   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package HardwareInterface_Package renames org.allbinary.logic.system.hardware.HardwareInterface_Package;
   package SystemHardwareFactory_Package renames org.allbinary.logic.system.hardware.SystemHardwareFactory_Package;
   package GenericOperatingSystem_Package renames org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package NoOperatingSystem_Package renames org.allbinary.logic.system.os.NoOperatingSystem_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames org.allbinary.util.BasicArrayListUtil_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type ClientInformation is tagged;
   type ClientInformation_Access is access all ClientInformation'Class;
   type ClientInformation_Access_Array is array (Natural range <>) of ClientInformation_Access;
   type ClientInformation_Access_Array_Access is access all ClientInformation_Access_Array;

   type ClientInformation is new AbeClientInformationInterface with record
      operatingSystemInterface : GenericOperatingSystem_Access;
      tsUtil : TsUtil_Access;
      name : Unbounded_String;
      shortName : Unbounded_String;
      version : Unbounded_String;
      specialName : Unbounded_String;
      hardSale : Boolean;
      licenseId : Unbounded_String;
      licenseServers : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out ClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String);
   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) return ClientInformation_Access;
   procedure init (This : in out ClientInformation);
   function getOperatingSystemInterface (This : in out ClientInformation) return GenericOperatingSystem_Access;
   procedure getOperatingSystemInterface (This : in out ClientInformation);
   function getName (This : in out ClientInformation) return Unbounded_String;
   procedure getName (This : in out ClientInformation);
   function getSpecialName (This : in out ClientInformation) return Unbounded_String;
   procedure getSpecialName (This : in out ClientInformation);
   function getVersion (This : in out ClientInformation) return Unbounded_String;
   procedure getVersion (This : in out ClientInformation);
   function getLicenseId (This : in out ClientInformation) return Unbounded_String;
   procedure getLicenseId (This : in out ClientInformation);
   function getLicenseServers (This : in out ClientInformation) return BasicArrayList_Access;
   procedure getLicenseServers (This : in out ClientInformation);
   function getLicenseServer (This : in out ClientInformation; index : Integer) return Unbounded_String;
   procedure getLicenseServer (This : in out ClientInformation; index : Integer);
   function getNumberOfLicenseServers (This : in out ClientInformation) return Integer;
   procedure getNumberOfLicenseServers (This : in out ClientInformation);
   function toHashtable (This : in out ClientInformation) return ABHashtable_Access;
   procedure toHashtable (This : in out ClientInformation);
   function isSameId (This : in out ClientInformation; alicenseId : Unbounded_String) return Boolean;
   procedure isSameId (This : in out ClientInformation; alicenseId : Unbounded_String);
   function isLargerOrDifferentServerList (This : in out ClientInformation; list : BasicArrayList_Access) return Boolean;
   procedure isLargerOrDifferentServerList (This : in out ClientInformation; list : BasicArrayList_Access);
   procedure setHardSale (This : in out ClientInformation; hardSale : Boolean);
   function isHardSale (This : in out ClientInformation) return Boolean;
   procedure isHardSale (This : in out ClientInformation);
   procedure setOperatingSystemInterface (This : in out ClientInformation; operatingSystemInterface : GenericOperatingSystem_Access);
   procedure setLicenseId (This : in out ClientInformation; licenseId : Unbounded_String);
   procedure setLicenseServers (This : in out ClientInformation; licenseServers : BasicArrayList_Access);
   function toShortString (This : in out ClientInformation) return Unbounded_String;
   procedure toShortString (This : in out ClientInformation);

end org.allbinary.logic.system.security.licensing.ClientInformation_Package;


