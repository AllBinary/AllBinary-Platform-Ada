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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package; use org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package;

package org.allbinary.data.tables.user.address.StreetAddressesEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;

   type StreetAddressesEntity is tagged;
   type StreetAddressesEntity_Access is access all StreetAddressesEntity'Class;
   type StreetAddressesEntity_Access_Array is array (Natural range <>) of StreetAddressesEntity_Access;
   type StreetAddressesEntity_Access_Array_Access is access all StreetAddressesEntity_Access_Array;
   type StreetAddressesEntity_Access_Array_Access_Array is array (Natural range <>) of StreetAddressesEntity_Access_Array_Access;
   type StreetAddressesEntity_Access_Array_Access_Array_Access is access all StreetAddressesEntity_Access_Array_Access_Array;

   type StreetAddressesEntity is new AbSqlBean and StreetAddressesEntityInterface with record
      logUtil : LogUtil_Access;
      userName : Unbounded_String;
   end record;

   procedure Initialize (This : in out StreetAddressesEntity'Class);
   function Create return StreetAddressesEntity_Access;
   procedure Initialize (This : in out StreetAddressesEntity'Class; userName : Unbounded_String);
   function Create (userName : Unbounded_String) return StreetAddressesEntity_Access;
   procedure remove (This : in out StreetAddressesEntity; index : Integer);
   procedure add (This : in out StreetAddressesEntity; address_Param : access StreetAddress_Package.StreetAddress'Class);
   procedure add (This : in out StreetAddressesEntity; address_Param : access StreetAddress_Package.StreetAddress'Class; index : Unbounded_String);
   procedure update (This : in out StreetAddressesEntity; address_Param : access StreetAddress_Package.StreetAddress'Class);
   function getLastId (This : in out StreetAddressesEntity) return Unbounded_String;
   function get (This : in out StreetAddressesEntity) return BasicArrayList_Access;
   function get (This : in out StreetAddressesEntity; index : Integer) return StreetAddress_Access;
   procedure get (This : in out StreetAddressesEntity; index : Integer);
   function getDefault (This : in out StreetAddressesEntity) return StreetAddress_Access;
   procedure setDefault (This : in out StreetAddressesEntity; value : Unbounded_String);
   function getUserName (This : in out StreetAddressesEntity) return Unbounded_String;
   function createTableStatement (This : in out StreetAddressesEntity) return Unbounded_String;
   function createTable (This : in out StreetAddressesEntity) return Unbounded_String;
   function drop (This : in out StreetAddressesEntity) return Unbounded_String;

end org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;


