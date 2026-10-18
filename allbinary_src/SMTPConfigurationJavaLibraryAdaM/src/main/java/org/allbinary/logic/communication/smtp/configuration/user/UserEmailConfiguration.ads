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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;

package org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventsConfiguration_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;
   package UserEmailEventsConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type UserEmailConfiguration is tagged;
   type UserEmailConfiguration_Access is access all UserEmailConfiguration'Class;
   type UserEmailConfiguration_Access_Array is array (Natural range <>) of UserEmailConfiguration_Access;
   type UserEmailConfiguration_Access_Array_Access is access all UserEmailConfiguration_Access_Array;

   type UserEmailConfiguration is new UserEmailConfigurationInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserEmailConfiguration'Class);
   function Create return UserEmailConfiguration_Access;
   procedure Initialize (This : in out UserEmailConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserEmailConfiguration_Access;
   function getUserEmailEventsConfigurationInterface (This : in out UserEmailConfiguration) return UserEmailEventsConfigurationInterface_Access;
   procedure setUserEmailEventsConfigurationInterface (This : in out UserEmailConfiguration; userEmailEventsConfigurationInterface_Param : access UserEmailEventsConfigurationInterface_Package.UserEmailEventsConfigurationInterface'Class);

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package;


