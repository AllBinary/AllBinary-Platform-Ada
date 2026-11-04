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

limited with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package;
package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References is
   type UserEmailEventListenerFactory_Access is access all org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package.UserEmailEventListenerFactory'Class;
   type UserEmailEventListenerFactory_Access_Array is array (Natural range <>) of UserEmailEventListenerFactory_Access;
   type UserEmailEventListenerFactory_Access_Array_Access is access all UserEmailEventListenerFactory_Access_Array;
   type UserEmailEventListenerFactory_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventListenerFactory_Access_Array_Access;
   type UserEmailEventListenerFactory_Access_Array_Access_Array_Access is access all UserEmailEventListenerFactory_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References;

with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;
limited with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References;

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package is

   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
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


   subtype UserEmailEventListenerFactory_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References.UserEmailEventListenerFactory_Access;
   function "=" (Left, Right : UserEmailEventListenerFactory_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References."=";
   subtype UserEmailEventListenerFactory_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References.UserEmailEventListenerFactory_Access_Array;
   function "=" (Left, Right : UserEmailEventListenerFactory_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References."=";
   subtype UserEmailEventListenerFactory_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References.UserEmailEventListenerFactory_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventListenerFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References."=";
   subtype UserEmailEventListenerFactory_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References.UserEmailEventListenerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventListenerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References."=";
   subtype UserEmailEventListenerFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References.UserEmailEventListenerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventListenerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package_References."=";

   type UserEmailEventListenerFactory is new Java_Object with null record;

   procedure Initialize (This : in out UserEmailEventListenerFactory'Class);
   function Create return UserEmailEventListenerFactory_Access;
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) return UserEmailEventListenerInterface_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class);

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package;


