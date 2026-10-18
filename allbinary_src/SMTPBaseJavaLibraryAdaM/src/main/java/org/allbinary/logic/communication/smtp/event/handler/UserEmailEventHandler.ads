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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package; use org.allbinary.logic.communication.smtp.info.EmailInfo_Package;

package org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package EmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.EmailInfo_Package;

   type UserEmailEventHandler is tagged;
   type UserEmailEventHandler_Access is access all UserEmailEventHandler'Class;
   type UserEmailEventHandler_Access_Array is array (Natural range <>) of UserEmailEventHandler_Access;
   type UserEmailEventHandler_Access_Array_Access is access all UserEmailEventHandler_Access_Array;
   type UserEmailEventHandler_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventHandler_Access_Array_Access;
   type UserEmailEventHandler_Access_Array_Access_Array_Access is access all UserEmailEventHandler_Access_Array_Access_Array;

   type UserEmailEventHandler is new Java_Object with record
      emailVector : BasicArrayList_Access;
      emailInfo : EmailInfo_Access;
      userEmailEventNameData : UserEmailEventNameData_Access;
   end record;

   procedure Initialize (This : in out UserEmailEventHandler'Class);
   function Create return UserEmailEventHandler_Access;
   procedure receiveEmailInfo (This : in out UserEmailEventHandler; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; emailInfo_Param : access EmailInfo_Package.EmailInfo'Class);
   procedure addListener (This : in out UserEmailEventHandler; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure addListener (This : in out UserEmailEventHandler; emailEventListenerInterface_Param : access UserEmailEventListenerInterface_Package.UserEmailEventListenerInterface'Class);
   procedure removeListener (This : in out UserEmailEventHandler; emailEventListenerInterface_Param : access UserEmailEventListenerInterface_Package.UserEmailEventListenerInterface'Class);
   procedure fireEmailEvent (This : in out UserEmailEventHandler);

end org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;


