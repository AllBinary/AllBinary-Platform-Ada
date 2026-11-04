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

limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References is
   type PaymentGatewaysData_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package.PaymentGatewaysData'Class;
   type PaymentGatewaysData_Access_Array is array (Natural range <>) of PaymentGatewaysData_Access;
   type PaymentGatewaysData_Access_Array_Access is access all PaymentGatewaysData_Access_Array;
   type PaymentGatewaysData_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewaysData_Access_Array_Access;
   type PaymentGatewaysData_Access_Array_Access_Array_Access is access all PaymentGatewaysData_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentGatewaysData_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References.PaymentGatewaysData_Access;
   function "=" (Left, Right : PaymentGatewaysData_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References."=";
   subtype PaymentGatewaysData_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References.PaymentGatewaysData_Access_Array;
   function "=" (Left, Right : PaymentGatewaysData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References."=";
   subtype PaymentGatewaysData_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References.PaymentGatewaysData_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewaysData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References."=";
   subtype PaymentGatewaysData_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References.PaymentGatewaysData_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewaysData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References."=";
   subtype PaymentGatewaysData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References.PaymentGatewaysData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewaysData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package_References."=";

   type PaymentGatewaysData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out PaymentGatewaysData'Class);
   function Create return PaymentGatewaysData_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package;


