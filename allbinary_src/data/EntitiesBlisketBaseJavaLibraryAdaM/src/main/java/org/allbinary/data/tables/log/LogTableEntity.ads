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
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.log.LogTableEntityInterface_Package; use org.allbinary.data.tables.log.LogTableEntityInterface_Package;

package org.allbinary.data.tables.log.LogTableEntity_Package is

   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;

   type LogTableEntity is tagged;
   type LogTableEntity_Access is access all LogTableEntity'Class;
   type LogTableEntity_Access_Array is array (Natural range <>) of LogTableEntity_Access;
   type LogTableEntity_Access_Array_Access is access all LogTableEntity_Access_Array;
   type LogTableEntity_Access_Array_Access_Array is array (Natural range <>) of LogTableEntity_Access_Array_Access;
   type LogTableEntity_Access_Array_Access_Array_Access is access all LogTableEntity_Access_Array_Access_Array;

   type LogTableEntity is new AbSqlBean and LogTableEntityInterface with record
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out LogTableEntity'Class);
   function Create return LogTableEntity_Access;
   function createTableStatement (This : in out LogTableEntity) return Unbounded_String;
   function createTable (This : in out LogTableEntity) return Unbounded_String;

end org.allbinary.data.tables.log.LogTableEntity_Package;


