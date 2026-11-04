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

limited with org.allbinary.business.user.commerce.money.payment.types.TenderType_Package;
package org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References is
   type TenderType_Access is access all org.allbinary.business.user.commerce.money.payment.types.TenderType_Package.TenderType'Class;
   type TenderType_Access_Array is array (Natural range <>) of TenderType_Access;
   type TenderType_Access_Array_Access is access all TenderType_Access_Array;
   type TenderType_Access_Array_Access_Array is array (Natural range <>) of TenderType_Access_Array_Access;
   type TenderType_Access_Array_Access_Array_Access is access all TenderType_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References;

with org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.types.TenderType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TenderType_Access is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access;
   function "=" (Left, Right : TenderType_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References."=";
   subtype TenderType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array;
   function "=" (Left, Right : TenderType_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References."=";
   subtype TenderType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array_Access;
   function "=" (Left, Right : TenderType_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References."=";
   subtype TenderType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array_Access_Array;
   function "=" (Left, Right : TenderType_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References."=";
   subtype TenderType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TenderType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References."=";

   type TenderType is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out TenderType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return TenderType_Access;
   function isEqual (This : in out TenderType; tenderType_Var_Param : access TenderType_Package.TenderType'Class) return Boolean;
   procedure isEqual (This : in out TenderType; tenderType_Var_Param : access TenderType_Package.TenderType'Class);
   function toString (This : in out TenderType) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.types.TenderType_Package;


