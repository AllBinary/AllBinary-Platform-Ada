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


   procedure Initialize (This : in out PoolType'Class; cacheType_Param : access CacheType_Package.CacheType'Class) is
      cacheType : constant CacheType_Access := CacheType_Access (cacheType_Param);
   begin
      Initialize_Fields (This);
        This.cacheType := cacheType;
   end Initialize;

   function Create (cacheType_Param : access CacheType_Package.CacheType'Class) return PoolType_Access is
      This : constant PoolType_Access := new PoolType;
   begin
      PoolType_Package.Initialize (This.all, cacheType_Param);
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
        return POOL_TYPE & PoolType'Class (This).getCacheType.toString;
   end toString;

end org.allbinary.logic.util.cache.PoolType_Package;


