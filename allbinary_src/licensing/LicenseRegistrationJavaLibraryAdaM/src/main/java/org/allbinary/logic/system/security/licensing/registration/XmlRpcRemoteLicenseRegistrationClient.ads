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
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package; use org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package is

   package CryptInterface_Package renames Standard.org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package XmlRpcAbeClient_Package renames Standard.org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type XmlRpcRemoteLicenseRegistrationClient is tagged;
   type XmlRpcRemoteLicenseRegistrationClient_Access is access all XmlRpcRemoteLicenseRegistrationClient'Class;
   type XmlRpcRemoteLicenseRegistrationClient_Access_Array is array (Natural range <>) of XmlRpcRemoteLicenseRegistrationClient_Access;
   type XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access is access all XmlRpcRemoteLicenseRegistrationClient_Access_Array;
   type XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array is array (Natural range <>) of XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access;
   type XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array_Access is access all XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access_Array;

   type XmlRpcRemoteLicenseRegistrationClient is new XmlRpcAbeClient with record
      logUtil : LogUtil_Access;
      PAGE : Unbounded_String;
   end record;

   procedure Initialize (This : in out XmlRpcRemoteLicenseRegistrationClient'Class; clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   function Create (clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return XmlRpcRemoteLicenseRegistrationClient_Access;
   function get (This : in out XmlRpcRemoteLicenseRegistrationClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return Java_Object_Access;
   procedure get (This : in out XmlRpcRemoteLicenseRegistrationClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class);

end org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package;


