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
with org.allbinary.thirdparty.store.NoThirdPartyStore_Package; use org.allbinary.thirdparty.store.NoThirdPartyStore_Package;
with org.allbinary.thirdparty.store.ThirdPartyStore_Package; use org.allbinary.thirdparty.store.ThirdPartyStore_Package;

package org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package is


   type ThirdPartyStoreFactory is tagged;
   type ThirdPartyStoreFactory_Access is access all ThirdPartyStoreFactory'Class;
   type ThirdPartyStoreFactory_Access_Array is array (Natural range <>) of ThirdPartyStoreFactory_Access;
   type ThirdPartyStoreFactory_Access_Array_Access is access all ThirdPartyStoreFactory_Access_Array;
   type ThirdPartyStoreFactory_Access_Array_Access_Array is array (Natural range <>) of ThirdPartyStoreFactory_Access_Array_Access;
   type ThirdPartyStoreFactory_Access_Array_Access_Array_Access is access all ThirdPartyStoreFactory_Access_Array_Access_Array;

   type ThirdPartyStoreFactory is new Java_Object with null record;
   instance : NoThirdPartyStore_Access;

   procedure Initialize (This : in out ThirdPartyStoreFactory'Class);
   function Create return ThirdPartyStoreFactory_Access;
   function getInstance return ThirdPartyStore_Access;

end org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package;


