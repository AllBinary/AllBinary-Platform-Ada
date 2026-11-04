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

limited with org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package;
package org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References is
   type BillingAddressesEntityFactory_Access is access all org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package.BillingAddressesEntityFactory'Class;
   type BillingAddressesEntityFactory_Access_Array is array (Natural range <>) of BillingAddressesEntityFactory_Access;
   type BillingAddressesEntityFactory_Access_Array_Access is access all BillingAddressesEntityFactory_Access_Array;
   type BillingAddressesEntityFactory_Access_Array_Access_Array is array (Natural range <>) of BillingAddressesEntityFactory_Access_Array_Access;
   type BillingAddressesEntityFactory_Access_Array_Access_Array_Access is access all BillingAddressesEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References;

with org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References;
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

package org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package is

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


   subtype BillingAddressesEntityFactory_Access is org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References.BillingAddressesEntityFactory_Access;
   function "=" (Left, Right : BillingAddressesEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References."=";
   subtype BillingAddressesEntityFactory_Access_Array is org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References.BillingAddressesEntityFactory_Access_Array;
   function "=" (Left, Right : BillingAddressesEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References."=";
   subtype BillingAddressesEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References.BillingAddressesEntityFactory_Access_Array_Access;
   function "=" (Left, Right : BillingAddressesEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References."=";
   subtype BillingAddressesEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References.BillingAddressesEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BillingAddressesEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References."=";
   subtype BillingAddressesEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References.BillingAddressesEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BillingAddressesEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package_References."=";

   type BillingAddressesEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : BillingAddressesEntityFactory_Access;

   procedure Initialize (This : in out BillingAddressesEntityFactory'Class);
   function Create return BillingAddressesEntityFactory_Access;
   function getInstance return BillingAddressesEntityFactory_Access;
   function getInstance (This : in out BillingAddressesEntityFactory; userName : Unbounded_String) return StreetAddressesEntity_Access;
   procedure getInstance (This : in out BillingAddressesEntityFactory; userName : Unbounded_String);

end org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package;


