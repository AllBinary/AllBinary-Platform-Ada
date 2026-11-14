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
limited with org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package;
package org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References is
   type BasicGroupItemsEntityFactory_Access is access all org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package.BasicGroupItemsEntityFactory'Class;
   type BasicGroupItemsEntityFactory_Access_Array is array (Natural range <>) of BasicGroupItemsEntityFactory_Access;
   type BasicGroupItemsEntityFactory_Access_Array_Access is access all BasicGroupItemsEntityFactory_Access_Array;
   type BasicGroupItemsEntityFactory_Access_Array_Access_Array is array (Natural range <>) of BasicGroupItemsEntityFactory_Access_Array_Access;
   type BasicGroupItemsEntityFactory_Access_Array_Access_Array_Access is access all BasicGroupItemsEntityFactory_Access_Array_Access_Array;
   type BasicGroupItemsEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGroupItemsEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGroupItemsEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGroupItemsEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGroupItemsEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGroupItemsEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicGroupItemsEntityFactory_Access_Array_Object'Class then BasicGroupItemsEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicGroupItemsEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGroupItemsEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGroupItemsEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGroupItemsEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGroupItemsEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGroupItemsEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicGroupItemsEntityFactory_Access_Array_Access_Array_Object'Class then BasicGroupItemsEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package_References;

package org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype BasicGroupItemsEntity_Access is org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package_References.BasicGroupItemsEntity_Access;
   use type BasicGroupItemsEntity_Access;
   subtype BasicGroupItemsEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package_References.BasicGroupItemsEntity_Access_Array;
   use type BasicGroupItemsEntity_Access_Array;
   subtype BasicGroupItemsEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package_References.BasicGroupItemsEntity_Access_Array_Access;
   use type BasicGroupItemsEntity_Access_Array_Access;
   subtype BasicGroupItemsEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package_References.BasicGroupItemsEntity_Access_Array_Access_Array;
   use type BasicGroupItemsEntity_Access_Array_Access_Array;
   subtype BasicGroupItemsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package_References.BasicGroupItemsEntity_Access_Array_Access_Array_Access;
   use type BasicGroupItemsEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicGroupItemsEntityFactory_Access is org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References.BasicGroupItemsEntityFactory_Access;
   function "=" (Left, Right : BasicGroupItemsEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References."=";
   subtype BasicGroupItemsEntityFactory_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References.BasicGroupItemsEntityFactory_Access_Array;
   function "=" (Left, Right : BasicGroupItemsEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References."=";
   subtype BasicGroupItemsEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References.BasicGroupItemsEntityFactory_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemsEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References."=";
   function Java_Box (Value : BasicGroupItemsEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References.Java_Box;
   function Java_Unbox_BasicGroupItemsEntityFactory_Access_Array (Value : access Java_Object'Class) return BasicGroupItemsEntityFactory_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References.Java_Unbox_BasicGroupItemsEntityFactory_Access_Array;
   subtype BasicGroupItemsEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References.BasicGroupItemsEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGroupItemsEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References."=";
   subtype BasicGroupItemsEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References.BasicGroupItemsEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemsEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References."=";
   function Java_Box (Value : BasicGroupItemsEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References.Java_Box;
   function Java_Unbox_BasicGroupItemsEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicGroupItemsEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package_References.Java_Unbox_BasicGroupItemsEntityFactory_Access_Array_Access_Array;

   type BasicGroupItemsEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : BasicGroupItemsEntityFactory_Access;

   procedure Initialize (This : in out BasicGroupItemsEntityFactory'Class);
   function Create return BasicGroupItemsEntityFactory_Access;
   function getInstance return BasicGroupItemsEntityFactory_Access;
   function getBasicGroupItemsEntityInstance (This : in out BasicGroupItemsEntityFactory) return BasicGroupItemsEntity_Access;

end org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package;


