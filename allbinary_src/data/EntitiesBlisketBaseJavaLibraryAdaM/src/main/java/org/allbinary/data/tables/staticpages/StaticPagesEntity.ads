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
limited with org.allbinary.data.tables.staticpages.StaticPagesEntity_Package;
package org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References is
   type StaticPagesEntity_Access is access all org.allbinary.data.tables.staticpages.StaticPagesEntity_Package.StaticPagesEntity'Class;
   type StaticPagesEntity_Access_Array is array (Natural range <>) of StaticPagesEntity_Access;
   type StaticPagesEntity_Access_Array_Access is access all StaticPagesEntity_Access_Array;
   type StaticPagesEntity_Access_Array_Access_Array is array (Natural range <>) of StaticPagesEntity_Access_Array_Access;
   type StaticPagesEntity_Access_Array_Access_Array_Access is access all StaticPagesEntity_Access_Array_Access_Array;
   type StaticPagesEntity_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StaticPagesEntity_Access_Array_Access;
   end record;
   function Java_Box (Value : StaticPagesEntity_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StaticPagesEntity_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StaticPagesEntity_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StaticPagesEntity_Access_Array_Access is (if Value /= null and then Value.all in StaticPagesEntity_Access_Array_Object'Class then StaticPagesEntity_Access_Array_Object'Class (Value.all).Value else null);
   type StaticPagesEntity_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StaticPagesEntity_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StaticPagesEntity_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StaticPagesEntity_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StaticPagesEntity_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StaticPagesEntity_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StaticPagesEntity_Access_Array_Access_Array_Object'Class then StaticPagesEntity_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References;

with org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References;
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
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.staticpages.StaticPagesEntityInterface_Package; use org.allbinary.data.tables.staticpages.StaticPagesEntityInterface_Package;

package org.allbinary.data.tables.staticpages.StaticPagesEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
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
   subtype BasicItemData_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access;
   use type BasicItemData_Access;
   subtype BasicItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array;
   use type BasicItemData_Access_Array;
   subtype BasicItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access;
   use type BasicItemData_Access_Array_Access;
   subtype BasicItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array;
   use type BasicItemData_Access_Array_Access_Array;
   subtype BasicItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array_Access;
   use type BasicItemData_Access_Array_Access_Array_Access;
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


   subtype StaticPagesEntity_Access is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access;
   function "=" (Left, Right : StaticPagesEntity_Access) return Boolean renames org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References."=";
   subtype StaticPagesEntity_Access_Array is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array;
   function "=" (Left, Right : StaticPagesEntity_Access_Array) return Boolean renames org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References."=";
   subtype StaticPagesEntity_Access_Array_Access is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array_Access;
   function "=" (Left, Right : StaticPagesEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References."=";
   function Java_Box (Value : StaticPagesEntity_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.Java_Box;
   function Java_Unbox_StaticPagesEntity_Access_Array (Value : access Java_Object'Class) return StaticPagesEntity_Access_Array_Access renames org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.Java_Unbox_StaticPagesEntity_Access_Array;
   subtype StaticPagesEntity_Access_Array_Access_Array is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array_Access_Array;
   function "=" (Left, Right : StaticPagesEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References."=";
   subtype StaticPagesEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StaticPagesEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References."=";
   function Java_Box (Value : StaticPagesEntity_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.Java_Box;
   function Java_Unbox_StaticPagesEntity_Access_Array_Access_Array (Value : access Java_Object'Class) return StaticPagesEntity_Access_Array_Access_Array_Access renames org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.Java_Unbox_StaticPagesEntity_Access_Array_Access_Array;

   type StaticPagesEntity is new AbSqlBean and StaticPagesEntityInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      TABLENAME : Unbounded_String;
   end record;

   procedure Initialize (This : in out StaticPagesEntity'Class);
   function Create return StaticPagesEntity_Access;
   procedure insert (This : in out StaticPagesEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getFile (This : in out StaticPagesEntity; store : Unbounded_String; keywords : Unbounded_String) return Unbounded_String;
   procedure getFile (This : in out StaticPagesEntity; store : Unbounded_String; keywords : Unbounded_String);
   procedure delete (This : in out StaticPagesEntity; keywords : Unbounded_String);
   function dropTable (This : in out StaticPagesEntity) return Unbounded_String;
   procedure update (This : in out StaticPagesEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function createTableStatement (This : in out StaticPagesEntity) return Unbounded_String;
   function createTable (This : in out StaticPagesEntity) return Unbounded_String;

end org.allbinary.data.tables.staticpages.StaticPagesEntity_Package;


