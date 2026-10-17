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
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory_Package is

   package OrderHistoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type OrderHistoryFactory is tagged;
   type OrderHistoryFactory_Access is access all OrderHistoryFactory'Class;
   type OrderHistoryFactory_Access_Array is array (Natural range <>) of OrderHistoryFactory_Access;
   type OrderHistoryFactory_Access_Array_Access is access all OrderHistoryFactory_Access_Array;

   type OrderHistoryFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out OrderHistoryFactory'Class);
   function Create return OrderHistoryFactory_Access;
   function getInstance (id : Unbounded_String) return OrderHistory_Access;
   procedure getInstance (id : Unbounded_String);

end org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory_Package;


