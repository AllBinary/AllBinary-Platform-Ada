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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package; use org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package UserConfigurationInterface_Package renames Standard.org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
   package UserEmailEventsConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package LogUserEmailEventListenerModule_Package renames Standard.org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type EmailEventHandlerUtil is tagged;
   type EmailEventHandlerUtil_Access is access all EmailEventHandlerUtil'Class;
   type EmailEventHandlerUtil_Access_Array is array (Natural range <>) of EmailEventHandlerUtil_Access;
   type EmailEventHandlerUtil_Access_Array_Access is access all EmailEventHandlerUtil_Access_Array;

   type EmailEventHandlerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : EmailEventHandlerUtil_Access;

   procedure Initialize (This : in out EmailEventHandlerUtil'Class);
   function Create return EmailEventHandlerUtil_Access;
   function getInstance return EmailEventHandlerUtil_Access;
   procedure getInstance;
   function getEventHandler (This : in out EmailEventHandlerUtil; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userVector : BasicArrayList_Access) return UserEmailEventHandler_Access;
   procedure getEventHandler (This : in out EmailEventHandlerUtil; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userVector : BasicArrayList_Access);
   function getUserEmailEventListenerVector (abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userInterface : UserInterface_Access) return BasicArrayList_Access;
   procedure getUserEmailEventListenerVector (abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userInterface : UserInterface_Access);

end org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;


