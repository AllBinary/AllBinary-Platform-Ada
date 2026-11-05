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

limited with org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package;
package org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References is
   type ShippingMethodsInterface_Access is access all org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package.ShippingMethodsInterface'Class;
   type ShippingMethodsInterface_Access_Array is array (Natural range <>) of ShippingMethodsInterface_Access;
   type ShippingMethodsInterface_Access_Array_Access is access all ShippingMethodsInterface_Access_Array;
   type ShippingMethodsInterface_Access_Array_Access_Array is array (Natural range <>) of ShippingMethodsInterface_Access_Array_Access;
   type ShippingMethodsInterface_Access_Array_Access_Array_Access is access all ShippingMethodsInterface_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References;

with org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References;

package org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ShippingInterface_Package renames Standard.org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype ShippingInterface_Access is org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References.ShippingInterface_Access;
   use type ShippingInterface_Access;
   subtype ShippingInterface_Access_Array is org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References.ShippingInterface_Access_Array;
   use type ShippingInterface_Access_Array;
   subtype ShippingInterface_Access_Array_Access is org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References.ShippingInterface_Access_Array_Access;
   use type ShippingInterface_Access_Array_Access;
   subtype ShippingInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References.ShippingInterface_Access_Array_Access_Array;
   use type ShippingInterface_Access_Array_Access_Array;
   subtype ShippingInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References.ShippingInterface_Access_Array_Access_Array_Access;
   use type ShippingInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ShippingMethodsInterface is interface;
   subtype ShippingMethodsInterface_Access is org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References.ShippingMethodsInterface_Access;
   function "=" (Left, Right : ShippingMethodsInterface_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References."=";
   subtype ShippingMethodsInterface_Access_Array is org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References.ShippingMethodsInterface_Access_Array;
   function "=" (Left, Right : ShippingMethodsInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References."=";
   subtype ShippingMethodsInterface_Access_Array_Access is org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References.ShippingMethodsInterface_Access_Array_Access;
   function "=" (Left, Right : ShippingMethodsInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References."=";
   subtype ShippingMethodsInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References.ShippingMethodsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingMethodsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References."=";
   subtype ShippingMethodsInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References.ShippingMethodsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingMethodsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package_References."=";
   function Java_Object_Access_From_ShippingMethodsInterface (Value : ShippingMethodsInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function get (This : in out ShippingMethodsInterface) return BasicArrayList_Access is abstract;
   function getShippingInterface (This : in out ShippingMethodsInterface; name : Unbounded_String) return ShippingInterface_Access is abstract;
   procedure getShippingInterface (This : in out ShippingMethodsInterface; name : Unbounded_String) is abstract;
   function getDefault (This : in out ShippingMethodsInterface) return ShippingInterface_Access is abstract;

end org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package;


