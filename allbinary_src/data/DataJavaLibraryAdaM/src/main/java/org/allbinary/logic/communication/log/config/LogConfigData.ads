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

package org.allbinary.logic.communication.log.config.LogConfigData_Package is


   type LogConfigData is tagged;
   type LogConfigData_Access is access all LogConfigData'Class;
   type LogConfigData_Access_Array is array (Natural range <>) of LogConfigData_Access;
   type LogConfigData_Access_Array_Access is access all LogConfigData_Access_Array;

   type LogConfigData is new Java_Object with record
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
      FILE : Unbounded_String;
   end record;
   instance : LogConfigData_Access;

   procedure Initialize (This : in out LogConfigData'Class);
   function Create return LogConfigData_Access;
   function getInstance return LogConfigData_Access;

end org.allbinary.logic.communication.log.config.LogConfigData_Package;


