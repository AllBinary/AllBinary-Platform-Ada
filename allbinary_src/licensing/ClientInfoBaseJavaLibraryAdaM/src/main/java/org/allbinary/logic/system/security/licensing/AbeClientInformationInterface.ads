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
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package is

   package GenericOperatingSystem_Package renames org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type AbeClientInformationInterface is interface;
   type AbeClientInformationInterface_Access is access all AbeClientInformationInterface'Class;
   type AbeClientInformationInterface_Access_Array is array (Natural range <>) of AbeClientInformationInterface_Access;
   type AbeClientInformationInterface_Access_Array_Access is access all AbeClientInformationInterface_Access_Array;
   procedure init (This : in out AbeClientInformationInterface) is abstract;
   function getOperatingSystemInterface (This : in out AbeClientInformationInterface) return GenericOperatingSystem_Access is abstract;
   function getName (This : in out AbeClientInformationInterface) return Unbounded_String is abstract;
   function getSpecialName (This : in out AbeClientInformationInterface) return Unbounded_String is abstract;
   function getVersion (This : in out AbeClientInformationInterface) return Unbounded_String is abstract;
   function getLicenseId (This : in out AbeClientInformationInterface) return Unbounded_String is abstract;
   function getLicenseServers (This : in out AbeClientInformationInterface) return BasicArrayList_Access is abstract;
   function getLicenseServer (This : in out AbeClientInformationInterface; index : Integer) return Unbounded_String is abstract;
   function getNumberOfLicenseServers (This : in out AbeClientInformationInterface) return Integer is abstract;
   function toHashtable (This : in out AbeClientInformationInterface) return ABHashtable_Access is abstract;
   function isSameId (This : in out AbeClientInformationInterface; alicenseId : Unbounded_String) return Boolean is abstract;
   function isLargerOrDifferentServerList (This : in out AbeClientInformationInterface; vector : BasicArrayList_Access) return Boolean is abstract;
   function isHardSale (This : in out AbeClientInformationInterface) return Boolean is abstract;
   function toShortString (This : in out AbeClientInformationInterface) return Unbounded_String is abstract;

end org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;


