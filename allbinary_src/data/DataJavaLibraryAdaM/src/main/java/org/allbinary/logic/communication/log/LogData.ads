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

package org.allbinary.logic.communication.log.LogData_Package is


   type LogData is tagged;
   type LogData_Access is access all LogData'Class;
   type LogData_Access_Array is array (Natural range <>) of LogData_Access;
   type LogData_Access_Array_Access is access all LogData_Access_Array;
   type LogData_Access_Array_Access_Array is array (Natural range <>) of LogData_Access_Array_Access;
   type LogData_Access_Array_Access_Array_Access is access all LogData_Access_Array_Access_Array;

   type LogData is new Java_Object with record
      MAX : Long_Long_Integer;
      extension : Unbounded_String;
      backupFileExt : Unbounded_String;
      ALLBINARY : Unbounded_String;
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
   end record;

   procedure Initialize (This : in out LogData'Class);
   function Create return LogData_Access;

end org.allbinary.logic.communication.log.LogData_Package;


