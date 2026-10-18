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
--  with java.util.EventObject_Package; use java.util.EventObject_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package; use org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;

package org.allbinary.logic.communication.smtp.event.EmailEvent_Package is

   package EmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.EmailInfo_Package;

   type EmailEvent is tagged;
   type EmailEvent_Access is access all EmailEvent'Class;
   type EmailEvent_Access_Array is array (Natural range <>) of EmailEvent_Access;
   type EmailEvent_Access_Array_Access is access all EmailEvent_Access_Array;
   type EmailEvent_Access_Array_Access_Array is array (Natural range <>) of EmailEvent_Access_Array_Access;
   type EmailEvent_Access_Array_Access_Array_Access is access all EmailEvent_Access_Array_Access_Array;

   type EmailEvent is new Java_Object with record
      emailInfo : EmailInfo_Access;
      userEmailEventNameData : UserEmailEventNameData_Access;
      attempts : Integer;
   end record;

   procedure Initialize (This : in out EmailEvent'Class; emailEventHandler_Param : access Java_Object'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; emailInfo_Param : access EmailInfo_Package.EmailInfo'Class; attempts : Integer);
   function Create (emailEventHandler_Param : access Java_Object'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; emailInfo_Param : access EmailInfo_Package.EmailInfo'Class; attempts : Integer) return EmailEvent_Access;
   function getEmailInfo (This : in out EmailEvent) return EmailInfo_Access;
   function getAttempts (This : in out EmailEvent) return Integer;
   procedure setAttempts (This : in out EmailEvent; attempts : Integer);
   function toString (This : in out EmailEvent) return Unbounded_String;

end org.allbinary.logic.communication.smtp.event.EmailEvent_Package;


