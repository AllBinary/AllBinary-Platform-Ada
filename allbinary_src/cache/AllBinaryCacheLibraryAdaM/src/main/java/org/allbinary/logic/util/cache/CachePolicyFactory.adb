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


with org.allbinary.logic.util.cache.CachePolicy_Package; use org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package_References;
with org.allbinary.logic.util.cache.CachePolicy_Package;

package body org.allbinary.logic.util.cache.CachePolicyFactory_Package is

   subtype CachePolicy_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access;
   function "=" (Left, Right : CachePolicy_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array;
   function "=" (Left, Right : CachePolicy_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access;
   function "=" (Left, Right : CachePolicy_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array;
   function "=" (Left, Right : CachePolicy_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CachePolicy_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   procedure Initialize_Fields (This : in out CachePolicyFactory'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("lru");
      This.MAX_TIME_THOUSAND_MAX := CachePolicy_Package.Create (This.NAME, Long_Long_Integer'Last, 1000);
      This.THIRTY_MINUTES_TEN_THOUSAND_MAX := CachePolicy_Package.Create (This.NAME, ((1000) * (60)) * (30), 10000);
      This.THIRTY_MINUTES_FIFTY_THOUSAND_MAX := CachePolicy_Package.Create (This.NAME, ((1000) * (60)) * (30), 100000);
      This.ONE_MINUTE_FIVE_MAX := CachePolicy_Package.Create (This.NAME, ((1000) * (60)) * (1), 5);
      This.ONE_MINUTE_TEN_MAX := CachePolicy_Package.Create (This.NAME, ((1000) * (60)) * (1), 10);
      This.ONE_MINUTE_ONE_HUNDRED_MAX := CachePolicy_Package.Create (This.NAME, ((1000) * (60)) * (1), 100);
   end Initialize_Fields;

   procedure Initialize (This : in out CachePolicyFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CachePolicyFactory_Access is
      This : constant CachePolicyFactory_Access := new CachePolicyFactory;
   begin
      CachePolicyFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CachePolicyFactory_Access is
   begin
        return CachePolicyFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := CachePolicyFactory_Package.Create;

end org.allbinary.logic.util.cache.CachePolicyFactory_Package;


