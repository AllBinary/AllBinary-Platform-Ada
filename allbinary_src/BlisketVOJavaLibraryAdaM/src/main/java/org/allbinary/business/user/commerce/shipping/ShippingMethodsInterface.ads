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
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package; use org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;

package org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package ShippingInterface_Package renames org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;

   type ShippingMethodsInterface is interface;
   type ShippingMethodsInterface_Access is access all ShippingMethodsInterface'Class;
   type ShippingMethodsInterface_Access_Array is array (Natural range <>) of ShippingMethodsInterface_Access;
   type ShippingMethodsInterface_Access_Array_Access is access all ShippingMethodsInterface_Access_Array;
   function get (This : in out ShippingMethodsInterface) return BasicArrayList_Access is abstract;
   function getShippingInterface (This : in out ShippingMethodsInterface; name : Unbounded_String) return ShippingInterface_Access is abstract;
   function getDefault (This : in out ShippingMethodsInterface) return ShippingInterface_Access is abstract;

end org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package;


