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
--  with java.sql.Connection_Package; use java.sql.Connection_Package;
--  with java.sql.DriverManager_Package; use java.sql.DriverManager_Package;
--  with java.sql.SQLException_Package; use java.sql.SQLException_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type SqlConnectionPool is tagged;
   type SqlConnectionPool_Access is access all SqlConnectionPool'Class;
   type SqlConnectionPool_Access_Array is array (Natural range <>) of SqlConnectionPool_Access;
   type SqlConnectionPool_Access_Array_Access is access all SqlConnectionPool_Access_Array;

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


