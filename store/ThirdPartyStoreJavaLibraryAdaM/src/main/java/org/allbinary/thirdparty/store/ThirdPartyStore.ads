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
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.thirdparty.store.ThirdPartyStore_Package is

   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type ThirdPartyStore is tagged;
   type ThirdPartyStore_Access is access all ThirdPartyStore'Class;
   type ThirdPartyStore_Access_Array is array (Natural range <>) of ThirdPartyStore_Access;
   type ThirdPartyStore_Access_Array_Access is access all ThirdPartyStore_Access_Array;

   type ThirdPartyStore is new Java_Object with record
      authorized : Boolean;
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out ThirdPartyStore'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return ThirdPartyStore_Access;
   procedure authorize (This : in out ThirdPartyStore; clientInformationInterface : AbeClientInformationInterface_Access);
   function isAuthorized (This : in out ThirdPartyStore) return Boolean;
   procedure isAuthorized (This : in out ThirdPartyStore);
   procedure setAuthorized (This : in out ThirdPartyStore; authorized : Boolean);
   function getName (This : in out ThirdPartyStore) return Unbounded_String;
   procedure getName (This : in out ThirdPartyStore);

end org.allbinary.thirdparty.store.ThirdPartyStore_Package;


