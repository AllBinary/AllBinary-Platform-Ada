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

limited with org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package;
package org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References is
   type XmlRpcRemoteLicenseRegistrationClient_Access is access all org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package.XmlRpcRemoteLicenseRegistrationClient'Class;
   type XmlRpcRemoteLicenseRegistrationClient_Access_Array is array (Natural range <>) of XmlRpcRemoteLicenseRegistrationClient_Access;
   type XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access is access all XmlRpcRemoteLicenseRegistrationClient_Access_Array;
   type XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array is array (Natural range <>) of XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access;
   type XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array_Access is access all XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References;

with org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
limited with org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package; use org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package is

   package CryptInterface_Package renames Standard.org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package XmlRpcAbeClient_Package renames Standard.org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype CryptInterface_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access;
   use type CryptInterface_Access;
   subtype CryptInterface_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array;
   use type CryptInterface_Access_Array;
   subtype CryptInterface_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access;
   use type CryptInterface_Access_Array_Access;
   subtype CryptInterface_Access_Array_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array;
   use type CryptInterface_Access_Array_Access_Array;
   subtype CryptInterface_Access_Array_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array_Access;
   use type CryptInterface_Access_Array_Access_Array_Access;
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


   subtype XmlRpcRemoteLicenseRegistrationClient_Access is org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References.XmlRpcRemoteLicenseRegistrationClient_Access;
   function "=" (Left, Right : XmlRpcRemoteLicenseRegistrationClient_Access) return Boolean renames org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References."=";
   subtype XmlRpcRemoteLicenseRegistrationClient_Access_Array is org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References.XmlRpcRemoteLicenseRegistrationClient_Access_Array;
   function "=" (Left, Right : XmlRpcRemoteLicenseRegistrationClient_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References."=";
   subtype XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access is org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References.XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access;
   function "=" (Left, Right : XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References."=";
   subtype XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References.XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array;
   function "=" (Left, Right : XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References."=";
   subtype XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References.XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package_References."=";

   type XmlRpcRemoteLicenseRegistrationClient is new XmlRpcAbeClient with record
      logUtil : LogUtil_Access;
      PAGE : Unbounded_String;
   end record;

   procedure Initialize (This : in out XmlRpcRemoteLicenseRegistrationClient'Class; clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   function Create (clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return XmlRpcRemoteLicenseRegistrationClient_Access;
   function get (This : in out XmlRpcRemoteLicenseRegistrationClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return Java_Object_Access;
   procedure get (This : in out XmlRpcRemoteLicenseRegistrationClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class);

end org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package;


