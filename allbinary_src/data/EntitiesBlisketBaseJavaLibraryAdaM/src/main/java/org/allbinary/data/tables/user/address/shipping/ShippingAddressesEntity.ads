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

with AllBinary_Java;
limited with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
package org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References is
   type ShippingAddressesEntity_Access is access all org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package.ShippingAddressesEntity'Class;
   type ShippingAddressesEntity_Access_Array is array (Natural range <>) of ShippingAddressesEntity_Access;
   type ShippingAddressesEntity_Access_Array_Access is access all ShippingAddressesEntity_Access_Array;
   type ShippingAddressesEntity_Access_Array_Access_Array is array (Natural range <>) of ShippingAddressesEntity_Access_Array_Access;
   type ShippingAddressesEntity_Access_Array_Access_Array_Access is access all ShippingAddressesEntity_Access_Array_Access_Array;
   type ShippingAddressesEntity_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShippingAddressesEntity_Access_Array_Access;
   end record;
   function Java_Box (Value : ShippingAddressesEntity_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShippingAddressesEntity_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShippingAddressesEntity_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShippingAddressesEntity_Access_Array_Access is (if Value /= null and then Value.all in ShippingAddressesEntity_Access_Array_Object'Class then ShippingAddressesEntity_Access_Array_Object'Class (Value.all).Value else null);
   type ShippingAddressesEntity_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShippingAddressesEntity_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShippingAddressesEntity_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShippingAddressesEntity_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShippingAddressesEntity_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShippingAddressesEntity_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShippingAddressesEntity_Access_Array_Access_Array_Object'Class then ShippingAddressesEntity_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References;

with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tables.user.address.StreetAddressesEntity_Package; use org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;

package org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package is

   package StreetAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ShippingAddressesEntity_Access is org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References.ShippingAddressesEntity_Access;
   function "=" (Left, Right : ShippingAddressesEntity_Access) return Boolean renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References."=";
   subtype ShippingAddressesEntity_Access_Array is org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References.ShippingAddressesEntity_Access_Array;
   function "=" (Left, Right : ShippingAddressesEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References."=";
   subtype ShippingAddressesEntity_Access_Array_Access is org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References.ShippingAddressesEntity_Access_Array_Access;
   function "=" (Left, Right : ShippingAddressesEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References."=";
   function Java_Box (Value : ShippingAddressesEntity_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References.Java_Box;
   function Java_Unbox_ShippingAddressesEntity_Access_Array (Value : access Java_Object'Class) return ShippingAddressesEntity_Access_Array_Access renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References.Java_Unbox_ShippingAddressesEntity_Access_Array;
   subtype ShippingAddressesEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References.ShippingAddressesEntity_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingAddressesEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References."=";
   subtype ShippingAddressesEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References.ShippingAddressesEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingAddressesEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References."=";
   function Java_Box (Value : ShippingAddressesEntity_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References.Java_Box;
   function Java_Unbox_ShippingAddressesEntity_Access_Array_Access_Array (Value : access Java_Object'Class) return ShippingAddressesEntity_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package_References.Java_Unbox_ShippingAddressesEntity_Access_Array_Access_Array;

   type ShippingAddressesEntity is new StreetAddressesEntity with record
      TABLENAME : Unbounded_String;
   end record;

   procedure Initialize (This : in out ShippingAddressesEntity'Class; userName : Unbounded_String);
   function Create (userName : Unbounded_String) return ShippingAddressesEntity_Access;

end org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;


