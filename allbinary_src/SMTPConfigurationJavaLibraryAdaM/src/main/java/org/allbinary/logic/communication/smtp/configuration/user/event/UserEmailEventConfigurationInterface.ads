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

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package is


   type UserEmailEventConfigurationInterface is interface;
   type UserEmailEventConfigurationInterface_Access is access all UserEmailEventConfigurationInterface'Class;
   type UserEmailEventConfigurationInterface_Access_Array is array (Natural range <>) of UserEmailEventConfigurationInterface_Access;
   type UserEmailEventConfigurationInterface_Access_Array_Access is access all UserEmailEventConfigurationInterface_Access_Array;
   function getName (This : in out UserEmailEventConfigurationInterface) return Unbounded_String is abstract;
   procedure setName (This : in out UserEmailEventConfigurationInterface; name : Unbounded_String) is abstract;
   function getEventListenerClassPath (This : in out UserEmailEventConfigurationInterface) return Unbounded_String is abstract;
   procedure setEventListenerClassPath (This : in out UserEmailEventConfigurationInterface; eventListenerClassPath : Unbounded_String) is abstract;
   function log (This : in out UserEmailEventConfigurationInterface) return Unbounded_String is abstract;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;


