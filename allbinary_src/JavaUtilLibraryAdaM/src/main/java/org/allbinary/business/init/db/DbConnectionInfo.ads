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
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;

package org.allbinary.business.init.db.DbConnectionInfo_Package is

   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type DbConnectionInfo is tagged;
   type DbConnectionInfo_Access is access all DbConnectionInfo'Class;
   type DbConnectionInfo_Access_Array is array (Natural range <>) of DbConnectionInfo_Access;
   type DbConnectionInfo_Access_Array_Access is access all DbConnectionInfo_Access_Array;

   type DbConnectionInfo is new DatabaseConnectionInfoInterface with record
      jdbcDriver : Unbounded_String;
      name : Unbounded_String;
      userName : Unbounded_String;
      password : Unbounded_String;
      schema : Unbounded_String;
      server : Unbounded_String;
      port : Unbounded_String;
      url : Unbounded_String;
      host : Unbounded_String;
      SCHEMA_SEP : Unbounded_String;
      USER_NAME_KEY : Unbounded_String;
      PASSWORD_KEY : Unbounded_String;
   end record;

   procedure Initialize (This : in out DbConnectionInfo'Class);
   function Create return DbConnectionInfo_Access;
   procedure updateUrl (This : in out DbConnectionInfo);
   function getUrl (This : in out DbConnectionInfo) return Unbounded_String;
   function getJdbcDriver (This : in out DbConnectionInfo) return Unbounded_String;
   function getName (This : in out DbConnectionInfo) return Unbounded_String;
   function getUserName (This : in out DbConnectionInfo) return Unbounded_String;
   function getPassword (This : in out DbConnectionInfo) return Unbounded_String;
   procedure updateHost (This : in out DbConnectionInfo);
   function getHost (This : in out DbConnectionInfo) return Unbounded_String;
   function getSchema (This : in out DbConnectionInfo) return Unbounded_String;
   function getServer (This : in out DbConnectionInfo) return Unbounded_String;
   function getPort (This : in out DbConnectionInfo) return Unbounded_String;
   procedure setJdbcDriver (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setName (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setUserName (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setPassword (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setSchema (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setServer (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setPort (This : in out DbConnectionInfo; value : Unbounded_String);
   function getUserNameKey (This : in out DbConnectionInfo) return Unbounded_String;
   function getPasswordKey (This : in out DbConnectionInfo) return Unbounded_String;

end org.allbinary.business.init.db.DbConnectionInfo_Package;


