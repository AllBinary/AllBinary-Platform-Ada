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
limited with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package;
package org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References is
   type EmailServerConfiguration_Access is access all org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package.EmailServerConfiguration'Class;
   type EmailServerConfiguration_Access_Array is array (Natural range <>) of EmailServerConfiguration_Access;
   type EmailServerConfiguration_Access_Array_Access is access all EmailServerConfiguration_Access_Array;
   type EmailServerConfiguration_Access_Array_Access_Array is array (Natural range <>) of EmailServerConfiguration_Access_Array_Access;
   type EmailServerConfiguration_Access_Array_Access_Array_Access is access all EmailServerConfiguration_Access_Array_Access_Array;
   type EmailServerConfiguration_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EmailServerConfiguration_Access_Array_Access;
   end record;
   function Java_Box (Value : EmailServerConfiguration_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EmailServerConfiguration_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EmailServerConfiguration_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EmailServerConfiguration_Access_Array_Access is (if Value /= null and then Value.all in EmailServerConfiguration_Access_Array_Object'Class then EmailServerConfiguration_Access_Array_Object'Class (Value.all).Value else null);
   type EmailServerConfiguration_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EmailServerConfiguration_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EmailServerConfiguration_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EmailServerConfiguration_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EmailServerConfiguration_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EmailServerConfiguration_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EmailServerConfiguration_Access_Array_Access_Array_Object'Class then EmailServerConfiguration_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References;

with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;

package org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype EmailServerConfiguration_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References.EmailServerConfiguration_Access;
   function "=" (Left, Right : EmailServerConfiguration_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References."=";
   subtype EmailServerConfiguration_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References.EmailServerConfiguration_Access_Array;
   function "=" (Left, Right : EmailServerConfiguration_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References."=";
   subtype EmailServerConfiguration_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References.EmailServerConfiguration_Access_Array_Access;
   function "=" (Left, Right : EmailServerConfiguration_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References."=";
   function Java_Box (Value : EmailServerConfiguration_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References.Java_Box;
   function Java_Unbox_EmailServerConfiguration_Access_Array (Value : access Java_Object'Class) return EmailServerConfiguration_Access_Array_Access renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References.Java_Unbox_EmailServerConfiguration_Access_Array;
   subtype EmailServerConfiguration_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References.EmailServerConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : EmailServerConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References."=";
   subtype EmailServerConfiguration_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References.EmailServerConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailServerConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References."=";
   function Java_Box (Value : EmailServerConfiguration_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References.Java_Box;
   function Java_Unbox_EmailServerConfiguration_Access_Array_Access_Array (Value : access Java_Object'Class) return EmailServerConfiguration_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package_References.Java_Unbox_EmailServerConfiguration_Access_Array_Access_Array;

   type EmailServerConfiguration is new Java_Object and EmailServerConfigurationInterface with record
      logUtil : LogUtil_Access;
      accountName : Unbounded_String;
      password : Unbounded_String;
      smtpServer : Unbounded_String;
   end record;

   procedure Initialize (This : in out EmailServerConfiguration'Class);
   function Create return EmailServerConfiguration_Access;
   procedure Initialize (This : in out EmailServerConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return EmailServerConfiguration_Access;
   procedure Initialize (This : in out EmailServerConfiguration'Class; account : Unbounded_String; password : Unbounded_String; server : Unbounded_String);
   function Create (account : Unbounded_String; password : Unbounded_String; server : Unbounded_String) return EmailServerConfiguration_Access;
   procedure setSmtpServer (This : in out EmailServerConfiguration; value : Unbounded_String);
   function getSmtpServer (This : in out EmailServerConfiguration) return Unbounded_String;
   function getAccountName (This : in out EmailServerConfiguration) return Unbounded_String;
   procedure setAccountName (This : in out EmailServerConfiguration; accountName : Unbounded_String);
   function getPassword (This : in out EmailServerConfiguration) return Unbounded_String;
   procedure setPassword (This : in out EmailServerConfiguration; password : Unbounded_String);
   procedure log (This : in out EmailServerConfiguration);
   function toString (This : in out EmailServerConfiguration) return Unbounded_String;

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package;


