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
--  with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddressData_Package; use org.allbinary.business.user.address.StreetAddressData_Package;
with org.allbinary.data.tables.TableDataFactory_Package; use org.allbinary.data.tables.TableDataFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package; use org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package;

package org.allbinary.data.tables.user.address.StreetAddressesEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package StreetAddressData_Package renames Standard.org.allbinary.business.user.address.StreetAddressData_Package;
   package TableDataFactory_Package renames Standard.org.allbinary.data.tables.TableDataFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type StreetAddressesEntity is tagged;
   type StreetAddressesEntity_Access is access all StreetAddressesEntity'Class;
   type StreetAddressesEntity_Access_Array is array (Natural range <>) of StreetAddressesEntity_Access;
   type StreetAddressesEntity_Access_Array_Access is access all StreetAddressesEntity_Access_Array;

   type StreetAddressesEntity is new AbSqlBean and StreetAddressesEntityInterface with record
      logUtil : LogUtil_Access;
      userName : Unbounded_String;
   end record;

   procedure Initialize (This : in out StreetAddressesEntity'Class);
   function Create return StreetAddressesEntity_Access;
   procedure remove (This : in out StreetAddressesEntity; index : Integer);
   procedure add (This : in out StreetAddressesEntity; address : StreetAddress_Access);
   procedure add (This : in out StreetAddressesEntity; address : StreetAddress_Access; index : Unbounded_String);
   procedure update (This : in out StreetAddressesEntity; address : StreetAddress_Access);
   function getLastId (This : in out StreetAddressesEntity) return Unbounded_String;
   procedure getLastId (This : in out StreetAddressesEntity);
   function get (This : in out StreetAddressesEntity) return BasicArrayList_Access;
   procedure get (This : in out StreetAddressesEntity);
   function get (This : in out StreetAddressesEntity; index : Integer) return StreetAddress_Access;
   procedure get (This : in out StreetAddressesEntity; index : Integer);
   function getDefault (This : in out StreetAddressesEntity) return StreetAddress_Access;
   procedure getDefault (This : in out StreetAddressesEntity);
   procedure setDefault (This : in out StreetAddressesEntity; value : Unbounded_String);
   function getUserName (This : in out StreetAddressesEntity) return Unbounded_String;
   procedure getUserName (This : in out StreetAddressesEntity);
   function createTableStatement (This : in out StreetAddressesEntity) return Unbounded_String;
   procedure createTableStatement (This : in out StreetAddressesEntity);
   function createTable (This : in out StreetAddressesEntity) return Unbounded_String;
   procedure createTable (This : in out StreetAddressesEntity);
   function drop (This : in out StreetAddressesEntity) return Unbounded_String;
   procedure drop (This : in out StreetAddressesEntity);

end org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;


