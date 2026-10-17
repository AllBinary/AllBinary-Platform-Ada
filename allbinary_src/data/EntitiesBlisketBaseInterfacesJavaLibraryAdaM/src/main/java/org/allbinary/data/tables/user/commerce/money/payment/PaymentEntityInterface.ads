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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package; use org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package PaymentInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type PaymentEntityInterface is interface and BasicDataTableInterface;
   type PaymentEntityInterface_Access is access all PaymentEntityInterface'Class;
   type PaymentEntityInterface_Access_Array is array (Natural range <>) of PaymentEntityInterface_Access;
   type PaymentEntityInterface_Access_Array_Access is access all PaymentEntityInterface_Access_Array;
   function getLastId (This : in out PaymentEntityInterface; userName : Unbounded_String) return Unbounded_String is abstract;
   procedure setDefault (This : in out PaymentEntityInterface; userName : Unbounded_String; index : Integer) is abstract;
   function getDefault (This : in out PaymentEntityInterface; userName : Unbounded_String) return PaymentInterface_Access is abstract;
   function get (This : in out PaymentEntityInterface; userName : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure add (This : in out PaymentEntityInterface; userName : Unbounded_String; paymentInterface : PaymentInterface_Access) is abstract;
   procedure remove (This : in out PaymentEntityInterface; userName : Unbounded_String; index : Integer) is abstract;
   procedure insert (This : in out PaymentEntityInterface; values : BasicArrayList_Access) is abstract;

end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package;


