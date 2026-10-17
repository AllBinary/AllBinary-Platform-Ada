-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.net.InetAddress_Package; use java.net.InetAddress_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;

package org.allbinary.logic.communication.sql.AbDatabaseManagement_Package is

   package DatabaseConnectionInfoInterface_Package renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package DbConnectionInfo_Package renames org.allbinary.business.init.db.DbConnectionInfo_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type AbDatabaseManagement is tagged;
   type AbDatabaseManagement_Access is access all AbDatabaseManagement'Class;
   type AbDatabaseManagement_Access_Array is array (Natural range <>) of AbDatabaseManagement_Access;
   type AbDatabaseManagement_Access_Array_Access is access all AbDatabaseManagement_Access_Array;

   type AbDatabaseManagement is new AbSqlBean with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      sqlCommandLog : StringMaker_Access;
      GRANT_ALL : Unbounded_String;
      DOT_STAR : Unbounded_String;
      TO : Unbounded_String;
      AT_LOCALHOST : Unbounded_String;
      IDENTIFIED_BY : Unbounded_String;
      WITH_GRANT_OPTION : Unbounded_String;
      FAILED : Unbounded_String;
      GET_HOST_NAME : Unbounded_String;
      METHOD_ADD_USER : Unbounded_String;
      METHOD_ADD_USERS : Unbounded_String;
      METHOD_ADD_DB : Unbounded_String;
      METHOD_ADD_DATABASES : Unbounded_String;
      METHOD_ADD_TABLES : Unbounded_String;
      UNABLE_TO_CREATE_USER : Unbounded_String;
      UNABLE_TO_CREATE_DATABASE : Unbounded_String;
      UNABLE_TO_CREATE_TABLES : Unbounded_String;
      ADD_TABLES_RESULTS_LABEL : Unbounded_String;
   end record;

   procedure Initialize (This : in out AbDatabaseManagement'Class; databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access);
   function Create (databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) return AbDatabaseManagement_Access;
   function getHostName (This : in out AbDatabaseManagement) return Unbounded_String;
   procedure getHostName (This : in out AbDatabaseManagement);
   function addDbUser (This : in out AbDatabaseManagement; hostName : Unbounded_String; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) return Boolean;
   procedure addDbUser (This : in out AbDatabaseManagement; hostName : Unbounded_String; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String);
   function addDbUser (This : in out AbDatabaseManagement; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) return Boolean;
   procedure addDbUser (This : in out AbDatabaseManagement; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String);
   function addDb (This : in out AbDatabaseManagement; db : Unbounded_String) return Boolean;
   procedure addDb (This : in out AbDatabaseManagement; db : Unbounded_String);

end org.allbinary.logic.communication.sql.AbDatabaseManagement_Package;


