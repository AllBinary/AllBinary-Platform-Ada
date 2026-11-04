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

limited with org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package;
package org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References is
   type TenderTypeFactory_Access is access all org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package.TenderTypeFactory'Class;
   type TenderTypeFactory_Access_Array is array (Natural range <>) of TenderTypeFactory_Access;
   type TenderTypeFactory_Access_Array_Access is access all TenderTypeFactory_Access_Array;
   type TenderTypeFactory_Access_Array_Access_Array is array (Natural range <>) of TenderTypeFactory_Access_Array_Access;
   type TenderTypeFactory_Access_Array_Access_Array_Access is access all TenderTypeFactory_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References;

with org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.types.TenderType_Package;
with org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References;

package org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package is

   package Reference_Types is
   subtype TenderType_Access is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access;
   use type TenderType_Access;
   subtype TenderType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array;
   use type TenderType_Access_Array;
   subtype TenderType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array_Access;
   use type TenderType_Access_Array_Access;
   subtype TenderType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array_Access_Array;
   use type TenderType_Access_Array_Access_Array;
   subtype TenderType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array_Access_Array_Access;
   use type TenderType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TenderTypeFactory_Access is org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References.TenderTypeFactory_Access;
   function "=" (Left, Right : TenderTypeFactory_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References."=";
   subtype TenderTypeFactory_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References.TenderTypeFactory_Access_Array;
   function "=" (Left, Right : TenderTypeFactory_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References."=";
   subtype TenderTypeFactory_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References.TenderTypeFactory_Access_Array_Access;
   function "=" (Left, Right : TenderTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References."=";
   subtype TenderTypeFactory_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References.TenderTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TenderTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References."=";
   subtype TenderTypeFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References.TenderTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TenderTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package_References."=";

   type TenderTypeFactory is new Java_Object with record
      CREDITCARD : TenderType_Access;
      CHECK : TenderType_Access;
      ACH : TenderType_Access;
   end record;
   instance : TenderTypeFactory_Access;

   procedure Initialize (This : in out TenderTypeFactory'Class);
   function Create return TenderTypeFactory_Access;
   function getInstance return TenderTypeFactory_Access;

end org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package;


