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
limited with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;
package org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References is
   type ShippingAddressesEntityFactory_Access is access all org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package.ShippingAddressesEntityFactory'Class;
   type ShippingAddressesEntityFactory_Access_Array is array (Natural range <>) of ShippingAddressesEntityFactory_Access;
   type ShippingAddressesEntityFactory_Access_Array_Access is access all ShippingAddressesEntityFactory_Access_Array;
   type ShippingAddressesEntityFactory_Access_Array_Access_Array is array (Natural range <>) of ShippingAddressesEntityFactory_Access_Array_Access;
   type ShippingAddressesEntityFactory_Access_Array_Access_Array_Access is access all ShippingAddressesEntityFactory_Access_Array_Access_Array;
   type ShippingAddressesEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShippingAddressesEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ShippingAddressesEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShippingAddressesEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShippingAddressesEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShippingAddressesEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in ShippingAddressesEntityFactory_Access_Array_Object'Class then ShippingAddressesEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ShippingAddressesEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShippingAddressesEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShippingAddressesEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShippingAddressesEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShippingAddressesEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShippingAddressesEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShippingAddressesEntityFactory_Access_Array_Access_Array_Object'Class then ShippingAddressesEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References;

with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;
with org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package is

   package StreetAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype StreetAddressesEntity_Access is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access;
   use type StreetAddressesEntity_Access;
   subtype StreetAddressesEntity_Access_Array is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array;
   use type StreetAddressesEntity_Access_Array;
   subtype StreetAddressesEntity_Access_Array_Access is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array_Access;
   use type StreetAddressesEntity_Access_Array_Access;
   subtype StreetAddressesEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array_Access_Array;
   use type StreetAddressesEntity_Access_Array_Access_Array;
   subtype StreetAddressesEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array_Access_Array_Access;
   use type StreetAddressesEntity_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShippingAddressesEntityFactory_Access is org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References.ShippingAddressesEntityFactory_Access;
   function "=" (Left, Right : ShippingAddressesEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References."=";
   subtype ShippingAddressesEntityFactory_Access_Array is org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References.ShippingAddressesEntityFactory_Access_Array;
   function "=" (Left, Right : ShippingAddressesEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References."=";
   subtype ShippingAddressesEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References.ShippingAddressesEntityFactory_Access_Array_Access;
   function "=" (Left, Right : ShippingAddressesEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References."=";
   function Java_Box (Value : ShippingAddressesEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References.Java_Box;
   function Java_Unbox_ShippingAddressesEntityFactory_Access_Array (Value : access Java_Object'Class) return ShippingAddressesEntityFactory_Access_Array_Access renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References.Java_Unbox_ShippingAddressesEntityFactory_Access_Array;
   subtype ShippingAddressesEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References.ShippingAddressesEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingAddressesEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References."=";
   subtype ShippingAddressesEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References.ShippingAddressesEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingAddressesEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References."=";
   function Java_Box (Value : ShippingAddressesEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References.Java_Box;
   function Java_Unbox_ShippingAddressesEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ShippingAddressesEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package_References.Java_Unbox_ShippingAddressesEntityFactory_Access_Array_Access_Array;

   type ShippingAddressesEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ShippingAddressesEntityFactory_Access;

   procedure Initialize (This : in out ShippingAddressesEntityFactory'Class);
   function Create return ShippingAddressesEntityFactory_Access;
   function getInstance return ShippingAddressesEntityFactory_Access;
   function getInstance (This : in out ShippingAddressesEntityFactory; userName : Unbounded_String) return StreetAddressesEntity_Access;
   procedure getInstance (This : in out ShippingAddressesEntityFactory; userName : Unbounded_String);

end org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;


