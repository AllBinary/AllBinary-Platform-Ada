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

with AllBinary_Java;
limited with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package;
package org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References is
   type AdvertisementAreasEntity_Access is access all org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package.AdvertisementAreasEntity'Class;
   type AdvertisementAreasEntity_Access_Array is array (Natural range <>) of AdvertisementAreasEntity_Access;
   type AdvertisementAreasEntity_Access_Array_Access is access all AdvertisementAreasEntity_Access_Array;
   type AdvertisementAreasEntity_Access_Array_Access_Array is array (Natural range <>) of AdvertisementAreasEntity_Access_Array_Access;
   type AdvertisementAreasEntity_Access_Array_Access_Array_Access is access all AdvertisementAreasEntity_Access_Array_Access_Array;
   type AdvertisementAreasEntity_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementAreasEntity_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementAreasEntity_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementAreasEntity_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementAreasEntity_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementAreasEntity_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementAreasEntity_Access_Array_Object'Class then AdvertisementAreasEntity_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementAreasEntity_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementAreasEntity_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementAreasEntity_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementAreasEntity_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementAreasEntity_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementAreasEntity_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementAreasEntity_Access_Array_Access_Array_Object'Class then AdvertisementAreasEntity_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References;

with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References;
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
limited with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package; use org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package;

package org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AdvertisementAreaInterface_Package renames Standard.org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
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
   subtype AdvertisementAreaInterface_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access;
   use type AdvertisementAreaInterface_Access;
   subtype AdvertisementAreaInterface_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array;
   use type AdvertisementAreaInterface_Access_Array;
   subtype AdvertisementAreaInterface_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access;
   use type AdvertisementAreaInterface_Access_Array_Access;
   subtype AdvertisementAreaInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access_Array;
   use type AdvertisementAreaInterface_Access_Array_Access_Array;
   subtype AdvertisementAreaInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access_Array_Access;
   use type AdvertisementAreaInterface_Access_Array_Access_Array_Access;
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


   subtype AdvertisementAreasEntity_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References.AdvertisementAreasEntity_Access;
   function "=" (Left, Right : AdvertisementAreasEntity_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References."=";
   subtype AdvertisementAreasEntity_Access_Array is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References.AdvertisementAreasEntity_Access_Array;
   function "=" (Left, Right : AdvertisementAreasEntity_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References."=";
   subtype AdvertisementAreasEntity_Access_Array_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References.AdvertisementAreasEntity_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreasEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References."=";
   function Java_Box (Value : AdvertisementAreasEntity_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References.Java_Box;
   function Java_Unbox_AdvertisementAreasEntity_Access_Array (Value : access Java_Object'Class) return AdvertisementAreasEntity_Access_Array_Access renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References.Java_Unbox_AdvertisementAreasEntity_Access_Array;
   subtype AdvertisementAreasEntity_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References.AdvertisementAreasEntity_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementAreasEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References."=";
   subtype AdvertisementAreasEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References.AdvertisementAreasEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreasEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References."=";
   function Java_Box (Value : AdvertisementAreasEntity_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References.Java_Box;
   function Java_Unbox_AdvertisementAreasEntity_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementAreasEntity_Access_Array_Access_Array_Access renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package_References.Java_Unbox_AdvertisementAreasEntity_Access_Array_Access_Array;

   type AdvertisementAreasEntity is new AbSqlBean and AdvertisementAreasEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out AdvertisementAreasEntity'Class);
   function Create return AdvertisementAreasEntity_Access;
   procedure delete (This : in out AdvertisementAreasEntity; value : Unbounded_String);
   function get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String);
   function get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String; advertisementAreaName : Unbounded_String) return AdvertisementAreaInterface_Access;
   procedure get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String; advertisementAreaName : Unbounded_String);
   function createTableStatement (This : in out AdvertisementAreasEntity) return Unbounded_String;
   function createTable (This : in out AdvertisementAreasEntity) return Unbounded_String;
   procedure update (This : in out AdvertisementAreasEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function dropTable (This : in out AdvertisementAreasEntity) return Unbounded_String;
   procedure insert (This : in out AdvertisementAreasEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package;


