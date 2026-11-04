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

limited with org.allbinary.thirdparty.store.NoThirdPartyStore_Package;
package org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References is
   type NoThirdPartyStore_Access is access all org.allbinary.thirdparty.store.NoThirdPartyStore_Package.NoThirdPartyStore'Class;
   type NoThirdPartyStore_Access_Array is array (Natural range <>) of NoThirdPartyStore_Access;
   type NoThirdPartyStore_Access_Array_Access is access all NoThirdPartyStore_Access_Array;
   type NoThirdPartyStore_Access_Array_Access_Array is array (Natural range <>) of NoThirdPartyStore_Access_Array_Access;
   type NoThirdPartyStore_Access_Array_Access_Array_Access is access all NoThirdPartyStore_Access_Array_Access_Array;
end org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References;

with org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.thirdparty.store.ThirdPartyStore_Package; use org.allbinary.thirdparty.store.ThirdPartyStore_Package;

package org.allbinary.thirdparty.store.NoThirdPartyStore_Package is

   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoThirdPartyStore_Access is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access;
   function "=" (Left, Right : NoThirdPartyStore_Access) return Boolean renames org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References."=";
   subtype NoThirdPartyStore_Access_Array is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array;
   function "=" (Left, Right : NoThirdPartyStore_Access_Array) return Boolean renames org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References."=";
   subtype NoThirdPartyStore_Access_Array_Access is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array_Access;
   function "=" (Left, Right : NoThirdPartyStore_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References."=";
   subtype NoThirdPartyStore_Access_Array_Access_Array is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array_Access_Array;
   function "=" (Left, Right : NoThirdPartyStore_Access_Array_Access_Array) return Boolean renames org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References."=";
   subtype NoThirdPartyStore_Access_Array_Access_Array_Access is org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References.NoThirdPartyStore_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoThirdPartyStore_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.NoThirdPartyStore_Package_References."=";

   type NoThirdPartyStore is new ThirdPartyStore with null record;

   procedure Initialize (This : in out NoThirdPartyStore'Class);
   function Create return NoThirdPartyStore_Access;
   procedure authorize (This : in out NoThirdPartyStore; clientInformationInterface_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);

end org.allbinary.thirdparty.store.NoThirdPartyStore_Package;


