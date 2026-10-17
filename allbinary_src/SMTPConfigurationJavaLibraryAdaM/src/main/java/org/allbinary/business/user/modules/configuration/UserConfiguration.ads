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
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.time.created.TimeCreated_Package; use org.allbinary.business.time.created.TimeCreated_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package; use org.allbinary.business.time.modified.TimeLastModified_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;

package org.allbinary.business.user.modules.configuration.UserConfiguration_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package TimeCreated_Package renames Standard.org.allbinary.business.time.created.TimeCreated_Package;
   package TimeLastModified_Package renames Standard.org.allbinary.business.time.modified.TimeLastModified_Package;
   package UserEmailConfiguration_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package;
   package UserEmailConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;

   type UserConfiguration is tagged;
   type UserConfiguration_Access is access all UserConfiguration'Class;
   type UserConfiguration_Access_Array is array (Natural range <>) of UserConfiguration_Access;
   type UserConfiguration_Access_Array_Access is access all UserConfiguration_Access_Array;

   type UserConfiguration is new UserConfigurationInterface with record
      userEmailConfigurationInterface : UserEmailConfigurationInterface_Access;
      timeCreated : TimeCreated_Access;
      timeLastModified : TimeLastModified_Access;
   end record;

   procedure Initialize (This : in out UserConfiguration'Class);
   function Create return UserConfiguration_Access;
   function getUserEmailConfigurationInterface (This : in out UserConfiguration) return UserEmailConfigurationInterface_Access;
   procedure getUserEmailConfigurationInterface (This : in out UserConfiguration);
   procedure setUserEmailConfigurationInterface (This : in out UserConfiguration; userEmailConfigurationInterface : UserEmailConfigurationInterface_Access);
   function getTimeCreated (This : in out UserConfiguration) return TimeCreated_Access;
   procedure getTimeCreated (This : in out UserConfiguration);
   function getTimeLastModified (This : in out UserConfiguration) return TimeLastModified_Access;
   procedure getTimeLastModified (This : in out UserConfiguration);
   procedure setTimeCreated (This : in out UserConfiguration; timeCreated : TimeCreated_Access);
   procedure setTimeLastModified (This : in out UserConfiguration; timeLastModified : TimeLastModified_Access);

end org.allbinary.business.user.modules.configuration.UserConfiguration_Package;


