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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type BasicEmailInfo is tagged;
   type BasicEmailInfo_Access is access all BasicEmailInfo'Class;
   type BasicEmailInfo_Access_Array is array (Natural range <>) of BasicEmailInfo_Access;
   type BasicEmailInfo_Access_Array_Access is access all BasicEmailInfo_Access_Array;

   type BasicEmailInfo is new Java_Object with record
      logUtil : LogUtil_Access;
      subject : Unbounded_String;
      textBody : Unbounded_String;
      emailServerConfigurationInterface : EmailServerConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out BasicEmailInfo'Class; subject : Unbounded_String; textBody : Unbounded_String);
   function Create (subject : Unbounded_String; textBody : Unbounded_String) return BasicEmailInfo_Access;
   function getSubject (This : in out BasicEmailInfo) return Unbounded_String;
   function getTextBody (This : in out BasicEmailInfo) return Unbounded_String;
   function getEmailServerConfigurationInterface (This : in out BasicEmailInfo) return EmailServerConfigurationInterface_Access;
   procedure setEmailServerConfigurationInterface (This : in out BasicEmailInfo; emailServerConfigurationInterface : EmailServerConfigurationInterface_Access);
   function toString (This : in out BasicEmailInfo) return Unbounded_String;
   procedure init (This : in out BasicEmailInfo);

end org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;


