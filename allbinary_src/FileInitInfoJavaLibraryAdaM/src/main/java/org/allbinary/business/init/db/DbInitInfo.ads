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
with org.allbinary.logic.communication.http.HttpData_Package; use org.allbinary.logic.communication.http.HttpData_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;

package org.allbinary.business.init.db.DbInitInfo_Package is

   package HttpData_Package renames Standard.org.allbinary.logic.communication.http.HttpData_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type DbInitInfo is tagged;
   type DbInitInfo_Access is access all DbInitInfo'Class;
   type DbInitInfo_Access_Array is array (Natural range <>) of DbInitInfo_Access;
   type DbInitInfo_Access_Array_Access is access all DbInitInfo_Access_Array;
   type DbInitInfo_Access_Array_Access_Array is array (Natural range <>) of DbInitInfo_Access_Array_Access;
   type DbInitInfo_Access_Array_Access_Array_Access is access all DbInitInfo_Access_Array_Access_Array;

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
   procedure write (This : in out DbInitInfo);
   procedure load (This : in out DbInitInfo);
   procedure setHasRead (This : in out DbInitInfo; value : Boolean);
   procedure updateIfNeeded (This : in out DbInitInfo);
   function getName (This : in out DbInitInfo) return Unbounded_String;
   function getUserName (This : in out DbInitInfo) return Unbounded_String;
   function getPassword (This : in out DbInitInfo) return Unbounded_String;
   function getSchema (This : in out DbInitInfo) return Unbounded_String;
   function getServer (This : in out DbInitInfo) return Unbounded_String;
   function getPort (This : in out DbInitInfo) return Unbounded_String;

end org.allbinary.business.init.db.DbInitInfo_Package;


