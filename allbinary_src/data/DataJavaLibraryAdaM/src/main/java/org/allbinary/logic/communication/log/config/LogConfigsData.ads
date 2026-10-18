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

package org.allbinary.logic.communication.log.config.LogConfigsData_Package is


   type LogConfigsData is tagged;
   type LogConfigsData_Access is access all LogConfigsData'Class;
   type LogConfigsData_Access_Array is array (Natural range <>) of LogConfigsData_Access;
   type LogConfigsData_Access_Array_Access is access all LogConfigsData_Access_Array;
   type LogConfigsData_Access_Array_Access_Array is array (Natural range <>) of LogConfigsData_Access_Array_Access;
   type LogConfigsData_Access_Array_Access_Array_Access is access all LogConfigsData_Access_Array_Access_Array;

   type LogConfigsData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : LogConfigsData_Access;

   procedure Initialize (This : in out LogConfigsData'Class);
   function Create return LogConfigsData_Access;
   function getInstance return LogConfigsData_Access;

end org.allbinary.logic.communication.log.config.LogConfigsData_Package;


