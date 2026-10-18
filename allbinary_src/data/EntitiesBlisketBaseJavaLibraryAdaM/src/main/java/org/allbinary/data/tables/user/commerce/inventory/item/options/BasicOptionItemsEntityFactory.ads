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
with org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type BasicOptionItemsEntityFactory is tagged;
   type BasicOptionItemsEntityFactory_Access is access all BasicOptionItemsEntityFactory'Class;
   type BasicOptionItemsEntityFactory_Access_Array is array (Natural range <>) of BasicOptionItemsEntityFactory_Access;
   type BasicOptionItemsEntityFactory_Access_Array_Access is access all BasicOptionItemsEntityFactory_Access_Array;
   type BasicOptionItemsEntityFactory_Access_Array_Access_Array is array (Natural range <>) of BasicOptionItemsEntityFactory_Access_Array_Access;
   type BasicOptionItemsEntityFactory_Access_Array_Access_Array_Access is access all BasicOptionItemsEntityFactory_Access_Array_Access_Array;

   type BasicOptionItemsEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : BasicOptionItemsEntityFactory_Access;

   procedure Initialize (This : in out BasicOptionItemsEntityFactory'Class);
   function Create return BasicOptionItemsEntityFactory_Access;
   function getInstance return BasicOptionItemsEntityFactory_Access;
   function getBasicOptionItemsEntityInstance (This : in out BasicOptionItemsEntityFactory) return BasicOptionItemsEntity_Access;

end org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityFactory_Package;


