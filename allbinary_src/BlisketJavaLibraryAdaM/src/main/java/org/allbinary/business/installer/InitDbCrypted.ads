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

limited with org.allbinary.business.installer.InitDbCrypted_Package;
package org.allbinary.business.installer.InitDbCrypted_Package_References is
   type InitDbCrypted_Access is access all org.allbinary.business.installer.InitDbCrypted_Package.InitDbCrypted'Class;
   type InitDbCrypted_Access_Array is array (Natural range <>) of InitDbCrypted_Access;
   type InitDbCrypted_Access_Array_Access is access all InitDbCrypted_Access_Array;
   type InitDbCrypted_Access_Array_Access_Array is array (Natural range <>) of InitDbCrypted_Access_Array_Access;
   type InitDbCrypted_Access_Array_Access_Array_Access is access all InitDbCrypted_Access_Array_Access_Array;
end org.allbinary.business.installer.InitDbCrypted_Package_References;

with org.allbinary.business.installer.InitDbCrypted_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References;
limited with org.allbinary.business.init.db.HistoryDbInitInfo_Package;
with org.allbinary.business.init.db.HistoryDbInitInfo_Package_References;
limited with org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package_References;
limited with org.allbinary.business.init.db.LogDbInitInfo_Package;
with org.allbinary.business.init.db.LogDbInitInfo_Package_References;
limited with org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
with org.allbinary.business.init.db.StaticPagesDbInitInfo_Package_References;
limited with org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
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
   subtype HistoryDbInitInfo_Access is org.allbinary.business.init.db.HistoryDbInitInfo_Package_References.HistoryDbInitInfo_Access;
   use type HistoryDbInitInfo_Access;
   subtype HistoryDbInitInfo_Access_Array is org.allbinary.business.init.db.HistoryDbInitInfo_Package_References.HistoryDbInitInfo_Access_Array;
   use type HistoryDbInitInfo_Access_Array;
   subtype HistoryDbInitInfo_Access_Array_Access is org.allbinary.business.init.db.HistoryDbInitInfo_Package_References.HistoryDbInitInfo_Access_Array_Access;
   use type HistoryDbInitInfo_Access_Array_Access;
   subtype HistoryDbInitInfo_Access_Array_Access_Array is org.allbinary.business.init.db.HistoryDbInitInfo_Package_References.HistoryDbInitInfo_Access_Array_Access_Array;
   use type HistoryDbInitInfo_Access_Array_Access_Array;
   subtype HistoryDbInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.HistoryDbInitInfo_Package_References.HistoryDbInitInfo_Access_Array_Access_Array_Access;
   use type HistoryDbInitInfo_Access_Array_Access_Array_Access;
   subtype InventoryDbInitInfo_Access is org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.InventoryDbInitInfo_Access;
   use type InventoryDbInitInfo_Access;
   subtype InventoryDbInitInfo_Access_Array is org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.InventoryDbInitInfo_Access_Array;
   use type InventoryDbInitInfo_Access_Array;
   subtype InventoryDbInitInfo_Access_Array_Access is org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.InventoryDbInitInfo_Access_Array_Access;
   use type InventoryDbInitInfo_Access_Array_Access;
   subtype InventoryDbInitInfo_Access_Array_Access_Array is org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.InventoryDbInitInfo_Access_Array_Access_Array;
   use type InventoryDbInitInfo_Access_Array_Access_Array;
   subtype InventoryDbInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.InventoryDbInitInfo_Access_Array_Access_Array_Access;
   use type InventoryDbInitInfo_Access_Array_Access_Array_Access;
   subtype LogDbInitInfo_Access is org.allbinary.business.init.db.LogDbInitInfo_Package_References.LogDbInitInfo_Access;
   use type LogDbInitInfo_Access;
   subtype LogDbInitInfo_Access_Array is org.allbinary.business.init.db.LogDbInitInfo_Package_References.LogDbInitInfo_Access_Array;
   use type LogDbInitInfo_Access_Array;
   subtype LogDbInitInfo_Access_Array_Access is org.allbinary.business.init.db.LogDbInitInfo_Package_References.LogDbInitInfo_Access_Array_Access;
   use type LogDbInitInfo_Access_Array_Access;
   subtype LogDbInitInfo_Access_Array_Access_Array is org.allbinary.business.init.db.LogDbInitInfo_Package_References.LogDbInitInfo_Access_Array_Access_Array;
   use type LogDbInitInfo_Access_Array_Access_Array;
   subtype LogDbInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.LogDbInitInfo_Package_References.LogDbInitInfo_Access_Array_Access_Array_Access;
   use type LogDbInitInfo_Access_Array_Access_Array_Access;
   subtype StaticPagesDbInitInfo_Access is org.allbinary.business.init.db.StaticPagesDbInitInfo_Package_References.StaticPagesDbInitInfo_Access;
   use type StaticPagesDbInitInfo_Access;
   subtype StaticPagesDbInitInfo_Access_Array is org.allbinary.business.init.db.StaticPagesDbInitInfo_Package_References.StaticPagesDbInitInfo_Access_Array;
   use type StaticPagesDbInitInfo_Access_Array;
   subtype StaticPagesDbInitInfo_Access_Array_Access is org.allbinary.business.init.db.StaticPagesDbInitInfo_Package_References.StaticPagesDbInitInfo_Access_Array_Access;
   use type StaticPagesDbInitInfo_Access_Array_Access;
   subtype StaticPagesDbInitInfo_Access_Array_Access_Array is org.allbinary.business.init.db.StaticPagesDbInitInfo_Package_References.StaticPagesDbInitInfo_Access_Array_Access_Array;
   use type StaticPagesDbInitInfo_Access_Array_Access_Array;
   subtype StaticPagesDbInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.StaticPagesDbInitInfo_Package_References.StaticPagesDbInitInfo_Access_Array_Access_Array_Access;
   use type StaticPagesDbInitInfo_Access_Array_Access_Array_Access;
   subtype UserDbInitInfo_Access is org.allbinary.business.init.db.UserDbInitInfo_Package_References.UserDbInitInfo_Access;
   use type UserDbInitInfo_Access;
   subtype UserDbInitInfo_Access_Array is org.allbinary.business.init.db.UserDbInitInfo_Package_References.UserDbInitInfo_Access_Array;
   use type UserDbInitInfo_Access_Array;
   subtype UserDbInitInfo_Access_Array_Access is org.allbinary.business.init.db.UserDbInitInfo_Package_References.UserDbInitInfo_Access_Array_Access;
   use type UserDbInitInfo_Access_Array_Access;
   subtype UserDbInitInfo_Access_Array_Access_Array is org.allbinary.business.init.db.UserDbInitInfo_Package_References.UserDbInitInfo_Access_Array_Access_Array;
   use type UserDbInitInfo_Access_Array_Access_Array;
   subtype UserDbInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.UserDbInitInfo_Package_References.UserDbInitInfo_Access_Array_Access_Array_Access;
   use type UserDbInitInfo_Access_Array_Access_Array_Access;
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


   subtype InitDbCrypted_Access is org.allbinary.business.installer.InitDbCrypted_Package_References.InitDbCrypted_Access;
   function "=" (Left, Right : InitDbCrypted_Access) return Boolean renames org.allbinary.business.installer.InitDbCrypted_Package_References."=";
   subtype InitDbCrypted_Access_Array is org.allbinary.business.installer.InitDbCrypted_Package_References.InitDbCrypted_Access_Array;
   function "=" (Left, Right : InitDbCrypted_Access_Array) return Boolean renames org.allbinary.business.installer.InitDbCrypted_Package_References."=";
   subtype InitDbCrypted_Access_Array_Access is org.allbinary.business.installer.InitDbCrypted_Package_References.InitDbCrypted_Access_Array_Access;
   function "=" (Left, Right : InitDbCrypted_Access_Array_Access) return Boolean renames org.allbinary.business.installer.InitDbCrypted_Package_References."=";
   subtype InitDbCrypted_Access_Array_Access_Array is org.allbinary.business.installer.InitDbCrypted_Package_References.InitDbCrypted_Access_Array_Access_Array;
   function "=" (Left, Right : InitDbCrypted_Access_Array_Access_Array) return Boolean renames org.allbinary.business.installer.InitDbCrypted_Package_References."=";
   subtype InitDbCrypted_Access_Array_Access_Array_Access is org.allbinary.business.installer.InitDbCrypted_Package_References.InitDbCrypted_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitDbCrypted_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.installer.InitDbCrypted_Package_References."=";

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


