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
limited with org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package;
package org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References is
   type XmlRpcRemoteHighScoresClient_Access is access all org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package.XmlRpcRemoteHighScoresClient'Class;
   type XmlRpcRemoteHighScoresClient_Access_Array is array (Natural range <>) of XmlRpcRemoteHighScoresClient_Access;
   type XmlRpcRemoteHighScoresClient_Access_Array_Access is access all XmlRpcRemoteHighScoresClient_Access_Array;
   type XmlRpcRemoteHighScoresClient_Access_Array_Access_Array is array (Natural range <>) of XmlRpcRemoteHighScoresClient_Access_Array_Access;
   type XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Access is access all XmlRpcRemoteHighScoresClient_Access_Array_Access_Array;
   type XmlRpcRemoteHighScoresClient_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XmlRpcRemoteHighScoresClient_Access_Array_Access;
   end record;
   function Java_Box (Value : XmlRpcRemoteHighScoresClient_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XmlRpcRemoteHighScoresClient_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XmlRpcRemoteHighScoresClient_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XmlRpcRemoteHighScoresClient_Access_Array_Access is (if Value /= null and then Value.all in XmlRpcRemoteHighScoresClient_Access_Array_Object'Class then XmlRpcRemoteHighScoresClient_Access_Array_Object'Class (Value.all).Value else null);
   type XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XmlRpcRemoteHighScoresClient_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Object'Class then XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References;

with org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References;
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

package org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package is

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


   subtype XmlRpcRemoteHighScoresClient_Access is org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References.XmlRpcRemoteHighScoresClient_Access;
   function "=" (Left, Right : XmlRpcRemoteHighScoresClient_Access) return Boolean renames org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References."=";
   subtype XmlRpcRemoteHighScoresClient_Access_Array is org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References.XmlRpcRemoteHighScoresClient_Access_Array;
   function "=" (Left, Right : XmlRpcRemoteHighScoresClient_Access_Array) return Boolean renames org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References."=";
   subtype XmlRpcRemoteHighScoresClient_Access_Array_Access is org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References.XmlRpcRemoteHighScoresClient_Access_Array_Access;
   function "=" (Left, Right : XmlRpcRemoteHighScoresClient_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References."=";
   function Java_Box (Value : XmlRpcRemoteHighScoresClient_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References.Java_Box;
   function Java_Unbox_XmlRpcRemoteHighScoresClient_Access_Array (Value : access Java_Object'Class) return XmlRpcRemoteHighScoresClient_Access_Array_Access renames org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References.Java_Unbox_XmlRpcRemoteHighScoresClient_Access_Array;
   subtype XmlRpcRemoteHighScoresClient_Access_Array_Access_Array is org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References.XmlRpcRemoteHighScoresClient_Access_Array_Access_Array;
   function "=" (Left, Right : XmlRpcRemoteHighScoresClient_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References."=";
   subtype XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References.XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References."=";
   function Java_Box (Value : XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References.Java_Box;
   function Java_Unbox_XmlRpcRemoteHighScoresClient_Access_Array_Access_Array (Value : access Java_Object'Class) return XmlRpcRemoteHighScoresClient_Access_Array_Access_Array_Access renames org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package_References.Java_Unbox_XmlRpcRemoteHighScoresClient_Access_Array_Access_Array;

   type XmlRpcRemoteHighScoresClient is new XmlRpcAbeClient with record
      logUtil : LogUtil_Access;
      page : Unbounded_String;
   end record;

   procedure Initialize (This : in out XmlRpcRemoteHighScoresClient'Class; clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; page : Unbounded_String; remoteMethod : Unbounded_String);
   function Create (clientInfo_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; page : Unbounded_String; remoteMethod : Unbounded_String) return XmlRpcRemoteHighScoresClient_Access;
   function get (This : in out XmlRpcRemoteHighScoresClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return Java_Object_Access;
   procedure get (This : in out XmlRpcRemoteHighScoresClient; anyType_Param : access Java_Object'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class);

end org.allbinary.game.score.remote.XmlRpcRemoteHighScoresClient_Package;


