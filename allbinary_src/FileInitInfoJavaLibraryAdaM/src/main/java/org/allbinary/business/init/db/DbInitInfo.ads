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
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.HttpData_Package; use org.allbinary.logic.communication.http.HttpData_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.io.AbDataInputStream_Package; use org.allbinary.logic.io.AbDataInputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package; use org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
with org.allbinary.logic.system.security.crypt.WeakCrypt_Package; use org.allbinary.logic.system.security.crypt.WeakCrypt_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;

package org.allbinary.business.init.db.DbInitInfo_Package is

   package FREEBLISKET_PATH_GLOBALS_Package renames org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package HttpData_Package renames org.allbinary.logic.communication.http.HttpData_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package LogConfigTypeFactory_Package renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package AbDataInputStream_Package renames org.allbinary.logic.io.AbDataInputStream_Package;
   package AbDataOutputStream_Package renames org.allbinary.logic.io.AbDataOutputStream_Package;
   package AbFileInputStream_Package renames org.allbinary.logic.io.AbFileInputStream_Package;
   package DataOutputStreamFactory_Package renames org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package StreamUtil_Package renames org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package Directory_Package renames org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package DatabaseEncoder_Package renames org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
   package WeakCrypt_Package renames org.allbinary.logic.system.security.crypt.WeakCrypt_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type DbInitInfo is tagged;
   type DbInitInfo_Access is access all DbInitInfo'Class;
   type DbInitInfo_Access_Array is array (Natural range <>) of DbInitInfo_Access;
   type DbInitInfo_Access_Array_Access is access all DbInitInfo_Access_Array;

   type DbInitInfo is new DbConnectionInfo with record
      commonStrings : CommonStrings_Access;
      directory : Directory_Access;
      httpData : HttpData_Access;
      GET_URL : Unbounded_String;
      PACKAGE_Id : Unbounded_String;
      initFileName : Unbounded_String;
      hasRead : Boolean;
   end record;

   procedure Initialize (This : in out DbInitInfo'Class; initFileName : Unbounded_String; read : Boolean);
   function Create (initFileName : Unbounded_String; read : Boolean) return DbInitInfo_Access;
   function getUrl (This : in out DbInitInfo) return Unbounded_String;
   procedure getUrl (This : in out DbInitInfo);
   procedure write (This : in out DbInitInfo);
   procedure load (This : in out DbInitInfo);
   procedure setHasRead (This : in out DbInitInfo; value : Boolean);
   procedure updateIfNeeded (This : in out DbInitInfo);
   function getName (This : in out DbInitInfo) return Unbounded_String;
   procedure getName (This : in out DbInitInfo);
   function getUserName (This : in out DbInitInfo) return Unbounded_String;
   procedure getUserName (This : in out DbInitInfo);
   function getPassword (This : in out DbInitInfo) return Unbounded_String;
   procedure getPassword (This : in out DbInitInfo);
   function getSchema (This : in out DbInitInfo) return Unbounded_String;
   procedure getSchema (This : in out DbInitInfo);
   function getServer (This : in out DbInitInfo) return Unbounded_String;
   procedure getServer (This : in out DbInitInfo);
   function getPort (This : in out DbInitInfo) return Unbounded_String;
   procedure getPort (This : in out DbInitInfo);

end org.allbinary.business.init.db.DbInitInfo_Package;


