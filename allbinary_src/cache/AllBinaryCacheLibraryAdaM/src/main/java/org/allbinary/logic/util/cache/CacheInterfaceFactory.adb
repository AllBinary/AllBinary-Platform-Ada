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


package body org.allbinary.logic.util.cache.CacheInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out CacheInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CacheInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CacheInterfaceFactory_Access is
      This : constant CacheInterfaceFactory_Access := new CacheInterfaceFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (cacheType : CacheType_Access; cachePolicy : CachePolicy_Access) return CacheInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No such ") & cacheType.toString));
   end getInstance;

   procedure getInstance (cacheType : CacheType_Access; cachePolicy : CachePolicy_Access) is
      Java_Result : constant CacheInterface_Access := getInstance (cacheType, cachePolicy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;


