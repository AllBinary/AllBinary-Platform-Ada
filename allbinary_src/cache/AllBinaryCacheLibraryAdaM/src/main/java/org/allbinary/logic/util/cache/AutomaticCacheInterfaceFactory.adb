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


package body org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out AutomaticCacheInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AutomaticCacheInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AutomaticCacheInterfaceFactory_Access is
      This : constant AutomaticCacheInterfaceFactory_Access := new AutomaticCacheInterfaceFactory;
   begin
      AutomaticCacheInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface'Class; cacheType_Param : access CacheType'Class; cachePolicy_Param : access CachePolicy'Class) return AutomaticCacheInterface_Access is
      cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access := CacheableInterfaceFactoryInterface_Access (cacheableInterfaceFactoryInterface_Param);
      cacheType : CacheType_Access := CacheType_Access (cacheType_Param);
      cachePolicy : CachePolicy_Access := CachePolicy_Access (cachePolicy_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No such ") & cacheType.toString));
   end getInstance;

   procedure getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface'Class; cacheType_Param : access CacheType'Class; cachePolicy_Param : access CachePolicy'Class) is
      Java_Result : constant AutomaticCacheInterface_Access := getInstance (cacheableInterfaceFactoryInterface_Param, cacheType_Param, cachePolicy_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package;


