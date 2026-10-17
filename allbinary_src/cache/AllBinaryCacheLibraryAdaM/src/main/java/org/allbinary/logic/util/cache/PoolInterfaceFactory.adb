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
   function getInstance (cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access; poolType : PoolType_Access; cachePolicy : CachePolicy_Access) return PoolInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such PoolType: ") & poolType.toString));
   end getInstance;

   procedure getInstance (cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access; poolType : PoolType_Access; cachePolicy : CachePolicy_Access) is
      Java_Result : constant PoolInterface_Access := getInstance (cacheableInterfaceFactoryInterface, poolType, cachePolicy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.PoolInterfaceFactory_Package;


