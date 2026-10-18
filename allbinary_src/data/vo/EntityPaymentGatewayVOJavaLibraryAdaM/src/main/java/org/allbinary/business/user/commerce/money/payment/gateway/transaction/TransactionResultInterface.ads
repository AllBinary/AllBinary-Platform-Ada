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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type TransactionResultInterface is interface;
   type TransactionResultInterface_Access is access all TransactionResultInterface'Class;
   type TransactionResultInterface_Access_Array is array (Natural range <>) of TransactionResultInterface_Access;
   type TransactionResultInterface_Access_Array_Access is access all TransactionResultInterface_Access_Array;
   type TransactionResultInterface_Access_Array_Access_Array is array (Natural range <>) of TransactionResultInterface_Access_Array_Access;
   type TransactionResultInterface_Access_Array_Access_Array_Access is access all TransactionResultInterface_Access_Array_Access_Array;
   function toString (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getValues (This : in out TransactionResultInterface) return BasicArrayList_Access is abstract;
   function getResult (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getPnRef (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getRespMsg (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getAvsAddr (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getAvsZip (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getOrigResult (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getStatus (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getFraudCode (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getFraudMsg (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getErrCode (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getScore (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getReason1 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getReason2 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getReason3 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException1 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException2 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException3 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException4 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException5 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException6 (This : in out TransactionResultInterface) return Unbounded_String is abstract;
   function getException7 (This : in out TransactionResultInterface) return Unbounded_String is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;


