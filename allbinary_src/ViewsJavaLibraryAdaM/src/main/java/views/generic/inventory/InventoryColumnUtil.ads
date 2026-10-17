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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;

package views.generic_Id.inventory.InventoryColumnUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;

   type InventoryColumnUtil is tagged;
   type InventoryColumnUtil_Access is access all InventoryColumnUtil'Class;
   type InventoryColumnUtil_Access_Array is array (Natural range <>) of InventoryColumnUtil_Access;
   type InventoryColumnUtil_Access_Array_Access is access all InventoryColumnUtil_Access_Array;

   type InventoryColumnUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
   end record;
   instance : InventoryColumnUtil_Access;

   procedure Initialize (This : in out InventoryColumnUtil'Class);
   function Create return InventoryColumnUtil_Access;
   function getInstance return InventoryColumnUtil_Access;
   function getColumnWhereLike (This : in out InventoryColumnUtil; inventoryEntity_Param : access InventoryEntity_Package.InventoryEntity'Class; category : Unbounded_String; column : Unbounded_String) return BasicArrayList_Access;
   procedure getColumnWhereLike (This : in out InventoryColumnUtil; inventoryEntity_Param : access InventoryEntity_Package.InventoryEntity'Class; category : Unbounded_String; column : Unbounded_String);

end views.generic_Id.inventory.InventoryColumnUtil_Package;


