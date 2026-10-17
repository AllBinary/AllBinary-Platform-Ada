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

package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityFactory_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type TransactionEntityFactory is tagged;
   type TransactionEntityFactory_Access is access all TransactionEntityFactory'Class;
   type TransactionEntityFactory_Access_Array is array (Natural range <>) of TransactionEntityFactory_Access;
   type TransactionEntityFactory_Access_Array_Access is access all TransactionEntityFactory_Access_Array;

   type TransactionEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransactionEntityFactory_Access;

   procedure Initialize (This : in out TransactionEntityFactory'Class);
   function Create return TransactionEntityFactory_Access;
   function getInstance return TransactionEntityFactory_Access;
   procedure getInstance;
   function getTransactionEntityInstance (This : in out TransactionEntityFactory) return TransactionEntity_Access;
   procedure getTransactionEntityInstance (This : in out TransactionEntityFactory);

end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityFactory_Package;


