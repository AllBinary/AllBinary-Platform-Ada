-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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


package body org.allbinary.logic.util.cache.PoolType_Package is

   procedure Initialize_Fields (This : in out PoolType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PoolType'Class; cacheType : CacheType_Access) is
   begin
      Initialize_Fields (This);
        This.cacheType := cacheType;
   end Initialize;

   function Create (cacheType : CacheType_Access) return PoolType_Access is
      This : constant PoolType_Access := new PoolType;
   begin
      Initialize (This.all, cacheType);
      return This;
   end Create;

   function getCacheType (This : in out PoolType) return CacheType_Access is
   begin
        return This.cacheType;
   end getCacheType;

   function toString (This : in out PoolType) return Unbounded_String is
      POOL_TYPE : Unbounded_String;
   begin
        POOL_TYPE := To_Unbounded_String ("PoolType: ");
        return POOL_TYPE & This.getCacheType.toString;
   end toString;

   procedure getCacheType (This : in out PoolType) is
      Java_Result : constant CacheType_Access := PoolType'Class (This).getCacheType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCacheType;

   procedure toString (This : in out PoolType) is
      Java_Result : constant Unbounded_String := PoolType'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.util.cache.PoolType_Package;


