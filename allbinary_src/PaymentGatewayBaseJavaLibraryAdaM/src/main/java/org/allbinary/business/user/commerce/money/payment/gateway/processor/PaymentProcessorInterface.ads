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
with org.allbinary.business.user.commerce.money.payment.PaymentException_Package; use org.allbinary.business.user.commerce.money.payment.PaymentException_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package is

   package PaymentException_Package renames org.allbinary.business.user.commerce.money.payment.PaymentException_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;

   type PaymentProcessorInterface is interface and DomNodeInterface;
   type PaymentProcessorInterface_Access is access all PaymentProcessorInterface'Class;
   type PaymentProcessorInterface_Access_Array is array (Natural range <>) of PaymentProcessorInterface_Access;
   type PaymentProcessorInterface_Access_Array_Access is access all PaymentProcessorInterface_Access_Array;
   procedure process (This : in out PaymentProcessorInterface) is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package;


