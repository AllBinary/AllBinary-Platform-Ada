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

package org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type BasicGroupItemsEntityFactory is tagged;
   type BasicGroupItemsEntityFactory_Access is access all BasicGroupItemsEntityFactory'Class;
   type BasicGroupItemsEntityFactory_Access_Array is array (Natural range <>) of BasicGroupItemsEntityFactory_Access;
   type BasicGroupItemsEntityFactory_Access_Array_Access is access all BasicGroupItemsEntityFactory_Access_Array;

   type BasicGroupItemsEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : BasicGroupItemsEntityFactory_Access;

   procedure Initialize (This : in out BasicGroupItemsEntityFactory'Class);
   function Create return BasicGroupItemsEntityFactory_Access;
   function getInstance return BasicGroupItemsEntityFactory_Access;
   procedure getInstance;
   function getBasicGroupItemsEntityInstance (This : in out BasicGroupItemsEntityFactory) return BasicGroupItemsEntity_Access;
   procedure getBasicGroupItemsEntityInstance (This : in out BasicGroupItemsEntityFactory);

end org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package;


