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
with org.apache.xmlrpc.XmlRpcClient_Package; use org.apache.xmlrpc.XmlRpcClient_Package;
with org.apache.xmlrpc.XmlRpcException_Package; use org.apache.xmlrpc.XmlRpcException_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package; use org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package; use org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package is

   package XmlRpcClient_Package renames org.apache.xmlrpc.XmlRpcClient_Package;
   package XmlRpcException_Package renames org.apache.xmlrpc.XmlRpcException_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package CryptInterface_Package renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package XmlRpcAbeClient_Package renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
   package ExceptionUtil_Package renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type XmlRpcRemoteLicenseRegistrationClient is tagged;
   type XmlRpcRemoteLicenseRegistrationClient_Access is access all XmlRpcRemoteLicenseRegistrationClient'Class;
   type XmlRpcRemoteLicenseRegistrationClient_Access_Array is array (Natural range <>) of XmlRpcRemoteLicenseRegistrationClient_Access;
   type XmlRpcRemoteLicenseRegistrationClient_Access_Array_Access is access all XmlRpcRemoteLicenseRegistrationClient_Access_Array;

   type XmlRpcRemoteLicenseRegistrationClient is new XmlRpcAbeClient with record
      logUtil : LogUtil_Access;
      PAGE : Unbounded_String;
   end record;

   procedure Initialize (This : in out XmlRpcRemoteLicenseRegistrationClient'Class; clientInfo : AbeClientInformationInterface_Access);
   function Create (clientInfo : AbeClientInformationInterface_Access) return XmlRpcRemoteLicenseRegistrationClient_Access;
   function get (This : in out XmlRpcRemoteLicenseRegistrationClient; anyType : Java_Object_Access; cryptInterface : CryptInterface_Access) return Java_Object_Access;
   procedure get (This : in out XmlRpcRemoteLicenseRegistrationClient; anyType : Java_Object_Access; cryptInterface : CryptInterface_Access);

end org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package;


