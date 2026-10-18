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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.data.tables.log.LogTableEntity_Package; use org.allbinary.data.tables.log.LogTableEntity_Package;

package org.allbinary.data.tables.log.LogTableEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type LogTableEntityFactory is tagged;
   type LogTableEntityFactory_Access is access all LogTableEntityFactory'Class;
   type LogTableEntityFactory_Access_Array is array (Natural range <>) of LogTableEntityFactory_Access;
   type LogTableEntityFactory_Access_Array_Access is access all LogTableEntityFactory_Access_Array;
   type LogTableEntityFactory_Access_Array_Access_Array is array (Natural range <>) of LogTableEntityFactory_Access_Array_Access;
   type LogTableEntityFactory_Access_Array_Access_Array_Access is access all LogTableEntityFactory_Access_Array_Access_Array;

   type LogTableEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : LogTableEntityFactory_Access;

   procedure Initialize (This : in out LogTableEntityFactory'Class);
   function Create return LogTableEntityFactory_Access;
   function getInstance return LogTableEntityFactory_Access;
   function getLogTableEntityInstance (This : in out LogTableEntityFactory) return LogTableEntity_Access;

end org.allbinary.data.tables.log.LogTableEntityFactory_Package;


