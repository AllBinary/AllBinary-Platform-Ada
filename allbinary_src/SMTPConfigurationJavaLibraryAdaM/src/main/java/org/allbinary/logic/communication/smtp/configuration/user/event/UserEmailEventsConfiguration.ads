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

limited with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;
package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References is
   type UserEmailEventsConfiguration_Access is access all org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package.UserEmailEventsConfiguration'Class;
   type UserEmailEventsConfiguration_Access_Array is array (Natural range <>) of UserEmailEventsConfiguration_Access;
   type UserEmailEventsConfiguration_Access_Array_Access is access all UserEmailEventsConfiguration_Access_Array;
   type UserEmailEventsConfiguration_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventsConfiguration_Access_Array_Access;
   type UserEmailEventsConfiguration_Access_Array_Access_Array_Access is access all UserEmailEventsConfiguration_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References;

with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References;
limited with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
limited with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References;

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype UserInterface_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access;
   use type UserInterface_Access;
   subtype UserInterface_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array;
   use type UserInterface_Access_Array;
   subtype UserInterface_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access;
   use type UserInterface_Access_Array_Access;
   subtype UserInterface_Access_Array_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array;
   use type UserInterface_Access_Array_Access_Array;
   subtype UserInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array_Access;
   use type UserInterface_Access_Array_Access_Array_Access;
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
   subtype UserEmailEventListenerInterface_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access;
   use type UserEmailEventListenerInterface_Access;
   subtype UserEmailEventListenerInterface_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array;
   use type UserEmailEventListenerInterface_Access_Array;
   subtype UserEmailEventListenerInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access;
   use type UserEmailEventListenerInterface_Access_Array_Access;
   subtype UserEmailEventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access_Array;
   use type UserEmailEventListenerInterface_Access_Array_Access_Array;
   subtype UserEmailEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access_Array_Access;
   use type UserEmailEventListenerInterface_Access_Array_Access_Array_Access;
   subtype UserEmailEventNameData_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access;
   use type UserEmailEventNameData_Access;
   subtype UserEmailEventNameData_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array;
   use type UserEmailEventNameData_Access_Array;
   subtype UserEmailEventNameData_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access;
   use type UserEmailEventNameData_Access_Array_Access;
   subtype UserEmailEventNameData_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access_Array;
   use type UserEmailEventNameData_Access_Array_Access_Array;
   subtype UserEmailEventNameData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access_Array_Access;
   use type UserEmailEventNameData_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype UserEmailEventConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access;
   use type UserEmailEventConfigurationInterface_Access;
   subtype UserEmailEventConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array;
   use type UserEmailEventConfigurationInterface_Access_Array;
   subtype UserEmailEventConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access;
   use type UserEmailEventConfigurationInterface_Access_Array_Access;
   subtype UserEmailEventConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access_Array;
   use type UserEmailEventConfigurationInterface_Access_Array_Access_Array;
   subtype UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access;
   use type UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserEmailEventsConfiguration_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References.UserEmailEventsConfiguration_Access;
   function "=" (Left, Right : UserEmailEventsConfiguration_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References."=";
   subtype UserEmailEventsConfiguration_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References.UserEmailEventsConfiguration_Access_Array;
   function "=" (Left, Right : UserEmailEventsConfiguration_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References."=";
   subtype UserEmailEventsConfiguration_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References.UserEmailEventsConfiguration_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventsConfiguration_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References."=";
   subtype UserEmailEventsConfiguration_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References.UserEmailEventsConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventsConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References."=";
   subtype UserEmailEventsConfiguration_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References.UserEmailEventsConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventsConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package_References."=";

   type UserEmailEventsConfiguration is new Java_Object and UserEmailEventsConfigurationInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      emailEventHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out UserEmailEventsConfiguration'Class);
   function Create return UserEmailEventsConfiguration_Access;
   procedure Initialize (This : in out UserEmailEventsConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserEmailEventsConfiguration_Access;
   procedure init (This : in out UserEmailEventsConfiguration);
   function getEventConfigurationHashMap (This : in out UserEmailEventsConfiguration) return HashMap_Access;
   procedure addUserEmailEventConfiguration (This : in out UserEmailEventsConfiguration; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class);
   function getEventListener (This : in out UserEmailEventsConfiguration; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) return UserEmailEventListenerInterface_Access;
   procedure getEventListener (This : in out UserEmailEventsConfiguration; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class);

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;


