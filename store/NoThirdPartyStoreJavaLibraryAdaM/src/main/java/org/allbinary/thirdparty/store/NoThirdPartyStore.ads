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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.thirdparty.store.ThirdPartyStore_Package; use org.allbinary.thirdparty.store.ThirdPartyStore_Package;

package org.allbinary.thirdparty.store.NoThirdPartyStore_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type NoThirdPartyStore is tagged;
   type NoThirdPartyStore_Access is access all NoThirdPartyStore'Class;
   type NoThirdPartyStore_Access_Array is array (Natural range <>) of NoThirdPartyStore_Access;
   type NoThirdPartyStore_Access_Array_Access is access all NoThirdPartyStore_Access_Array;

   type NoThirdPartyStore is new ThirdPartyStore with null record;

   procedure Initialize (This : in out NoThirdPartyStore'Class);
   function Create return NoThirdPartyStore_Access;
   procedure authorize (This : in out NoThirdPartyStore; clientInformationInterface_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);

end org.allbinary.thirdparty.store.NoThirdPartyStore_Package;


