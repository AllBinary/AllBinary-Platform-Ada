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
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.HistoryDbInitInfo_Package; use org.allbinary.business.init.db.HistoryDbInitInfo_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package; use org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.business.init.db.LogDbInitInfo_Package; use org.allbinary.business.init.db.LogDbInitInfo_Package;
with org.allbinary.business.init.db.StaticPagesDbInitInfo_Package; use org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbDatabaseManagement_Package; use org.allbinary.logic.communication.sql.AbDatabaseManagement_Package;

package org.allbinary.business.installer.InitDbCrypted_Package is

   package DatabaseConnectionInfoInterface_Package renames Standard.org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package HistoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.HistoryDbInitInfo_Package;
   package InventoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package LogDbInitInfo_Package renames Standard.org.allbinary.business.init.db.LogDbInitInfo_Package;
   package StaticPagesDbInitInfo_Package renames Standard.org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbDatabaseManagement_Package renames Standard.org.allbinary.logic.communication.sql.AbDatabaseManagement_Package;

   type InitDbCrypted is tagged;
   type InitDbCrypted_Access is access all InitDbCrypted'Class;
   type InitDbCrypted_Access_Array is array (Natural range <>) of InitDbCrypted_Access;
   type InitDbCrypted_Access_Array_Access is access all InitDbCrypted_Access_Array;
   type InitDbCrypted_Access_Array_Access_Array is array (Natural range <>) of InitDbCrypted_Access_Array_Access;
   type InitDbCrypted_Access_Array_Access_Array_Access is access all InitDbCrypted_Access_Array_Access_Array;

   type InitDbCrypted is new AbDatabaseManagement with record
      logUtil : LogUtil_Access;
      userDbInitInfo : UserDbInitInfo_Access;
      inventoryDbInitInfo : InventoryDbInitInfo_Access;
      historyDbInitInfo : HistoryDbInitInfo_Access;
      staticpagesDbInitInfo : StaticPagesDbInitInfo_Access;
      logDbInitInfo : LogDbInitInfo_Access;
      SQL_FILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out InitDbCrypted'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class);
   function Create (databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) return InitDbCrypted_Access;
   function addUsers (This : in out InitDbCrypted) return Boolean;
   function addDatabases (This : in out InitDbCrypted) return Boolean;
   function addTables (This : in out InitDbCrypted) return Boolean;

end org.allbinary.business.installer.InitDbCrypted_Package;


