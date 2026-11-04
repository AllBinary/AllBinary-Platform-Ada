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

limited with org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;
package org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References is
   type StreetAddressesEntity_Access is access all org.allbinary.data.tables.user.address.StreetAddressesEntity_Package.StreetAddressesEntity'Class;
   type StreetAddressesEntity_Access_Array is array (Natural range <>) of StreetAddressesEntity_Access;
   type StreetAddressesEntity_Access_Array_Access is access all StreetAddressesEntity_Access_Array;
   type StreetAddressesEntity_Access_Array_Access_Array is array (Natural range <>) of StreetAddressesEntity_Access_Array_Access;
   type StreetAddressesEntity_Access_Array_Access_Array_Access is access all StreetAddressesEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References;

with org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddress_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package; use org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package;

package org.allbinary.data.tables.user.address.StreetAddressesEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype StreetAddress_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access;
   use type StreetAddress_Access;
   subtype StreetAddress_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array;
   use type StreetAddress_Access_Array;
   subtype StreetAddress_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access;
   use type StreetAddress_Access_Array_Access;
   subtype StreetAddress_Access_Array_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array;
   use type StreetAddress_Access_Array_Access_Array;
   subtype StreetAddress_Access_Array_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array_Access;
   use type StreetAddress_Access_Array_Access_Array_Access;
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


   subtype StreetAddressesEntity_Access is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access;
   function "=" (Left, Right : StreetAddressesEntity_Access) return Boolean renames org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References."=";
   subtype StreetAddressesEntity_Access_Array is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array;
   function "=" (Left, Right : StreetAddressesEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References."=";
   subtype StreetAddressesEntity_Access_Array_Access is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array_Access;
   function "=" (Left, Right : StreetAddressesEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References."=";
   subtype StreetAddressesEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array_Access_Array;
   function "=" (Left, Right : StreetAddressesEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References."=";
   subtype StreetAddressesEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StreetAddressesEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References."=";

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


