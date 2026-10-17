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
with org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package; use org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package; use org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.logic.communication.log.XmlRpcRemoteLogClient_Package is

   package XmlRpcClient_Package renames org.apache.xmlrpc.XmlRpcClient_Package;
   package XmlRpcException_Package renames org.apache.xmlrpc.XmlRpcException_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package XmlRpcAbeClient_Package renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
   package NoCrypt_Package renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type XmlRpcRemoteLogClient is tagged;
   type XmlRpcRemoteLogClient_Access is access all XmlRpcRemoteLogClient'Class;
   type XmlRpcRemoteLogClient_Access_Array is array (Natural range <>) of XmlRpcRemoteLogClient_Access;
   type XmlRpcRemoteLogClient_Access_Array_Access is access all XmlRpcRemoteLogClient_Access_Array;

   type XmlRpcRemoteLogClient is new XmlRpcAbeClient with record
      noCrypt : NoCrypt_Access;
   end record;

   procedure Initialize (This : in out XmlRpcRemoteLogClient'Class; clientInfo : AbeClientInformationInterface_Access);
   function Create (clientInfo : AbeClientInformationInterface_Access) return XmlRpcRemoteLogClient_Access;
   function get (This : in out XmlRpcRemoteLogClient; anyType : Java_Object_Access) return Java_Object_Access;
   procedure get (This : in out XmlRpcRemoteLogClient; anyType : Java_Object_Access);

end org.allbinary.logic.communication.log.XmlRpcRemoteLogClient_Package;


