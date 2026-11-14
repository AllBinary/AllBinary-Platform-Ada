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
limited with org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package;
package org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References is
   type ItemFactoryUnused_Access is access all org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package.ItemFactoryUnused'Class;
   type ItemFactoryUnused_Access_Array is array (Natural range <>) of ItemFactoryUnused_Access;
   type ItemFactoryUnused_Access_Array_Access is access all ItemFactoryUnused_Access_Array;
   type ItemFactoryUnused_Access_Array_Access_Array is array (Natural range <>) of ItemFactoryUnused_Access_Array_Access;
   type ItemFactoryUnused_Access_Array_Access_Array_Access is access all ItemFactoryUnused_Access_Array_Access_Array;
   type ItemFactoryUnused_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ItemFactoryUnused_Access_Array_Access;
   end record;
   function Java_Box (Value : ItemFactoryUnused_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ItemFactoryUnused_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ItemFactoryUnused_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ItemFactoryUnused_Access_Array_Access is (if Value /= null and then Value.all in ItemFactoryUnused_Access_Array_Object'Class then ItemFactoryUnused_Access_Array_Object'Class (Value.all).Value else null);
   type ItemFactoryUnused_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ItemFactoryUnused_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ItemFactoryUnused_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ItemFactoryUnused_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ItemFactoryUnused_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ItemFactoryUnused_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ItemFactoryUnused_Access_Array_Access_Array_Object'Class then ItemFactoryUnused_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References;

with org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.data.tables.TableMappingInterface_Package_References;

package org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package Reference_Types is
   subtype TableMappingInterface_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access;
   use type TableMappingInterface_Access;
   subtype TableMappingInterface_Access_Array is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array;
   use type TableMappingInterface_Access_Array;
   subtype TableMappingInterface_Access_Array_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access;
   use type TableMappingInterface_Access_Array_Access;
   subtype TableMappingInterface_Access_Array_Access_Array is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access_Array;
   use type TableMappingInterface_Access_Array_Access_Array;
   subtype TableMappingInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access_Array_Access;
   use type TableMappingInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ItemFactoryUnused_Access is org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References.ItemFactoryUnused_Access;
   function "=" (Left, Right : ItemFactoryUnused_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References."=";
   subtype ItemFactoryUnused_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References.ItemFactoryUnused_Access_Array;
   function "=" (Left, Right : ItemFactoryUnused_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References."=";
   subtype ItemFactoryUnused_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References.ItemFactoryUnused_Access_Array_Access;
   function "=" (Left, Right : ItemFactoryUnused_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References."=";
   function Java_Box (Value : ItemFactoryUnused_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References.Java_Box;
   function Java_Unbox_ItemFactoryUnused_Access_Array (Value : access Java_Object'Class) return ItemFactoryUnused_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References.Java_Unbox_ItemFactoryUnused_Access_Array;
   subtype ItemFactoryUnused_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References.ItemFactoryUnused_Access_Array_Access_Array;
   function "=" (Left, Right : ItemFactoryUnused_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References."=";
   subtype ItemFactoryUnused_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References.ItemFactoryUnused_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemFactoryUnused_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References."=";
   function Java_Box (Value : ItemFactoryUnused_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References.Java_Box;
   function Java_Unbox_ItemFactoryUnused_Access_Array_Access_Array (Value : access Java_Object'Class) return ItemFactoryUnused_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package_References.Java_Unbox_ItemFactoryUnused_Access_Array_Access_Array;

   type ItemFactoryUnused is new Java_Object with null record;

   procedure Initialize (This : in out ItemFactoryUnused'Class);
   function Create return ItemFactoryUnused_Access;
   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) return TableMappingInterface_Access;
   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class);
   function getInstance (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return TableMappingInterface_Access;
   procedure getInstance (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);

end org.allbinary.business.user.commerce.inventory.item.ItemFactoryUnused_Package;


