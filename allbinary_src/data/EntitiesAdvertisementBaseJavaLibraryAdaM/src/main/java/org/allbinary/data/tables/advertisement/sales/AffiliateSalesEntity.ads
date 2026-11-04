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

limited with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package;
package org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References is
   type AffiliateSalesEntity_Access is access all org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package.AffiliateSalesEntity'Class;
   type AffiliateSalesEntity_Access_Array is array (Natural range <>) of AffiliateSalesEntity_Access;
   type AffiliateSalesEntity_Access_Array_Access is access all AffiliateSalesEntity_Access_Array;
   type AffiliateSalesEntity_Access_Array_Access_Array is array (Natural range <>) of AffiliateSalesEntity_Access_Array_Access;
   type AffiliateSalesEntity_Access_Array_Access_Array_Access is access all AffiliateSalesEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References;

with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package; use org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package;

package org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AffiliateSalesEntity_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References.AffiliateSalesEntity_Access;
   function "=" (Left, Right : AffiliateSalesEntity_Access) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References."=";
   subtype AffiliateSalesEntity_Access_Array is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References.AffiliateSalesEntity_Access_Array;
   function "=" (Left, Right : AffiliateSalesEntity_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References."=";
   subtype AffiliateSalesEntity_Access_Array_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References.AffiliateSalesEntity_Access_Array_Access;
   function "=" (Left, Right : AffiliateSalesEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References."=";
   subtype AffiliateSalesEntity_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References.AffiliateSalesEntity_Access_Array_Access_Array;
   function "=" (Left, Right : AffiliateSalesEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References."=";
   subtype AffiliateSalesEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References.AffiliateSalesEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AffiliateSalesEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package_References."=";

   type AffiliateSalesEntity is new AbSqlBean and AffiliateSalesEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out AffiliateSalesEntity'Class);
   function Create return AffiliateSalesEntity_Access;
   procedure delete (This : in out AffiliateSalesEntity; value : Unbounded_String);
   function createTableStatement (This : in out AffiliateSalesEntity) return Unbounded_String;
   function createTable (This : in out AffiliateSalesEntity) return Unbounded_String;
   procedure update (This : in out AffiliateSalesEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function dropTable (This : in out AffiliateSalesEntity) return Unbounded_String;

end org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package;


