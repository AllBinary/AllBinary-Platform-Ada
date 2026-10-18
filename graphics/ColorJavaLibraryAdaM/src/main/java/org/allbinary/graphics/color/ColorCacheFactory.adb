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
with org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package;
with org.allbinary.logic.util.cache.CachePolicyFactory_Package; use org.allbinary.logic.util.cache.CachePolicyFactory_Package;
with org.allbinary.logic.util.cache.CacheTypeFactory_Package; use org.allbinary.logic.util.cache.CacheTypeFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.color.ColorCacheableFactory_Package; use org.allbinary.graphics.color.ColorCacheableFactory_Package;

package body org.allbinary.graphics.color.ColorCacheFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AutomaticCacheInterfaceFactory_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package;
   package CachePolicyFactory_Package renames Standard.org.allbinary.logic.util.cache.CachePolicyFactory_Package;
   package CacheTypeFactory_Package renames Standard.org.allbinary.logic.util.cache.CacheTypeFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out ColorCacheFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   --  Java static initializer: call this once
   procedure Initializer is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      STATIC_BLOCK : Unbounded_String;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        STATIC_BLOCK := To_Unbounded_String ("Static Block");
        begin
            logUtil.putF (commonStrings.START, ColorCacheFactory_Package.ColorCacheFactory'Tag, STATIC_BLOCK);
            ColorCacheFactory_Package.cacheInterface := AutomaticCacheInterfaceFactory_Package.getInstance (ColorCacheableFactory_Package.Create, CacheTypeFactory_Package.getInstance.CACHE, CachePolicyFactory_Package.getInstance.THIRTY_MINUTES_TEN_THOUSAND_MAX);
            logUtil.putF (commonStrings.END_Id, ColorCacheFactory_Package.ColorCacheFactory'Tag, STATIC_BLOCK);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            logUtil.put (commonStrings.EXCEPTION_Id, ColorCacheFactory_Package.ColorCacheFactory'Tag, STATIC_BLOCK, e);
                end;
        end;
   end Initializer;

   procedure Initialize (This : in out ColorCacheFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ColorCacheFactory_Access is
      This : constant ColorCacheFactory_Access := new ColorCacheFactory;
   begin
      ColorCacheFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return AutomaticCacheInterface_Access is
   begin
        return AutomaticCacheInterface_Access (ColorCacheFactory_Package.cacheInterface);
   end getInstance;

begin
   null;
   cacheInterface := null;

end org.allbinary.graphics.color.ColorCacheFactory_Package;


