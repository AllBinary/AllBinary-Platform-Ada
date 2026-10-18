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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;

package org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type EmailServerConfiguration is tagged;
   type EmailServerConfiguration_Access is access all EmailServerConfiguration'Class;
   type EmailServerConfiguration_Access_Array is array (Natural range <>) of EmailServerConfiguration_Access;
   type EmailServerConfiguration_Access_Array_Access is access all EmailServerConfiguration_Access_Array;
   type EmailServerConfiguration_Access_Array_Access_Array is array (Natural range <>) of EmailServerConfiguration_Access_Array_Access;
   type EmailServerConfiguration_Access_Array_Access_Array_Access is access all EmailServerConfiguration_Access_Array_Access_Array;

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


