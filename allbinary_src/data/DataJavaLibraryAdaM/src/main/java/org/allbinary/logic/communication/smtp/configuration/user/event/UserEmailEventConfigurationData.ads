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

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package is


   type UserEmailEventConfigurationData is tagged;
   type UserEmailEventConfigurationData_Access is access all UserEmailEventConfigurationData'Class;
   type UserEmailEventConfigurationData_Access_Array is array (Natural range <>) of UserEmailEventConfigurationData_Access;
   type UserEmailEventConfigurationData_Access_Array_Access is access all UserEmailEventConfigurationData_Access_Array;
   type UserEmailEventConfigurationData_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventConfigurationData_Access_Array_Access;
   type UserEmailEventConfigurationData_Access_Array_Access_Array_Access is access all UserEmailEventConfigurationData_Access_Array_Access_Array;

   type UserEmailEventConfigurationData is new Java_Object with null record;
   NAME : Unbounded_String;
   LISTENER_CLASSPATH : Unbounded_String;

   procedure Initialize (This : in out UserEmailEventConfigurationData'Class);
   function Create return UserEmailEventConfigurationData_Access;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package;


