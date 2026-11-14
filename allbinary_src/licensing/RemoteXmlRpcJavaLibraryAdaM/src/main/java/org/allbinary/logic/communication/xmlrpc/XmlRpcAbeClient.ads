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

with AllBinary_Java;
limited with org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package;
package org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References is
   type XmlRpcAbeClient_Access is access all org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package.XmlRpcAbeClient'Class;
   type XmlRpcAbeClient_Access_Array is array (Natural range <>) of XmlRpcAbeClient_Access;
   type XmlRpcAbeClient_Access_Array_Access is access all XmlRpcAbeClient_Access_Array;
   type XmlRpcAbeClient_Access_Array_Access_Array is array (Natural range <>) of XmlRpcAbeClient_Access_Array_Access;
   type XmlRpcAbeClient_Access_Array_Access_Array_Access is access all XmlRpcAbeClient_Access_Array_Access_Array;
   type XmlRpcAbeClient_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XmlRpcAbeClient_Access_Array_Access;
   end record;
   function Java_Box (Value : XmlRpcAbeClient_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XmlRpcAbeClient_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XmlRpcAbeClient_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XmlRpcAbeClient_Access_Array_Access is (if Value /= null and then Value.all in XmlRpcAbeClient_Access_Array_Object'Class then XmlRpcAbeClient_Access_Array_Object'Class (Value.all).Value else null);
   type XmlRpcAbeClient_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XmlRpcAbeClient_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : XmlRpcAbeClient_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XmlRpcAbeClient_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XmlRpcAbeClient_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XmlRpcAbeClient_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in XmlRpcAbeClient_Access_Array_Access_Array_Object'Class then XmlRpcAbeClient_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References;

with org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.rand.MyRandomFactory_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.apache.xmlrpc.XmlRpcClient_Package;
with org.apache.xmlrpc.XmlRpcClient_Package_References;
limited with org.apache.xmlrpc.XmlRpcHandler_Package;
with org.apache.xmlrpc.XmlRpcHandler_Package_References;

package org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package is

   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package XmlRpcClient_Package renames Standard.org.apache.xmlrpc.XmlRpcClient_Package;
   package XmlRpcHandler_Package renames Standard.org.apache.xmlrpc.XmlRpcHandler_Package;
   package Reference_Types is
   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   use type MyRandomFactory_Access;
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   use type MyRandomFactory_Access_Array;
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access;
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   use type MyRandomFactory_Access_Array_Access_Array;
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access_Array_Access;
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
   subtype XmlRpcClient_Access is org.apache.xmlrpc.XmlRpcClient_Package_References.XmlRpcClient_Access;
   use type XmlRpcClient_Access;
   subtype XmlRpcClient_Access_Array is org.apache.xmlrpc.XmlRpcClient_Package_References.XmlRpcClient_Access_Array;
   use type XmlRpcClient_Access_Array;
   subtype XmlRpcClient_Access_Array_Access is org.apache.xmlrpc.XmlRpcClient_Package_References.XmlRpcClient_Access_Array_Access;
   use type XmlRpcClient_Access_Array_Access;
   subtype XmlRpcClient_Access_Array_Access_Array is org.apache.xmlrpc.XmlRpcClient_Package_References.XmlRpcClient_Access_Array_Access_Array;
   use type XmlRpcClient_Access_Array_Access_Array;
   subtype XmlRpcClient_Access_Array_Access_Array_Access is org.apache.xmlrpc.XmlRpcClient_Package_References.XmlRpcClient_Access_Array_Access_Array_Access;
   use type XmlRpcClient_Access_Array_Access_Array_Access;
   subtype XmlRpcHandler_Access is org.apache.xmlrpc.XmlRpcHandler_Package_References.XmlRpcHandler_Access;
   use type XmlRpcHandler_Access;
   subtype XmlRpcHandler_Access_Array is org.apache.xmlrpc.XmlRpcHandler_Package_References.XmlRpcHandler_Access_Array;
   use type XmlRpcHandler_Access_Array;
   subtype XmlRpcHandler_Access_Array_Access is org.apache.xmlrpc.XmlRpcHandler_Package_References.XmlRpcHandler_Access_Array_Access;
   use type XmlRpcHandler_Access_Array_Access;
   subtype XmlRpcHandler_Access_Array_Access_Array is org.apache.xmlrpc.XmlRpcHandler_Package_References.XmlRpcHandler_Access_Array_Access_Array;
   use type XmlRpcHandler_Access_Array_Access_Array;
   subtype XmlRpcHandler_Access_Array_Access_Array_Access is org.apache.xmlrpc.XmlRpcHandler_Package_References.XmlRpcHandler_Access_Array_Access_Array_Access;
   use type XmlRpcHandler_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype XmlRpcAbeClient_Access is org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References.XmlRpcAbeClient_Access;
   function "=" (Left, Right : XmlRpcAbeClient_Access) return Boolean renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References."=";
   subtype XmlRpcAbeClient_Access_Array is org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References.XmlRpcAbeClient_Access_Array;
   function "=" (Left, Right : XmlRpcAbeClient_Access_Array) return Boolean renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References."=";
   subtype XmlRpcAbeClient_Access_Array_Access is org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References.XmlRpcAbeClient_Access_Array_Access;
   function "=" (Left, Right : XmlRpcAbeClient_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References."=";
   function Java_Box (Value : XmlRpcAbeClient_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References.Java_Box;
   function Java_Unbox_XmlRpcAbeClient_Access_Array (Value : access Java_Object'Class) return XmlRpcAbeClient_Access_Array_Access renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References.Java_Unbox_XmlRpcAbeClient_Access_Array;
   subtype XmlRpcAbeClient_Access_Array_Access_Array is org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References.XmlRpcAbeClient_Access_Array_Access_Array;
   function "=" (Left, Right : XmlRpcAbeClient_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References."=";
   subtype XmlRpcAbeClient_Access_Array_Access_Array_Access is org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References.XmlRpcAbeClient_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XmlRpcAbeClient_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References."=";
   function Java_Box (Value : XmlRpcAbeClient_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References.Java_Box;
   function Java_Unbox_XmlRpcAbeClient_Access_Array_Access_Array (Value : access Java_Object'Class) return XmlRpcAbeClient_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient_Package_References.Java_Unbox_XmlRpcAbeClient_Access_Array_Access_Array;

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


