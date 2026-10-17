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
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.BasicEmail_Package; use org.allbinary.logic.communication.smtp.BasicEmail_Package;
with org.allbinary.logic.communication.smtp.EmailInterface_Package; use org.allbinary.logic.communication.smtp.EmailInterface_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package; use org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package; use org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package;

package org.allbinary.logic.communication.smtp.event.modules.event.user.UserEmailEventListenerModule_Package is

   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicEmail_Package renames Standard.org.allbinary.logic.communication.smtp.BasicEmail_Package;
   package EmailInterface_Package renames Standard.org.allbinary.logic.communication.smtp.EmailInterface_Package;
   package EmailEvent_Package renames Standard.org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
   package EmailQueueFactory_Package renames Standard.org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package;

   type UserEmailEventListenerModule is tagged;
   type UserEmailEventListenerModule_Access is access all UserEmailEventListenerModule'Class;
   type UserEmailEventListenerModule_Access_Array is array (Natural range <>) of UserEmailEventListenerModule_Access;
   type UserEmailEventListenerModule_Access_Array_Access is access all UserEmailEventListenerModule_Access_Array;

   type UserEmailEventListenerModule is new UserEmailEventListenerInterface with record
      logUtil : LogUtil_Access;
      userInterface : UserInterface_Access;
   end record;

   procedure Initialize (This : in out UserEmailEventListenerModule'Class; userInterface_Param : access UserInterface'Class);
   function Create (userInterface_Param : access UserInterface'Class) return UserEmailEventListenerModule_Access;
   procedure onEmailSendFailure (This : in out UserEmailEventListenerModule; emailEvent_Param : access EmailEvent'Class);
   procedure onEmailSendRequest (This : in out UserEmailEventListenerModule; emailEvent_Param : access EmailEvent'Class);

end org.allbinary.logic.communication.smtp.event.modules.event.user.UserEmailEventListenerModule_Package;


