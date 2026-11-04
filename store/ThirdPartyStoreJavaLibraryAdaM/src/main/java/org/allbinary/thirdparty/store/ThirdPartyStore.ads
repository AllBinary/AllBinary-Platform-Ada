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

limited with org.allbinary.thirdparty.store.ThirdPartyStore_Package;
package org.allbinary.thirdparty.store.ThirdPartyStore_Package_References is
   type ThirdPartyStore_Access is access all org.allbinary.thirdparty.store.ThirdPartyStore_Package.ThirdPartyStore'Class;
   type ThirdPartyStore_Access_Array is array (Natural range <>) of ThirdPartyStore_Access;
   type ThirdPartyStore_Access_Array_Access is access all ThirdPartyStore_Access_Array;
   type ThirdPartyStore_Access_Array_Access_Array is array (Natural range <>) of ThirdPartyStore_Access_Array_Access;
   type ThirdPartyStore_Access_Array_Access_Array_Access is access all ThirdPartyStore_Access_Array_Access_Array;
end org.allbinary.thirdparty.store.ThirdPartyStore_Package_References;

with org.allbinary.thirdparty.store.ThirdPartyStore_Package_References;
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

package org.allbinary.thirdparty.store.ThirdPartyStore_Package is

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


   subtype ThirdPartyStore_Access is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access;
   function "=" (Left, Right : ThirdPartyStore_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStore_Package_References."=";
   subtype ThirdPartyStore_Access_Array is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array;
   function "=" (Left, Right : ThirdPartyStore_Access_Array) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStore_Package_References."=";
   subtype ThirdPartyStore_Access_Array_Access is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyStore_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStore_Package_References."=";
   subtype ThirdPartyStore_Access_Array_Access_Array is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array_Access_Array;
   function "=" (Left, Right : ThirdPartyStore_Access_Array_Access_Array) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStore_Package_References."=";
   subtype ThirdPartyStore_Access_Array_Access_Array_Access is org.allbinary.thirdparty.store.ThirdPartyStore_Package_References.ThirdPartyStore_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyStore_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyStore_Package_References."=";

   type ThirdPartyStore is new Java_Object with record
      authorized : Boolean;
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out ThirdPartyStore'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return ThirdPartyStore_Access;
   procedure authorize (This : in out ThirdPartyStore; clientInformationInterface_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   function isAuthorized (This : in out ThirdPartyStore) return Boolean;
   procedure setAuthorized (This : in out ThirdPartyStore; authorized : Boolean);
   function getName (This : in out ThirdPartyStore) return Unbounded_String;

end org.allbinary.thirdparty.store.ThirdPartyStore_Package;


