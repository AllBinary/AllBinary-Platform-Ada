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

limited with org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package;
package org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References is
   type PaymentFactory_Access is access all org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package.PaymentFactory'Class;
   type PaymentFactory_Access_Array is array (Natural range <>) of PaymentFactory_Access;
   type PaymentFactory_Access_Array_Access is access all PaymentFactory_Access_Array;
   type PaymentFactory_Access_Array_Access_Array is array (Natural range <>) of PaymentFactory_Access_Array_Access;
   type PaymentFactory_Access_Array_Access_Array_Access is access all PaymentFactory_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References;

with org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.ServletRequest_Package; use javax.servlet.ServletRequest_Package;
limited with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package is

   package Reference_Types is
   subtype PaymentInterface_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access;
   use type PaymentInterface_Access;
   subtype PaymentInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array;
   use type PaymentInterface_Access_Array;
   subtype PaymentInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access;
   use type PaymentInterface_Access_Array_Access;
   subtype PaymentInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access_Array;
   use type PaymentInterface_Access_Array_Access_Array;
   subtype PaymentInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package_References.PaymentInterface_Access_Array_Access_Array_Access;
   use type PaymentInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaymentFactory_Access is org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References.PaymentFactory_Access;
   function "=" (Left, Right : PaymentFactory_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References."=";
   subtype PaymentFactory_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References.PaymentFactory_Access_Array;
   function "=" (Left, Right : PaymentFactory_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References."=";
   subtype PaymentFactory_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References.PaymentFactory_Access_Array_Access;
   function "=" (Left, Right : PaymentFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References."=";
   subtype PaymentFactory_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References.PaymentFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References."=";
   subtype PaymentFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References.PaymentFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package_References."=";

   type PaymentFactory is new Java_Object with null record;

   procedure Initialize (This : in out PaymentFactory'Class);
   function Create return PaymentFactory_Access;
   function getInstance (request_Param : access ServletRequest_Package.ServletRequest'Class) return PaymentInterface_Access;
   procedure getInstance (request_Param : access ServletRequest_Package.ServletRequest'Class);

end org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package;


