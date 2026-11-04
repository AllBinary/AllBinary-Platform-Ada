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

limited with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
package org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References is
   type ShippingMethodData_Access is access all org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package.ShippingMethodData'Class;
   type ShippingMethodData_Access_Array is array (Natural range <>) of ShippingMethodData_Access;
   type ShippingMethodData_Access_Array_Access is access all ShippingMethodData_Access_Array;
   type ShippingMethodData_Access_Array_Access_Array is array (Natural range <>) of ShippingMethodData_Access_Array_Access;
   type ShippingMethodData_Access_Array_Access_Array_Access is access all ShippingMethodData_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References;

with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ShippingMethodData_Access is org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References.ShippingMethodData_Access;
   function "=" (Left, Right : ShippingMethodData_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References."=";
   subtype ShippingMethodData_Access_Array is org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References.ShippingMethodData_Access_Array;
   function "=" (Left, Right : ShippingMethodData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References."=";
   subtype ShippingMethodData_Access_Array_Access is org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References.ShippingMethodData_Access_Array_Access;
   function "=" (Left, Right : ShippingMethodData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References."=";
   subtype ShippingMethodData_Access_Array_Access_Array is org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References.ShippingMethodData_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingMethodData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References."=";
   subtype ShippingMethodData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References.ShippingMethodData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingMethodData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package_References."=";

   type ShippingMethodData is new Java_Object with null record;
   DESCRIPTION : Unbounded_String;
   DEFAULT : Unbounded_String;
   NAME : Unbounded_String;
   GROUP : Unbounded_String;
   COST : Unbounded_String;

   procedure Initialize (This : in out ShippingMethodData'Class);
   function Create return ShippingMethodData_Access;

end org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;


