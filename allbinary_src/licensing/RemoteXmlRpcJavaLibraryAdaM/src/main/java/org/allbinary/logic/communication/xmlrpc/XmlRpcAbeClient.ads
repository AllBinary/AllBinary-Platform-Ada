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
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.apache.xmlrpc.XmlRpcClient_Package; use org.apache.xmlrpc.XmlRpcClient_Package;
with org.apache.xmlrpc.XmlRpcHandler_Package; use org.apache.xmlrpc.XmlRpcHandler_Package;

package org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package is

   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package XmlRpcClient_Package renames Standard.org.apache.xmlrpc.XmlRpcClient_Package;
   package XmlRpcHandler_Package renames Standard.org.apache.xmlrpc.XmlRpcHandler_Package;

   type XmlRpcAbeClient is tagged;
   type XmlRpcAbeClient_Access is access all XmlRpcAbeClient'Class;
   type XmlRpcAbeClient_Access_Array is array (Natural range <>) of XmlRpcAbeClient_Access;
   type XmlRpcAbeClient_Access_Array_Access is access all XmlRpcAbeClient_Access_Array;
   type XmlRpcAbeClient_Access_Array_Access_Array is array (Natural range <>) of XmlRpcAbeClient_Access_Array_Access;
   type XmlRpcAbeClient_Access_Array_Access_Array_Access is access all XmlRpcAbeClient_Access_Array_Access_Array;

   type XmlRpcAbeClient is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      remoteMethod : Unbounded_String;
      clientInfo : AbeClientInformationInterface_Access;
      client : XmlRpcHandler_Access;
      server : Integer;
      start : Integer;
      maxServers : Integer;
      isDone : Boolean;
      START_SERVER : Unbounded_String;
      TRYING : Unbounded_String;
      SEP : Unbounded_String;
      CLIENT_INFO : Unbounded_String;
      RESULT : Unbounded_String;
      INVALID : Unbounded_String;
      EXCEPTION_IN_CLIENT : Unbounded_String;
      SERVER_REPORTED_ERROR : Unbounded_String;
      UNKNOWN_ERROR : Unbounded_String;
      TRYING_OTHER_SERVERS : Unbounded_String;
      HOST_NOT_RESOLVED_MSG : Unbounded_String;
      HOST_NOT_RESOLVED : Unbounded_String;
      myRandomFactory : MyRandomFactory_Access;
   end record;
   isOnline : Boolean;

   procedure Initialize (This : in out XmlRpcAbeClient'Class; clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; remoteMethod : Unbounded_String);
   function Create (clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; remoteMethod : Unbounded_String) return XmlRpcAbeClient_Access;
   function get (This : in out XmlRpcAbeClient; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure get (This : in out XmlRpcAbeClient; anyType_Param : access Java_Object'Class);
   function tryAnother (This : in out XmlRpcAbeClient; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure tryAnother (This : in out XmlRpcAbeClient; anyType_Param : access Java_Object'Class);
   function getClientInfo (This : in out XmlRpcAbeClient) return AbeClientInformationInterface_Access;
   function getClient (This : in out XmlRpcAbeClient) return XmlRpcHandler_Access;
   procedure setClient (This : in out XmlRpcAbeClient; client_Param : access XmlRpcClient_Package.XmlRpcClient'Class);
   function getServer (This : in out XmlRpcAbeClient) return Integer;
   procedure setServer (This : in out XmlRpcAbeClient; server : Integer);
   function getStart (This : in out XmlRpcAbeClient) return Integer;
   procedure setStart (This : in out XmlRpcAbeClient; start : Integer);
   function getMaxServers (This : in out XmlRpcAbeClient) return Integer;
   procedure setMaxServers (This : in out XmlRpcAbeClient; maxServers : Integer);
   function isIsDone (This : in out XmlRpcAbeClient) return Boolean;
   procedure setIsDone (This : in out XmlRpcAbeClient; isDone : Boolean);
   function getRemoteMethod (This : in out XmlRpcAbeClient) return Unbounded_String;
   function get (This : in out XmlRpcAbeClient; Value : Unbounded_String) return Java_Object_Access;
   procedure get (This : in out XmlRpcAbeClient; Value : Unbounded_String);
   function tryAnother (This : in out XmlRpcAbeClient; Value : Unbounded_String) return Java_Object_Access;
   procedure tryAnother (This : in out XmlRpcAbeClient; Value : Unbounded_String);

end org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;


