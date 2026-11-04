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

limited with org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package;
package org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References is
   type ThirdPartyStoreFactory_Access is access all org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package.ThirdPartyStoreFactory'Class;
   type ThirdPartyStoreFactory_Access_Array is array (Natural range <>) of ThirdPartyStoreFactory_Access;
   type ThirdPartyStoreFactory_Access_Array_Access is access all ThirdPartyStoreFactory_Access_Array;
   type ThirdPartyStoreFactory_Access_Array_Access_Array is array (Natural range <>) of ThirdPartyStoreFactory_Access_Array_Access;
   type ThirdPartyStoreFactory_Access_Array_Access_Array_Access is access all ThirdPartyStoreFactory_Access_Array_Access_Array;
end org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References;

with org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.thirdparty.store.NoThirdPartyStore_Package;
with org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References;
limited with org.allbinary.thirdparty.store.ThirdPartyStore_Package;
with org.allbinary.thirdparty.store.ThirdPartyStore_Package_References;

package org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package is

   package Reference_Types is
   subtype NoThirdPartyStore_Access is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access;
   use type NoThirdPartyStore_Access;
   subtype NoThirdPartyStore_Access_Array is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array;
   use type NoThirdPartyStore_Access_Array;
   subtype NoThirdPartyStore_Access_Array_Access is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array_Access;
   use type NoThirdPartyStore_Access_Array_Access;
   subtype NoThirdPartyStore_Access_Array_Access_Array is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array_Access_Array;
   use type NoThirdPartyStore_Access_Array_Access_Array;
   subtype NoThirdPartyStore_Access_Array_Access_Array_Access is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array_Access_Array_Access;
   use type NoThirdPartyStore_Access_Array_Access_Array_Access;
   subtype ThirdPartyStore_Access is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access;
   use type ThirdPartyStore_Access;
   subtype ThirdPartyStore_Access_Array is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array;
   use type ThirdPartyStore_Access_Array;
   subtype ThirdPartyStore_Access_Array_Access is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array_Access;
   use type ThirdPartyStore_Access_Array_Access;
   subtype ThirdPartyStore_Access_Array_Access_Array is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array_Access_Array;
   use type ThirdPartyStore_Access_Array_Access_Array;
   subtype ThirdPartyStore_Access_Array_Access_Array_Access is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array_Access_Array_Access;
   use type ThirdPartyStore_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ThirdPartyStoreFactory_Access is org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References.ThirdPartyStoreFactory_Access;
   function "=" (Left, Right : ThirdPartyStoreFactory_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References."=";
   subtype ThirdPartyStoreFactory_Access_Array is org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References.ThirdPartyStoreFactory_Access_Array;
   function "=" (Left, Right : ThirdPartyStoreFactory_Access_Array) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References."=";
   subtype ThirdPartyStoreFactory_Access_Array_Access is org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References.ThirdPartyStoreFactory_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyStoreFactory_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References."=";
   subtype ThirdPartyStoreFactory_Access_Array_Access_Array is org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References.ThirdPartyStoreFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ThirdPartyStoreFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References."=";
   subtype ThirdPartyStoreFactory_Access_Array_Access_Array_Access is org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References.ThirdPartyStoreFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyStoreFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package_References."=";

   type ThirdPartyStoreFactory is new Java_Object with null record;
   instance : NoThirdPartyStore_Access;

   procedure Initialize (This : in out ThirdPartyStoreFactory'Class);
   function Create return ThirdPartyStoreFactory_Access;
   function getInstance return ThirdPartyStore_Access;

end org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package;


