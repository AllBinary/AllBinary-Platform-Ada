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
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type OrderHistoryEntityFactory is tagged;
   type OrderHistoryEntityFactory_Access is access all OrderHistoryEntityFactory'Class;
   type OrderHistoryEntityFactory_Access_Array is array (Natural range <>) of OrderHistoryEntityFactory_Access;
   type OrderHistoryEntityFactory_Access_Array_Access is access all OrderHistoryEntityFactory_Access_Array;

   type OrderHistoryEntityFactory is new Java_Object with null record;

   procedure Initialize (This : in out OrderHistoryEntityFactory'Class);
   function Create return OrderHistoryEntityFactory_Access;
   function getInstance return OrderHistoryEntity_Access;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;


