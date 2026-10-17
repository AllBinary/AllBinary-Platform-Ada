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
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package; use org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;

package org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EmailEvent_Package renames Standard.org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;

   type LogUserEmailEventListenerModule is tagged;
   type LogUserEmailEventListenerModule_Access is access all LogUserEmailEventListenerModule'Class;
   type LogUserEmailEventListenerModule_Access_Array is array (Natural range <>) of LogUserEmailEventListenerModule_Access;
   type LogUserEmailEventListenerModule_Access_Array_Access is access all LogUserEmailEventListenerModule_Access_Array;

   type LogUserEmailEventListenerModule is new UserEmailEventListenerInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out LogUserEmailEventListenerModule'Class);
   function Create return LogUserEmailEventListenerModule_Access;
   procedure onEmailSendRequest (This : in out LogUserEmailEventListenerModule; userEmailInfoEvent_Param : access EmailEvent'Class);

end org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package;


