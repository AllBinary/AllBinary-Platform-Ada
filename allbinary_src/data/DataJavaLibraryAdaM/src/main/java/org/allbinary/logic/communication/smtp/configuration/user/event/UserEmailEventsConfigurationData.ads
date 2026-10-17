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

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package is


   type UserEmailEventsConfigurationData is tagged;
   type UserEmailEventsConfigurationData_Access is access all UserEmailEventsConfigurationData'Class;
   type UserEmailEventsConfigurationData_Access_Array is array (Natural range <>) of UserEmailEventsConfigurationData_Access;
   type UserEmailEventsConfigurationData_Access_Array_Access is access all UserEmailEventsConfigurationData_Access_Array;

   type UserEmailEventsConfigurationData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out UserEmailEventsConfigurationData'Class);
   function Create return UserEmailEventsConfigurationData_Access;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package;


