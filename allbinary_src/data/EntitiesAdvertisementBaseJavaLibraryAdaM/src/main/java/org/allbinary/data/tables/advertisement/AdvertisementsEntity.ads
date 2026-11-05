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

limited with org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package;
package org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References is
   type AdvertisementsEntity_Access is access all org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package.AdvertisementsEntity'Class;
   type AdvertisementsEntity_Access_Array is array (Natural range <>) of AdvertisementsEntity_Access;
   type AdvertisementsEntity_Access_Array_Access is access all AdvertisementsEntity_Access_Array;
   type AdvertisementsEntity_Access_Array_Access_Array is array (Natural range <>) of AdvertisementsEntity_Access_Array_Access;
   type AdvertisementsEntity_Access_Array_Access_Array_Access is access all AdvertisementsEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References;

with org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.advertisement.AdvertisementInterface_Package;
with org.allbinary.business.advertisement.AdvertisementInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package; use org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package;

package org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AdvertisementInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementInterface_Package;
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
   subtype AdvertisementInterface_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access;
   use type AdvertisementInterface_Access;
   subtype AdvertisementInterface_Access_Array is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array;
   use type AdvertisementInterface_Access_Array;
   subtype AdvertisementInterface_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access;
   use type AdvertisementInterface_Access_Array_Access;
   subtype AdvertisementInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access_Array;
   use type AdvertisementInterface_Access_Array_Access_Array;
   subtype AdvertisementInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access_Array_Access;
   use type AdvertisementInterface_Access_Array_Access_Array_Access;
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


   subtype AdvertisementsEntity_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References.AdvertisementsEntity_Access;
   function "=" (Left, Right : AdvertisementsEntity_Access) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References."=";
   subtype AdvertisementsEntity_Access_Array is org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References.AdvertisementsEntity_Access_Array;
   function "=" (Left, Right : AdvertisementsEntity_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References."=";
   subtype AdvertisementsEntity_Access_Array_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References.AdvertisementsEntity_Access_Array_Access;
   function "=" (Left, Right : AdvertisementsEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References."=";
   subtype AdvertisementsEntity_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References.AdvertisementsEntity_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementsEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References."=";
   subtype AdvertisementsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References.AdvertisementsEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementsEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package_References."=";

   type AdvertisementsEntity is new AbSqlBean and AdvertisementsEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
      U_INDEX : Unbounded_String;
   end record;

   procedure Initialize (This : in out AdvertisementsEntity'Class);
   function Create return AdvertisementsEntity_Access;
   procedure delete (This : in out AdvertisementsEntity; value : Unbounded_String);
   function get (This : in out AdvertisementsEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure get (This : in out AdvertisementsEntity; storeName : Unbounded_String);
   function get (This : in out AdvertisementsEntity; storeName : Unbounded_String; advertismentName : Unbounded_String) return AdvertisementInterface_Access;
   procedure get (This : in out AdvertisementsEntity; storeName : Unbounded_String; advertismentName : Unbounded_String);
   function createTableStatement (This : in out AdvertisementsEntity) return Unbounded_String;
   function createTable (This : in out AdvertisementsEntity) return Unbounded_String;
   procedure update (This : in out AdvertisementsEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function dropTable (This : in out AdvertisementsEntity) return Unbounded_String;
   procedure insert (This : in out AdvertisementsEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package;


