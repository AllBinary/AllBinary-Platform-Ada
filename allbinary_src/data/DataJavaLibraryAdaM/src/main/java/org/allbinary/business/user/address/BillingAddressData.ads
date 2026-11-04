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

limited with org.allbinary.business.user.address.BillingAddressData_Package;
package org.allbinary.business.user.address.BillingAddressData_Package_References is
   type BillingAddressData_Access is access all org.allbinary.business.user.address.BillingAddressData_Package.BillingAddressData'Class;
   type BillingAddressData_Access_Array is array (Natural range <>) of BillingAddressData_Access;
   type BillingAddressData_Access_Array_Access is access all BillingAddressData_Access_Array;
   type BillingAddressData_Access_Array_Access_Array is array (Natural range <>) of BillingAddressData_Access_Array_Access;
   type BillingAddressData_Access_Array_Access_Array_Access is access all BillingAddressData_Access_Array_Access_Array;
end org.allbinary.business.user.address.BillingAddressData_Package_References;

with org.allbinary.business.user.address.BillingAddressData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.address.BillingAddressData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BillingAddressData_Access is org.allbinary.business.user.address.BillingAddressData_Package_References.BillingAddressData_Access;
   function "=" (Left, Right : BillingAddressData_Access) return Boolean renames org.allbinary.business.user.address.BillingAddressData_Package_References."=";
   subtype BillingAddressData_Access_Array is org.allbinary.business.user.address.BillingAddressData_Package_References.BillingAddressData_Access_Array;
   function "=" (Left, Right : BillingAddressData_Access_Array) return Boolean renames org.allbinary.business.user.address.BillingAddressData_Package_References."=";
   subtype BillingAddressData_Access_Array_Access is org.allbinary.business.user.address.BillingAddressData_Package_References.BillingAddressData_Access_Array_Access;
   function "=" (Left, Right : BillingAddressData_Access_Array_Access) return Boolean renames org.allbinary.business.user.address.BillingAddressData_Package_References."=";
   subtype BillingAddressData_Access_Array_Access_Array is org.allbinary.business.user.address.BillingAddressData_Package_References.BillingAddressData_Access_Array_Access_Array;
   function "=" (Left, Right : BillingAddressData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.address.BillingAddressData_Package_References."=";
   subtype BillingAddressData_Access_Array_Access_Array_Access is org.allbinary.business.user.address.BillingAddressData_Package_References.BillingAddressData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BillingAddressData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.address.BillingAddressData_Package_References."=";

   type BillingAddressData is new Java_Object with null record;
   MAX : Integer;
   MIN : Integer;
   MULTIPLE : Unbounded_String;
   STATES : Unbounded_String;
   SETTOSHIPPINGADDRESS : Unbounded_String;
   SELECT_Id : Unbounded_String;
   SETTOSHIPPINGADDRESSNAME : Unbounded_String;
   BILLINGADDRESSES : Unbounded_String;
   BILLINGADDRESS : Unbounded_String;
   ID : Unbounded_String;
   ADDRESS : Unbounded_String;
   NAME : Unbounded_String;
   STREET : Unbounded_String;
   CITY : Unbounded_String;
   STATE : Unbounded_String;
   CODE : Unbounded_String;
   COUNTRY : Unbounded_String;

   procedure Initialize (This : in out BillingAddressData'Class);
   function Create return BillingAddressData_Access;

end org.allbinary.business.user.address.BillingAddressData_Package;


