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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package;

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package is

   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type UserEmailEventsConfiguration is tagged;
   type UserEmailEventsConfiguration_Access is access all UserEmailEventsConfiguration'Class;
   type UserEmailEventsConfiguration_Access_Array is array (Natural range <>) of UserEmailEventsConfiguration_Access;
   type UserEmailEventsConfiguration_Access_Array_Access is access all UserEmailEventsConfiguration_Access_Array;

   type UserEmailEventsConfiguration is new UserEmailEventsConfigurationInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      emailEventHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out UserEmailEventsConfiguration'Class);
   function Create return UserEmailEventsConfiguration_Access;
   procedure Initialize (This : in out UserEmailEventsConfiguration'Class; hashMap : HashMap_Access);
   function Create (hashMap : HashMap_Access) return UserEmailEventsConfiguration_Access;
   procedure init (This : in out UserEmailEventsConfiguration);
   function getEventConfigurationHashMap (This : in out UserEmailEventsConfiguration) return HashMap_Access;
   procedure addUserEmailEventConfiguration (This : in out UserEmailEventsConfiguration; userEmailEventConfigurationInterface : UserEmailEventConfigurationInterface_Access);
   function getEventListener (This : in out UserEmailEventsConfiguration; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userInterface : UserInterface_Access) return UserEmailEventListenerInterface_Access;
   procedure getEventListener (This : in out UserEmailEventsConfiguration; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userInterface : UserInterface_Access);

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;


