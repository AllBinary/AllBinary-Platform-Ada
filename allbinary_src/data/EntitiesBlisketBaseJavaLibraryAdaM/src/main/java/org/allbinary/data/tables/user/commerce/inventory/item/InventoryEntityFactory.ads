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
limited with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
package org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References is
   type InventoryEntityFactory_Access is access all org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package.InventoryEntityFactory'Class;
   type InventoryEntityFactory_Access_Array is array (Natural range <>) of InventoryEntityFactory_Access;
   type InventoryEntityFactory_Access_Array_Access is access all InventoryEntityFactory_Access_Array;
   type InventoryEntityFactory_Access_Array_Access_Array is array (Natural range <>) of InventoryEntityFactory_Access_Array_Access;
   type InventoryEntityFactory_Access_Array_Access_Array_Access is access all InventoryEntityFactory_Access_Array_Access_Array;
   type InventoryEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventoryEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : InventoryEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventoryEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventoryEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventoryEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in InventoryEntityFactory_Access_Array_Object'Class then InventoryEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type InventoryEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventoryEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InventoryEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventoryEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventoryEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventoryEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InventoryEntityFactory_Access_Array_Access_Array_Object'Class then InventoryEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References;
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
limited with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References;

package org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package is

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
   subtype InventoryEntity_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access;
   use type InventoryEntity_Access;
   subtype InventoryEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array;
   use type InventoryEntity_Access_Array;
   subtype InventoryEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access;
   use type InventoryEntity_Access_Array_Access;
   subtype InventoryEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access_Array;
   use type InventoryEntity_Access_Array_Access_Array;
   subtype InventoryEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access_Array_Access;
   use type InventoryEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InventoryEntityFactory_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References.InventoryEntityFactory_Access;
   function "=" (Left, Right : InventoryEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References."=";
   subtype InventoryEntityFactory_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References.InventoryEntityFactory_Access_Array;
   function "=" (Left, Right : InventoryEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References."=";
   subtype InventoryEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References.InventoryEntityFactory_Access_Array_Access;
   function "=" (Left, Right : InventoryEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References."=";
   function Java_Box (Value : InventoryEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References.Java_Box;
   function Java_Unbox_InventoryEntityFactory_Access_Array (Value : access Java_Object'Class) return InventoryEntityFactory_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References.Java_Unbox_InventoryEntityFactory_Access_Array;
   subtype InventoryEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References.InventoryEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References."=";
   subtype InventoryEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References.InventoryEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References."=";
   function Java_Box (Value : InventoryEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References.Java_Box;
   function Java_Unbox_InventoryEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return InventoryEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package_References.Java_Unbox_InventoryEntityFactory_Access_Array_Access_Array;

   type InventoryEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : InventoryEntityFactory_Access;

   procedure Initialize (This : in out InventoryEntityFactory'Class);
   function Create return InventoryEntityFactory_Access;
   function getInstance return InventoryEntityFactory_Access;
   function getInventoryEntityInstance (This : in out InventoryEntityFactory) return InventoryEntity_Access;

end org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;


