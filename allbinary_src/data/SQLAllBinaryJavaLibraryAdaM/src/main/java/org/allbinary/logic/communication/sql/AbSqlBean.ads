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
limited with org.allbinary.logic.communication.sql.AbSqlBean_Package;
package org.allbinary.logic.communication.sql.AbSqlBean_Package_References is
   type AbSqlBean_Access is access all org.allbinary.logic.communication.sql.AbSqlBean_Package.AbSqlBean'Class;
   type AbSqlBean_Access_Array is array (Natural range <>) of AbSqlBean_Access;
   type AbSqlBean_Access_Array_Access is access all AbSqlBean_Access_Array;
   type AbSqlBean_Access_Array_Access_Array is array (Natural range <>) of AbSqlBean_Access_Array_Access;
   type AbSqlBean_Access_Array_Access_Array_Access is access all AbSqlBean_Access_Array_Access_Array;
   type AbSqlBean_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbSqlBean_Access_Array_Access;
   end record;
   function Java_Box (Value : AbSqlBean_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbSqlBean_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbSqlBean_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbSqlBean_Access_Array_Access is (if Value /= null and then Value.all in AbSqlBean_Access_Array_Object'Class then AbSqlBean_Access_Array_Object'Class (Value.all).Value else null);
   type AbSqlBean_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbSqlBean_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbSqlBean_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbSqlBean_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbSqlBean_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbSqlBean_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbSqlBean_Access_Array_Access_Array_Object'Class then AbSqlBean_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.sql.AbSqlBean_Package_References;

with org.allbinary.logic.communication.sql.AbSqlBean_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.sql.ResultSet_Package; use java.sql.ResultSet_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlRow_Package; use org.allbinary.logic.communication.sql.AbSqlRow_Package;

package org.allbinary.logic.communication.sql.AbSqlBean_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype DbConnectionInfo_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access;
   use type DbConnectionInfo_Access;
   subtype DbConnectionInfo_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array;
   use type DbConnectionInfo_Access_Array;
   subtype DbConnectionInfo_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access;
   use type DbConnectionInfo_Access_Array_Access;
   subtype DbConnectionInfo_Access_Array_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array;
   use type DbConnectionInfo_Access_Array_Access_Array;
   subtype DbConnectionInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array_Access;
   use type DbConnectionInfo_Access_Array_Access_Array_Access;
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


   subtype AbSqlBean_Access is org.allbinary.logic.communication.sql.AbSqlBean_Package_References.AbSqlBean_Access;
   function "=" (Left, Right : AbSqlBean_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlBean_Package_References."=";
   subtype AbSqlBean_Access_Array is org.allbinary.logic.communication.sql.AbSqlBean_Package_References.AbSqlBean_Access_Array;
   function "=" (Left, Right : AbSqlBean_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlBean_Package_References."=";
   subtype AbSqlBean_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlBean_Package_References.AbSqlBean_Access_Array_Access;
   function "=" (Left, Right : AbSqlBean_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlBean_Package_References."=";
   function Java_Box (Value : AbSqlBean_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.AbSqlBean_Package_References.Java_Box;
   function Java_Unbox_AbSqlBean_Access_Array (Value : access Java_Object'Class) return AbSqlBean_Access_Array_Access renames org.allbinary.logic.communication.sql.AbSqlBean_Package_References.Java_Unbox_AbSqlBean_Access_Array;
   subtype AbSqlBean_Access_Array_Access_Array is org.allbinary.logic.communication.sql.AbSqlBean_Package_References.AbSqlBean_Access_Array_Access_Array;
   function "=" (Left, Right : AbSqlBean_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlBean_Package_References."=";
   subtype AbSqlBean_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlBean_Package_References.AbSqlBean_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbSqlBean_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlBean_Package_References."=";
   function Java_Box (Value : AbSqlBean_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.AbSqlBean_Package_References.Java_Box;
   function Java_Unbox_AbSqlBean_Access_Array_Access_Array (Value : access Java_Object'Class) return AbSqlBean_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.sql.AbSqlBean_Package_References.Java_Unbox_AbSqlBean_Access_Array_Access_Array;

   type AbSqlBean is new AbSqlRow with record
      AbSqlBean_Field_logUtil : LogUtil_Access;
      METHOD_GET_FIELD : Unbounded_String;
      METHOD_IS_SUBSET_OF_ENTRY : Unbounded_String;
   end record;

   procedure Initialize (This : in out AbSqlBean'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlBean_Access;
   function getField (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; requestedField : Unbounded_String) return Unbounded_String;
   procedure getField (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; requestedField : Unbounded_String);
   function getField (This : in out AbSqlBean; keysAndValues_Param : access HashMap_Package.HashMap'Class; requestedField : Unbounded_String) return Unbounded_String;
   procedure getField (This : in out AbSqlBean; keysAndValues_Param : access HashMap_Package.HashMap'Class; requestedField : Unbounded_String);
   function isSubsetOfEntry (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; columnsAndValues_Param : access HashMap_Package.HashMap'Class) return Unbounded_String;
   procedure isSubsetOfEntry (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; columnsAndValues_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.logic.communication.sql.AbSqlBean_Package;


