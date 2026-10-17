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
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package org.allbinary.business.installer.InitDb_Package is

   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type InitDb is tagged;
   type InitDb_Access is access all InitDb'Class;
   type InitDb_Access_Array is array (Natural range <>) of InitDb_Access;
   type InitDb_Access_Array_Access is access all InitDb_Access_Array;

   type InitDb is new Java_Object with record
      anyType : Java_Object_Access;
      METHOD_CALL_GET_HOST_NAME : Unbounded_String;
      METHOD_CALL_ADD_USERS : Unbounded_String;
      METHOD_CALL_ADD_DATABASES : Unbounded_String;
      METHOD_CALL_ADD_TABLES : Unbounded_String;
      METHOD_CALL_TEMP_MAIN_PATH : Unbounded_String;
      METHOD_CALL_MAIN_PATH : Unbounded_String;
   end record;

   procedure Initialize (This : in out InitDb'Class);
   function Create return InitDb_Access;
   procedure Initialize (This : in out InitDb'Class; dbConnectionInfo_Param : access DbConnectionInfo'Class);
   function Create (dbConnectionInfo_Param : access DbConnectionInfo'Class) return InitDb_Access;
   procedure setHelper (This : in out InitDb; anyType_Param : access Java_Object'Class);
   function getHelper (This : in out InitDb) return Java_Object_Access;
   function getHostName (This : in out InitDb) return Unbounded_String;
   function addUsers (This : in out InitDb) return Boolean;
   function addDatabases (This : in out InitDb) return Boolean;
   function addTables (This : in out InitDb) return Boolean;
   function useTemporaryMainPath (This : in out InitDb) return Boolean;
   function useNormalMainPath (This : in out InitDb) return Boolean;

end org.allbinary.business.installer.InitDb_Package;


