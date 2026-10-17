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

package org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package is


   type EmailServerConfigurationData is tagged;
   type EmailServerConfigurationData_Access is access all EmailServerConfigurationData'Class;
   type EmailServerConfigurationData_Access_Array is array (Natural range <>) of EmailServerConfigurationData_Access;
   type EmailServerConfigurationData_Access_Array_Access is access all EmailServerConfigurationData_Access_Array;

   type EmailServerConfigurationData is new Java_Object with null record;
   NAME : Unbounded_String;
   SERVER : Unbounded_String;
   ACCOUNT : Unbounded_String;
   PASSWORD : Unbounded_String;

   procedure Initialize (This : in out EmailServerConfigurationData'Class);
   function Create return EmailServerConfigurationData_Access;

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package;


