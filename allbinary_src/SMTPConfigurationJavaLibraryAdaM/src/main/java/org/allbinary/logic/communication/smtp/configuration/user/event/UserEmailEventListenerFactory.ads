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
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package is

   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
   package AbeFactory_Package renames Standard.org.allbinary.logic.system.loader.AbeFactory_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type UserEmailEventListenerFactory is tagged;
   type UserEmailEventListenerFactory_Access is access all UserEmailEventListenerFactory'Class;
   type UserEmailEventListenerFactory_Access_Array is array (Natural range <>) of UserEmailEventListenerFactory_Access;
   type UserEmailEventListenerFactory_Access_Array_Access is access all UserEmailEventListenerFactory_Access_Array;

   type UserEmailEventListenerFactory is new Java_Object with null record;

   procedure Initialize (This : in out UserEmailEventListenerFactory'Class);
   function Create return UserEmailEventListenerFactory_Access;
   function getInstance (abeClientInformation : AbeClientInformationInterface_Access; userEmailEventConfigurationInterface : UserEmailEventConfigurationInterface_Access; userInterface : UserInterface_Access) return UserEmailEventListenerInterface_Access;
   procedure getInstance (abeClientInformation : AbeClientInformationInterface_Access; userEmailEventConfigurationInterface : UserEmailEventConfigurationInterface_Access; userInterface : UserInterface_Access);

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package;


