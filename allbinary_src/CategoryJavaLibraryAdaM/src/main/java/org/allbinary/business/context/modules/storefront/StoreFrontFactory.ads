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
with org.allbinary.business.context.modules.storefront.StoreFront_Package; use org.allbinary.business.context.modules.storefront.StoreFront_Package;

package org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package is


   type StoreFrontFactory is tagged;
   type StoreFrontFactory_Access is access all StoreFrontFactory'Class;
   type StoreFrontFactory_Access_Array is array (Natural range <>) of StoreFrontFactory_Access;
   type StoreFrontFactory_Access_Array_Access is access all StoreFrontFactory_Access_Array;
   type StoreFrontFactory_Access_Array_Access_Array is array (Natural range <>) of StoreFrontFactory_Access_Array_Access;
   type StoreFrontFactory_Access_Array_Access_Array_Access is access all StoreFrontFactory_Access_Array_Access_Array;

   type StoreFrontFactory is new Java_Object with null record;

   procedure Initialize (This : in out StoreFrontFactory'Class);
   function Create return StoreFrontFactory_Access;
   function getInstance (storeName : Unbounded_String) return StoreFront_Access;
   procedure getInstance (storeName : Unbounded_String);

end org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;


