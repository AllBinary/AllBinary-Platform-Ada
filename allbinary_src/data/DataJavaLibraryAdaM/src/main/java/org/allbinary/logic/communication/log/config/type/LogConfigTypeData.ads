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

package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package is


   type LogConfigTypeData is tagged;
   type LogConfigTypeData_Access is access all LogConfigTypeData'Class;
   type LogConfigTypeData_Access_Array is array (Natural range <>) of LogConfigTypeData_Access;
   type LogConfigTypeData_Access_Array_Access is access all LogConfigTypeData_Access_Array;

   type LogConfigTypeData is new Java_Object with record
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
   end record;
   instance : LogConfigTypeData_Access;

   procedure Initialize (This : in out LogConfigTypeData'Class);
   function Create return LogConfigTypeData_Access;
   function getInstance return LogConfigTypeData_Access;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package;


