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
limited with org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;
package org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References is
   type SqlConnectionPool_Access is access all org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package.SqlConnectionPool'Class;
   type SqlConnectionPool_Access_Array is array (Natural range <>) of SqlConnectionPool_Access;
   type SqlConnectionPool_Access_Array_Access is access all SqlConnectionPool_Access_Array;
   type SqlConnectionPool_Access_Array_Access_Array is array (Natural range <>) of SqlConnectionPool_Access_Array_Access;
   type SqlConnectionPool_Access_Array_Access_Array_Access is access all SqlConnectionPool_Access_Array_Access_Array;
   type SqlConnectionPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SqlConnectionPool_Access_Array_Access;
   end record;
   function Java_Box (Value : SqlConnectionPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SqlConnectionPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SqlConnectionPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SqlConnectionPool_Access_Array_Access is (if Value /= null and then Value.all in SqlConnectionPool_Access_Array_Object'Class then SqlConnectionPool_Access_Array_Object'Class (Value.all).Value else null);
   type SqlConnectionPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SqlConnectionPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SqlConnectionPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SqlConnectionPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SqlConnectionPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SqlConnectionPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SqlConnectionPool_Access_Array_Access_Array_Object'Class then SqlConnectionPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References;

with org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.sql.Connection_Package; use java.sql.Connection_Package;
--  with java.sql.DriverManager_Package; use java.sql.DriverManager_Package;
--  with java.sql.SQLException_Package; use java.sql.SQLException_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.StdUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype StdUtil_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access;
   use type StdUtil_Access;
   subtype StdUtil_Access_Array is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array;
   use type StdUtil_Access_Array;
   subtype StdUtil_Access_Array_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access;
   use type StdUtil_Access_Array_Access;
   subtype StdUtil_Access_Array_Access_Array is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access_Array;
   use type StdUtil_Access_Array_Access_Array;
   subtype StdUtil_Access_Array_Access_Array_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access_Array_Access;
   use type StdUtil_Access_Array_Access_Array_Access;
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


   subtype SqlConnectionPool_Access is org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.SqlConnectionPool_Access;
   function "=" (Left, Right : SqlConnectionPool_Access) return Boolean renames org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References."=";
   subtype SqlConnectionPool_Access_Array is org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.SqlConnectionPool_Access_Array;
   function "=" (Left, Right : SqlConnectionPool_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References."=";
   subtype SqlConnectionPool_Access_Array_Access is org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.SqlConnectionPool_Access_Array_Access;
   function "=" (Left, Right : SqlConnectionPool_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References."=";
   function Java_Box (Value : SqlConnectionPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.Java_Box;
   function Java_Unbox_SqlConnectionPool_Access_Array (Value : access Java_Object'Class) return SqlConnectionPool_Access_Array_Access renames org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.Java_Unbox_SqlConnectionPool_Access_Array;
   subtype SqlConnectionPool_Access_Array_Access_Array is org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.SqlConnectionPool_Access_Array_Access_Array;
   function "=" (Left, Right : SqlConnectionPool_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References."=";
   subtype SqlConnectionPool_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.SqlConnectionPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SqlConnectionPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References."=";
   function Java_Box (Value : SqlConnectionPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.Java_Box;
   function Java_Unbox_SqlConnectionPool_Access_Array_Access_Array (Value : access Java_Object'Class) return SqlConnectionPool_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.Java_Unbox_SqlConnectionPool_Access_Array_Access_Array;

   type SqlConnectionPool is new Java_Object with record
      logUtil : LogUtil_Access;
      stdUtil : StdUtil_Access;
      connectionHashMap : HashMap_Access;
      FIRST_NEW_CONNECTION_CREATED : Unbounded_String;
      FIRST : Unbounded_String;
      NEW_CONNECTION_FOR : Unbounded_String;
      CREATED : Unbounded_String;
      NUMBER_OF_SQL_CONNECTIONS_FOR : Unbounded_String;
      NUMBER_OF_SQL_CONNECTION_VECTORS : Unbounded_String;
      IS_Id : Unbounded_String;
      CONNECTION_ALLREADY_CLOSED : Unbounded_String;
      METHOD_GET : Unbounded_String;
      METHOD_ADD : Unbounded_String;
   end record;
   instance : SqlConnectionPool_Access;

   procedure Initialize (This : in out SqlConnectionPool'Class);
   function Create return SqlConnectionPool_Access;
   function getInstance return SqlConnectionPool_Access;
   function get (This : in out SqlConnectionPool; url : Unbounded_String) return Connection_Access;
   procedure get (This : in out SqlConnectionPool; url : Unbounded_String);
   procedure add (This : in out SqlConnectionPool; url : Unbounded_String; sqlConnection_Param : access Connection_Package.Connection'Class);

end org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;


