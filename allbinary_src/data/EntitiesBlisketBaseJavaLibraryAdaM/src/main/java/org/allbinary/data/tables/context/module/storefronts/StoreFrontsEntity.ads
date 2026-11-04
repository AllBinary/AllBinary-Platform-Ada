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

limited with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;
package org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References is
   type StoreFrontsEntity_Access is access all org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package.StoreFrontsEntity'Class;
   type StoreFrontsEntity_Access_Array is array (Natural range <>) of StoreFrontsEntity_Access;
   type StoreFrontsEntity_Access_Array_Access is access all StoreFrontsEntity_Access_Array;
   type StoreFrontsEntity_Access_Array_Access_Array is array (Natural range <>) of StoreFrontsEntity_Access_Array_Access;
   type StoreFrontsEntity_Access_Array_Access_Array_Access is access all StoreFrontsEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References;

with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References;
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
limited with org.allbinary.business.context.modules.storefront.StoreFront_Package;
with org.allbinary.business.context.modules.storefront.StoreFront_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package; use org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package;

package org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFront_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFront_Package;
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
   subtype StoreFront_Access is org.allbinary.business.context.modules.storefront.StoreFront_Package_References.StoreFront_Access;
   use type StoreFront_Access;
   subtype StoreFront_Access_Array is org.allbinary.business.context.modules.storefront.StoreFront_Package_References.StoreFront_Access_Array;
   use type StoreFront_Access_Array;
   subtype StoreFront_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFront_Package_References.StoreFront_Access_Array_Access;
   use type StoreFront_Access_Array_Access;
   subtype StoreFront_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFront_Package_References.StoreFront_Access_Array_Access_Array;
   use type StoreFront_Access_Array_Access_Array;
   subtype StoreFront_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFront_Package_References.StoreFront_Access_Array_Access_Array_Access;
   use type StoreFront_Access_Array_Access_Array_Access;
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


   subtype StoreFrontsEntity_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access;
   function "=" (Left, Right : StoreFrontsEntity_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References."=";
   subtype StoreFrontsEntity_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array;
   function "=" (Left, Right : StoreFrontsEntity_Access_Array) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References."=";
   subtype StoreFrontsEntity_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References."=";
   subtype StoreFrontsEntity_Access_Array_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontsEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References."=";
   subtype StoreFrontsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References."=";

   type StoreFrontsEntity is new AbSqlBean and StoreFrontsEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out StoreFrontsEntity'Class);
   function Create return StoreFrontsEntity_Access;
   procedure insert (This : in out StoreFrontsEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure delete (This : in out StoreFrontsEntity; value : Unbounded_String);
   function getStoreFrontInterface (This : in out StoreFrontsEntity; name : Unbounded_String) return StoreFront_Access;
   procedure getStoreFrontInterface (This : in out StoreFrontsEntity; name : Unbounded_String);
   function getStoreFrontNames (This : in out StoreFrontsEntity) return BasicArrayList_Access;
   procedure update (This : in out StoreFrontsEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function createTableStatement (This : in out StoreFrontsEntity) return Unbounded_String;
   function createTable (This : in out StoreFrontsEntity) return Unbounded_String;
   function dropTable (This : in out StoreFrontsEntity) return Unbounded_String;

end org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;


