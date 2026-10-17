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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;

package org.allbinary.logic.communication.smtp.info.EmailInfo_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type EmailInfo is tagged;
   type EmailInfo_Access is access all EmailInfo'Class;
   type EmailInfo_Access_Array is array (Natural range <>) of EmailInfo_Access;
   type EmailInfo_Access_Array_Access is access all EmailInfo_Access_Array;

   type EmailInfo is new Java_Object with record
      logUtil : LogUtil_Access;
      basicEmailInfo : BasicEmailInfo_Access;
      htmlAttachment : Unbounded_String;
      contentBase : Unbounded_String;
   end record;

   procedure Initialize (This : in out EmailInfo'Class; basicEmailInfo_Param : access BasicEmailInfo_Package.BasicEmailInfo'Class);
   function Create (basicEmailInfo_Param : access BasicEmailInfo_Package.BasicEmailInfo'Class) return EmailInfo_Access;
   procedure Initialize (This : in out EmailInfo'Class; basicEmailInfo_Param : access BasicEmailInfo_Package.BasicEmailInfo'Class; htmlAttachment : Unbounded_String; contentBase : Unbounded_String);
   function Create (basicEmailInfo_Param : access BasicEmailInfo_Package.BasicEmailInfo'Class; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) return EmailInfo_Access;
   procedure init (This : in out EmailInfo; basicEmailInfo_Param : access BasicEmailInfo_Package.BasicEmailInfo'Class; htmlAttachment : Unbounded_String; contentBase : Unbounded_String);
   function getBasicEmailInfo (This : in out EmailInfo) return BasicEmailInfo_Access;
   function getHtmlAttachment (This : in out EmailInfo) return Unbounded_String;
   function getContentBase (This : in out EmailInfo) return Unbounded_String;
   function toString (This : in out EmailInfo) return Unbounded_String;

end org.allbinary.logic.communication.smtp.info.EmailInfo_Package;


