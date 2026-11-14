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

with AllBinary_Java;
limited with org.allbinary.data.tables.log.LogTableEntity_Package;
package org.allbinary.data.tables.log.LogTableEntity_Package_References is
   type LogTableEntity_Access is access all org.allbinary.data.tables.log.LogTableEntity_Package.LogTableEntity'Class;
   type LogTableEntity_Access_Array is array (Natural range <>) of LogTableEntity_Access;
   type LogTableEntity_Access_Array_Access is access all LogTableEntity_Access_Array;
   type LogTableEntity_Access_Array_Access_Array is array (Natural range <>) of LogTableEntity_Access_Array_Access;
   type LogTableEntity_Access_Array_Access_Array_Access is access all LogTableEntity_Access_Array_Access_Array;
   type LogTableEntity_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogTableEntity_Access_Array_Access;
   end record;
   function Java_Box (Value : LogTableEntity_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogTableEntity_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogTableEntity_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogTableEntity_Access_Array_Access is (if Value /= null and then Value.all in LogTableEntity_Access_Array_Object'Class then LogTableEntity_Access_Array_Object'Class (Value.all).Value else null);
   type LogTableEntity_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogTableEntity_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogTableEntity_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogTableEntity_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogTableEntity_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogTableEntity_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogTableEntity_Access_Array_Access_Array_Object'Class then LogTableEntity_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.log.LogTableEntity_Package_References;

with org.allbinary.data.tables.log.LogTableEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.data.tables.log.LogTableEntityInterface_Package; use org.allbinary.data.tables.log.LogTableEntityInterface_Package;

package org.allbinary.data.tables.log.LogTableEntity_Package is

   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LogTableEntity_Access is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access;
   function "=" (Left, Right : LogTableEntity_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntity_Package_References."=";
   subtype LogTableEntity_Access_Array is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array;
   function "=" (Left, Right : LogTableEntity_Access_Array) return Boolean renames org.allbinary.data.tables.log.LogTableEntity_Package_References."=";
   subtype LogTableEntity_Access_Array_Access is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array_Access;
   function "=" (Left, Right : LogTableEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntity_Package_References."=";
   function Java_Box (Value : LogTableEntity_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.log.LogTableEntity_Package_References.Java_Box;
   function Java_Unbox_LogTableEntity_Access_Array (Value : access Java_Object'Class) return LogTableEntity_Access_Array_Access renames org.allbinary.data.tables.log.LogTableEntity_Package_References.Java_Unbox_LogTableEntity_Access_Array;
   subtype LogTableEntity_Access_Array_Access_Array is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array_Access_Array;
   function "=" (Left, Right : LogTableEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.log.LogTableEntity_Package_References."=";
   subtype LogTableEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.log.LogTableEntity_Package_References.LogTableEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogTableEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.log.LogTableEntity_Package_References."=";
   function Java_Box (Value : LogTableEntity_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.log.LogTableEntity_Package_References.Java_Box;
   function Java_Unbox_LogTableEntity_Access_Array_Access_Array (Value : access Java_Object'Class) return LogTableEntity_Access_Array_Access_Array_Access renames org.allbinary.data.tables.log.LogTableEntity_Package_References.Java_Unbox_LogTableEntity_Access_Array_Access_Array;

   type LogTableEntity is new AbSqlBean and LogTableEntityInterface with record
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out LogTableEntity'Class);
   function Create return LogTableEntity_Access;
   function createTableStatement (This : in out LogTableEntity) return Unbounded_String;
   function createTable (This : in out LogTableEntity) return Unbounded_String;
   procedure deleteWhere (This : in out LogTableEntity; key : Unbounded_String; value : Unbounded_String);
   procedure insert (This : in out LogTableEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function dropTable (This : in out LogTableEntity) return Unbounded_String;

end org.allbinary.data.tables.log.LogTableEntity_Package;


