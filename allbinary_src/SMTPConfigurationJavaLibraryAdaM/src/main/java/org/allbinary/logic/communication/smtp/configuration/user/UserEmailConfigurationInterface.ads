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
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;

package org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package is

   package UserEmailEventsConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;

   type UserEmailConfigurationInterface is interface;
   type UserEmailConfigurationInterface_Access is access all UserEmailConfigurationInterface'Class;
   type UserEmailConfigurationInterface_Access_Array is array (Natural range <>) of UserEmailConfigurationInterface_Access;
   type UserEmailConfigurationInterface_Access_Array_Access is access all UserEmailConfigurationInterface_Access_Array;
   function getUserEmailEventsConfigurationInterface (This : in out UserEmailConfigurationInterface) return UserEmailEventsConfigurationInterface_Access is abstract;
   procedure setUserEmailEventsConfigurationInterface (This : in out UserEmailConfigurationInterface; emailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access) is abstract;

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;


