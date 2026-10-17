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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package org.allbinary.logic.system.security.AbKeys_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package AbeLicenseInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type AbKeys is tagged;
   type AbKeys_Access is access all AbKeys'Class;
   type AbKeys_Access_Array is array (Natural range <>) of AbKeys_Access;
   type AbKeys_Access_Array_Access is access all AbKeys_Access_Array;

   type AbKeys is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : AbKeys_Access;

   procedure Initialize (This : in out AbKeys'Class);
   function Create return AbKeys_Access;
   function getInstance return AbKeys_Access;
   function getKey (This : in out AbKeys; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; keyName : Unbounded_String) return Unbounded_String;
   procedure getKey (This : in out AbKeys; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; keyName : Unbounded_String);

end org.allbinary.logic.system.security.AbKeys_Package;


