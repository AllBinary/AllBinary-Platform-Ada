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

package org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package is


   type PaymentInterface is interface;
   type PaymentInterface_Access is access all PaymentInterface'Class;
   type PaymentInterface_Access_Array is array (Natural range <>) of PaymentInterface_Access;
   type PaymentInterface_Access_Array_Access is access all PaymentInterface_Access_Array;
   type PaymentInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentInterface_Access_Array_Access;
   type PaymentInterface_Access_Array_Access_Array_Access is access all PaymentInterface_Access_Array_Access_Array;
   procedure setName (This : in out PaymentInterface; value : Unbounded_String) is abstract;
   procedure setType (This : in out PaymentInterface; value : Unbounded_String) is abstract;
   procedure setExpiration (This : in out PaymentInterface; value : Unbounded_String) is abstract;
   procedure setNumber (This : in out PaymentInterface; value : Unbounded_String) is abstract;
   function getId (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getName (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getType (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getExpiration (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getEncryption (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getNumber (This : in out PaymentInterface) return Unbounded_String is abstract;
   function getLastFour (This : in out PaymentInterface) return Unbounded_String is abstract;
   function isDefault (This : in out PaymentInterface) return Boolean is abstract;

end org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;


