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

package org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityFactory_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type CustomItemsEntityFactory is tagged;
   type CustomItemsEntityFactory_Access is access all CustomItemsEntityFactory'Class;
   type CustomItemsEntityFactory_Access_Array is array (Natural range <>) of CustomItemsEntityFactory_Access;
   type CustomItemsEntityFactory_Access_Array_Access is access all CustomItemsEntityFactory_Access_Array;

   type CustomItemsEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CustomItemsEntityFactory_Access;

   procedure Initialize (This : in out CustomItemsEntityFactory'Class);
   function Create return CustomItemsEntityFactory_Access;
   function getInstance return CustomItemsEntityFactory_Access;
   procedure getInstance;
   function getCustomItemsEntityInstance (This : in out CustomItemsEntityFactory) return CustomItemsEntity_Access;
   procedure getCustomItemsEntityInstance (This : in out CustomItemsEntityFactory);

end org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityFactory_Package;


