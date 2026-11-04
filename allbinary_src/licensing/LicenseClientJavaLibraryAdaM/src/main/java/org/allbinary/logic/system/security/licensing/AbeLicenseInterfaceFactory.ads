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

limited with org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;
package org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References is
   type AbeLicenseInterfaceFactory_Access is access all org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package.AbeLicenseInterfaceFactory'Class;
   type AbeLicenseInterfaceFactory_Access_Array is array (Natural range <>) of AbeLicenseInterfaceFactory_Access;
   type AbeLicenseInterfaceFactory_Access_Array_Access is access all AbeLicenseInterfaceFactory_Access_Array;
   type AbeLicenseInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of AbeLicenseInterfaceFactory_Access_Array_Access;
   type AbeLicenseInterfaceFactory_Access_Array_Access_Array_Access is access all AbeLicenseInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References;

with org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AbeLicenseInterface_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access;
   use type AbeLicenseInterface_Access;
   subtype AbeLicenseInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array;
   use type AbeLicenseInterface_Access_Array;
   subtype AbeLicenseInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access;
   use type AbeLicenseInterface_Access_Array_Access;
   subtype AbeLicenseInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access_Array;
   use type AbeLicenseInterface_Access_Array_Access_Array;
   subtype AbeLicenseInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access_Array_Access;
   use type AbeLicenseInterface_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbeLicenseInterfaceFactory_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References.AbeLicenseInterfaceFactory_Access;
   function "=" (Left, Right : AbeLicenseInterfaceFactory_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References."=";
   subtype AbeLicenseInterfaceFactory_Access_Array is org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References.AbeLicenseInterfaceFactory_Access_Array;
   function "=" (Left, Right : AbeLicenseInterfaceFactory_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References."=";
   subtype AbeLicenseInterfaceFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References.AbeLicenseInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : AbeLicenseInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References."=";
   subtype AbeLicenseInterfaceFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References.AbeLicenseInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AbeLicenseInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References."=";
   subtype AbeLicenseInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References.AbeLicenseInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeLicenseInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package_References."=";

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
   function getLicenseInstance (This : in out AbeLicenseInterfaceFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return AbeLicenseInterface_Access;
   procedure getLicenseInstance (This : in out AbeLicenseInterfaceFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   function get (This : in out AbeLicenseInterfaceFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return AbeLicenseInterface_Access;
   procedure get (This : in out AbeLicenseInterfaceFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   function isTimeToGetKey (This : in out AbeLicenseInterfaceFactory) return Boolean;
   procedure setCheck (This : in out AbeLicenseInterfaceFactory; check : Boolean);
   function isCheck (This : in out AbeLicenseInterfaceFactory) return Boolean;

end org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;


