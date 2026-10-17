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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.permissions.PermissionItemsEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.permissions.PermissionItemsEntity_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.permissions.PermissionItemsEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PermissionItemsEntityFactory is tagged;
   type PermissionItemsEntityFactory_Access is access all PermissionItemsEntityFactory'Class;
   type PermissionItemsEntityFactory_Access_Array is array (Natural range <>) of PermissionItemsEntityFactory_Access;
   type PermissionItemsEntityFactory_Access_Array_Access is access all PermissionItemsEntityFactory_Access_Array;

   type PermissionItemsEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : PermissionItemsEntityFactory_Access;

   procedure Initialize (This : in out PermissionItemsEntityFactory'Class);
   function Create return PermissionItemsEntityFactory_Access;
   function getInstance return PermissionItemsEntityFactory_Access;
   function getPermissionItemsEntityInstance return PermissionItemsEntity_Access;

end org.allbinary.data.tables.user.commerce.inventory.item.permissions.PermissionItemsEntityFactory_Package;


