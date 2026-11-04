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

limited with org.allbinary.data.tables.log.LogTableEntityFactory_Package;
package org.allbinary.data.tables.log.LogTableEntityFactory_Package_References is
   type LogTableEntityFactory_Access is access all org.allbinary.data.tables.log.LogTableEntityFactory_Package.LogTableEntityFactory'Class;
   type LogTableEntityFactory_Access_Array is array (Natural range <>) of LogTableEntityFactory_Access;
   type LogTableEntityFactory_Access_Array_Access is access all LogTableEntityFactory_Access_Array;
   type LogTableEntityFactory_Access_Array_Access_Array is array (Natural range <>) of LogTableEntityFactory_Access_Array_Access;
   type LogTableEntityFactory_Access_Array_Access_Array_Access is access all LogTableEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.log.LogTableEntityFactory_Package_References;

with org.allbinary.data.tables.log.LogTableEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.data.tables.log.LogTableEntity_Package;
with org.allbinary.data.tables.log.LogTableEntity_Package_References;

package org.allbinary.data.tables.log.LogTableEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype LogTableEntity_Access is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access;
   use type LogTableEntity_Access;
   subtype LogTableEntity_Access_Array is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array;
   use type LogTableEntity_Access_Array;
   subtype LogTableEntity_Access_Array_Access is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array_Access;
   use type LogTableEntity_Access_Array_Access;
   subtype LogTableEntity_Access_Array_Access_Array is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array_Access_Array;
   use type LogTableEntity_Access_Array_Access_Array;
   subtype LogTableEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array_Access_Array_Access;
   use type LogTableEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LogTableEntityFactory_Access is org.allbinary.data.tables.log.LogTableEntityFactory_Package_References.LogTableEntityFactory_Access;
   function "=" (Left, Right : LogTableEntityFactory_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntityFactory_Package_References."=";
   subtype LogTableEntityFactory_Access_Array is org.allbinary.data.tables.log.LogTableEntityFactory_Package_References.LogTableEntityFactory_Access_Array;
   function "=" (Left, Right : LogTableEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.log.LogTableEntityFactory_Package_References."=";
   subtype LogTableEntityFactory_Access_Array_Access is org.allbinary.data.tables.log.LogTableEntityFactory_Package_References.LogTableEntityFactory_Access_Array_Access;
   function "=" (Left, Right : LogTableEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntityFactory_Package_References."=";
   subtype LogTableEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.log.LogTableEntityFactory_Package_References.LogTableEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LogTableEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.log.LogTableEntityFactory_Package_References."=";
   subtype LogTableEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.log.LogTableEntityFactory_Package_References.LogTableEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogTableEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntityFactory_Package_References."=";

   type LogTableEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : LogTableEntityFactory_Access;

   procedure Initialize (This : in out LogTableEntityFactory'Class);
   function Create return LogTableEntityFactory_Access;
   function getInstance return LogTableEntityFactory_Access;
   function getLogTableEntityInstance (This : in out LogTableEntityFactory) return LogTableEntity_Access;

end org.allbinary.data.tables.log.LogTableEntityFactory_Package;


