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



package body org.allbinary.logic.util.cache.PoolInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out PoolInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PoolInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PoolInterfaceFactory_Access is
      This : constant PoolInterfaceFactory_Access := new PoolInterfaceFactory;
   begin
      PoolInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; poolType_Param : access PoolType_Package.PoolType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) return PoolInterface_Access is
      cacheableInterfaceFactoryInterface : constant CacheableInterfaceFactoryInterface_Access := CacheableInterfaceFactoryInterface_Access (cacheableInterfaceFactoryInterface_Param);
      poolType : constant PoolType_Access := PoolType_Access (poolType_Param);
      cachePolicy : constant CachePolicy_Access := CachePolicy_Access (cachePolicy_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such PoolType: ") & poolType.toString));
        return null;
   end getInstance;

   procedure getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; poolType_Param : access PoolType_Package.PoolType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) is
      Java_Result : constant PoolInterface_Access := getInstance (cacheableInterfaceFactoryInterface_Param => cacheableInterfaceFactoryInterface_Param, poolType_Param => poolType_Param, cachePolicy_Param => cachePolicy_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.PoolInterfaceFactory_Package;


