-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

limited with org.allbinary.logic.communication.sql.AbDatabaseManagement_Package;
package org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References is
   type AbDatabaseManagement_Access is access all org.allbinary.logic.communication.sql.AbDatabaseManagement_Package.AbDatabaseManagement'Class;
   type AbDatabaseManagement_Access_Array is array (Natural range <>) of AbDatabaseManagement_Access;
   type AbDatabaseManagement_Access_Array_Access is access all AbDatabaseManagement_Access_Array;
   type AbDatabaseManagement_Access_Array_Access_Array is array (Natural range <>) of AbDatabaseManagement_Access_Array_Access;
   type AbDatabaseManagement_Access_Array_Access_Array_Access is access all AbDatabaseManagement_Access_Array_Access_Array;
end org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References;

with org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.net.InetAddress_Package; use java.net.InetAddress_Package;
limited with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References;
limited with org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;

package org.allbinary.logic.communication.sql.AbDatabaseManagement_Package is

   package DatabaseConnectionInfoInterface_Package renames Standard.org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype DatabaseConnectionInfoInterface_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access;
   use type DatabaseConnectionInfoInterface_Access;
   subtype DatabaseConnectionInfoInterface_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array;
   use type DatabaseConnectionInfoInterface_Access_Array;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access;
   use type DatabaseConnectionInfoInterface_Access_Array_Access;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   use type DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
   use type DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
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
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbDatabaseManagement_Access is org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References.AbDatabaseManagement_Access;
   function "=" (Left, Right : AbDatabaseManagement_Access) return Boolean renames org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References."=";
   subtype AbDatabaseManagement_Access_Array is org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References.AbDatabaseManagement_Access_Array;
   function "=" (Left, Right : AbDatabaseManagement_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References."=";
   subtype AbDatabaseManagement_Access_Array_Access is org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References.AbDatabaseManagement_Access_Array_Access;
   function "=" (Left, Right : AbDatabaseManagement_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References."=";
   subtype AbDatabaseManagement_Access_Array_Access_Array is org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References.AbDatabaseManagement_Access_Array_Access_Array;
   function "=" (Left, Right : AbDatabaseManagement_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References."=";
   subtype AbDatabaseManagement_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References.AbDatabaseManagement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbDatabaseManagement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbDatabaseManagement_Package_References."=";

   type AbDatabaseManagement is new AbSqlBean with record
      AbDatabaseManagement_Field_logUtil : LogUtil_Access;
      AbDatabaseManagement_Field_commonStrings : CommonStrings_Access;
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

   procedure Initialize (This : in out AbDatabaseManagement'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class);
   function Create (databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) return AbDatabaseManagement_Access;
   procedure Initialize (This : in out AbDatabaseManagement'Class; connectionInfo_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function Create (connectionInfo_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbDatabaseManagement_Access;
   function getHostName (This : in out AbDatabaseManagement) return Unbounded_String;
   function addDbUser (This : in out AbDatabaseManagement; hostName : Unbounded_String; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) return Boolean;
   procedure addDbUser (This : in out AbDatabaseManagement; hostName : Unbounded_String; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String);
   function addDbUser (This : in out AbDatabaseManagement; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) return Boolean;
   procedure addDbUser (This : in out AbDatabaseManagement; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String);
   function addDb (This : in out AbDatabaseManagement; db : Unbounded_String) return Boolean;
   procedure addDb (This : in out AbDatabaseManagement; db : Unbounded_String);

end org.allbinary.logic.communication.sql.AbDatabaseManagement_Package;


