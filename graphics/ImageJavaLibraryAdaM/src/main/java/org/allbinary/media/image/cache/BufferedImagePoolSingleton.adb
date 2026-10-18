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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.cache.CachePolicyFactory_Package; use org.allbinary.logic.util.cache.CachePolicyFactory_Package;
with org.allbinary.logic.util.cache.PoolInterfaceFactory_Package; use org.allbinary.logic.util.cache.PoolInterfaceFactory_Package;
with org.allbinary.logic.util.cache.PoolTypeFactory_Package; use org.allbinary.logic.util.cache.PoolTypeFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package; use org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package;

package body org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CachePolicyFactory_Package renames Standard.org.allbinary.logic.util.cache.CachePolicyFactory_Package;
   package PoolInterfaceFactory_Package renames Standard.org.allbinary.logic.util.cache.PoolInterfaceFactory_Package;
   package PoolTypeFactory_Package renames Standard.org.allbinary.logic.util.cache.PoolTypeFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out BufferedImagePoolSingleton'Class) is
   begin
      null;
   end Initialize_Fields;


   --  Java static initializer: call this once
   procedure Initializer is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      STATIC_BLOCK : Unbounded_String;
      instance : Unbounded_String;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        STATIC_BLOCK := To_Unbounded_String ("Static Block");
        instance := To_Unbounded_String ("BufferedImagePoolSingleton");
        begin
            logUtil.putF (commonStrings.START, instance, STATIC_BLOCK);
            BufferedImagePoolSingleton_Package.poolInterface := PoolInterfaceFactory_Package.getInstance (BufferedImageCacheableFactory_Package.Create, PoolTypeFactory_Package.getInstance.VECTOR_POOL, CachePolicyFactory_Package.getInstance.MAX_TIME_THOUSAND_MAX);
            logUtil.putF (commonStrings.END_Id, instance, STATIC_BLOCK);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            logUtil.put (commonStrings.EXCEPTION_Id, instance, STATIC_BLOCK, e);
                end;
        end;
   end Initializer;

   procedure Initialize (This : in out BufferedImagePoolSingleton'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BufferedImagePoolSingleton_Access is
      This : constant BufferedImagePoolSingleton_Access := new BufferedImagePoolSingleton;
   begin
      BufferedImagePoolSingleton_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return PoolInterface_Access is
   begin
        return BufferedImagePoolSingleton_Package.poolInterface;
   end getInstance;

begin
   null;
   poolInterface := null;

end org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package;


