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
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.util.Calendar_Package; use java.util.Calendar_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.client.AbeLicenseClient_Package; use org.allbinary.logic.system.security.licensing.client.AbeLicenseClient_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeLicenseClient_Package renames Standard.org.allbinary.logic.system.security.licensing.client.AbeLicenseClient_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AbeLicenseInterfaceFactory is tagged;
   type AbeLicenseInterfaceFactory_Access is access all AbeLicenseInterfaceFactory'Class;
   type AbeLicenseInterfaceFactory_Access_Array is array (Natural range <>) of AbeLicenseInterfaceFactory_Access;
   type AbeLicenseInterfaceFactory_Access_Array_Access is access all AbeLicenseInterfaceFactory_Access_Array;

   type AbeLicenseInterfaceFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      time : Long_Long_Integer;
      check : Boolean;
      checkPeriod : Integer;
      abeLicenseInterface : AbeLicenseInterface_Access;
   end record;
   SINGLETON : AbeLicenseInterfaceFactory_Access;

   procedure Initialize (This : in out AbeLicenseInterfaceFactory'Class);
   function Create return AbeLicenseInterfaceFactory_Access;
   function getInstance return AbeLicenseInterfaceFactory_Access;
   procedure getInstance;
   function getLicenseInstance (This : in out AbeLicenseInterfaceFactory; abeClientInformation : AbeClientInformationInterface_Access) return AbeLicenseInterface_Access;
   procedure getLicenseInstance (This : in out AbeLicenseInterfaceFactory; abeClientInformation : AbeClientInformationInterface_Access);
   function get (This : in out AbeLicenseInterfaceFactory; abeClientInformation : AbeClientInformationInterface_Access) return AbeLicenseInterface_Access;
   procedure get (This : in out AbeLicenseInterfaceFactory; abeClientInformation : AbeClientInformationInterface_Access);
   function isTimeToGetKey (This : in out AbeLicenseInterfaceFactory) return Boolean;
   procedure isTimeToGetKey (This : in out AbeLicenseInterfaceFactory);
   procedure setCheck (This : in out AbeLicenseInterfaceFactory; check : Boolean);
   function isCheck (This : in out AbeLicenseInterfaceFactory) return Boolean;
   procedure isCheck (This : in out AbeLicenseInterfaceFactory);

end org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;


