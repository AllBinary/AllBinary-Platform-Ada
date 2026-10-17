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
with org.allbinary.business.time.created.TimeCreated_Package; use org.allbinary.business.time.created.TimeCreated_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package; use org.allbinary.business.time.modified.TimeLastModified_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;

package org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package is

   package TimeCreated_Package renames Standard.org.allbinary.business.time.created.TimeCreated_Package;
   package TimeLastModified_Package renames Standard.org.allbinary.business.time.modified.TimeLastModified_Package;
   package UserEmailConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;

   type UserConfigurationInterface is interface;
   type UserConfigurationInterface_Access is access all UserConfigurationInterface'Class;
   type UserConfigurationInterface_Access_Array is array (Natural range <>) of UserConfigurationInterface_Access;
   type UserConfigurationInterface_Access_Array_Access is access all UserConfigurationInterface_Access_Array;
   function getUserEmailConfigurationInterface (This : in out UserConfigurationInterface) return UserEmailConfigurationInterface_Access is abstract;
   procedure setUserEmailConfigurationInterface (This : in out UserConfigurationInterface; userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface_Package.UserEmailConfigurationInterface'Class) is abstract;
   function getTimeCreated (This : in out UserConfigurationInterface) return TimeCreated_Access is abstract;
   function getTimeLastModified (This : in out UserConfigurationInterface) return TimeLastModified_Access is abstract;
   procedure setTimeCreated (This : in out UserConfigurationInterface; timeCreated_Param : access TimeCreated_Package.TimeCreated'Class) is abstract;
   procedure setTimeLastModified (This : in out UserConfigurationInterface; timeLastModified_Param : access TimeLastModified_Package.TimeLastModified'Class) is abstract;

end org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;


