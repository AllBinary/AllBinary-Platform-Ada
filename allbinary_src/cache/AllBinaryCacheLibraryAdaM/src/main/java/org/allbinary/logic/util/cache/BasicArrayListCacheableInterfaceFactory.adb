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


with org.allbinary.logic.util.cache.BasicArrayListCacheable_Package; use org.allbinary.logic.util.cache.BasicArrayListCacheable_Package;

package body org.allbinary.logic.util.cache.BasicArrayListCacheableInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out BasicArrayListCacheableInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicArrayListCacheableInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicArrayListCacheableInterfaceFactory_Access is
      This : constant BasicArrayListCacheableInterfaceFactory_Access := new BasicArrayListCacheableInterfaceFactory;
   begin
      BasicArrayListCacheableInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out BasicArrayListCacheableInterfaceFactory; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
   begin
        return CacheableInterface_Access (BasicArrayListCacheable_Package.Create);
   end getInstance;

   procedure getInstance (This : in out BasicArrayListCacheableInterfaceFactory; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := BasicArrayListCacheableInterfaceFactory'Class (This).getInstance (key_Param => key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   function getInstance (This : in out BasicArrayListCacheableInterfaceFactory; Value : Unbounded_String) return CacheableInterface_Access is
   begin
      return BasicArrayListCacheableInterfaceFactory'Class (This).getInstance (Java_Box (Value));
   end getInstance;

   procedure getInstance (This : in out BasicArrayListCacheableInterfaceFactory; Value : Unbounded_String) is
      Java_Result : constant CacheableInterface_Access := BasicArrayListCacheableInterfaceFactory'Class (This).getInstance (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.BasicArrayListCacheableInterfaceFactory_Package;


