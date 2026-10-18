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
with org.allbinary.logic.util.cache.CachePolicy_Package; use org.allbinary.logic.util.cache.CachePolicy_Package;

package org.allbinary.logic.util.cache.CachePolicyFactory_Package is


   type CachePolicyFactory is tagged;
   type CachePolicyFactory_Access is access all CachePolicyFactory'Class;
   type CachePolicyFactory_Access_Array is array (Natural range <>) of CachePolicyFactory_Access;
   type CachePolicyFactory_Access_Array_Access is access all CachePolicyFactory_Access_Array;
   type CachePolicyFactory_Access_Array_Access_Array is array (Natural range <>) of CachePolicyFactory_Access_Array_Access;
   type CachePolicyFactory_Access_Array_Access_Array_Access is access all CachePolicyFactory_Access_Array_Access_Array;

   type CachePolicyFactory is new Java_Object with record
      NAME : Unbounded_String;
      MAX_TIME_THOUSAND_MAX : CachePolicy_Access;
      THIRTY_MINUTES_TEN_THOUSAND_MAX : CachePolicy_Access;
      THIRTY_MINUTES_FIFTY_THOUSAND_MAX : CachePolicy_Access;
      ONE_MINUTE_FIVE_MAX : CachePolicy_Access;
      ONE_MINUTE_TEN_MAX : CachePolicy_Access;
      ONE_MINUTE_ONE_HUNDRED_MAX : CachePolicy_Access;
   end record;
   instance : CachePolicyFactory_Access;

   procedure Initialize (This : in out CachePolicyFactory'Class);
   function Create return CachePolicyFactory_Access;
   function getInstance return CachePolicyFactory_Access;

end org.allbinary.logic.util.cache.CachePolicyFactory_Package;


