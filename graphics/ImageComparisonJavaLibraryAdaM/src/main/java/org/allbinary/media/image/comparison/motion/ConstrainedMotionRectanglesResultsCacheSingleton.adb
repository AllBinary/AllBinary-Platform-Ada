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


with org.allbinary.logic.util.cache.CacheInterfaceFactory_Package; use org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;
with org.allbinary.logic.util.cache.CachePolicyFactory_Package; use org.allbinary.logic.util.cache.CachePolicyFactory_Package;
with org.allbinary.logic.util.cache.CacheTypeFactory_Package; use org.allbinary.logic.util.cache.CacheTypeFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.media.image.comparison.motion.ConstrainedMotionRectanglesResultsCacheSingleton_Package is

   package CacheInterfaceFactory_Package renames Standard.org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;
   package CachePolicyFactory_Package renames Standard.org.allbinary.logic.util.cache.CachePolicyFactory_Package;
   package CacheTypeFactory_Package renames Standard.org.allbinary.logic.util.cache.CacheTypeFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out ConstrainedMotionRectanglesResultsCacheSingleton'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
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
        instance := To_Unbounded_String ("MotionRectanglesResultsCacheSingleton");
        begin
            logUtil.putF (commonStrings.START, instance, STATIC_BLOCK);
            ConstrainedMotionRectanglesResultsCacheSingleton_Package.cacheInterface := CacheInterfaceFactory_Package.getInstance (CacheTypeFactory_Package.getInstance.CACHE, CachePolicyFactory_Package.getInstance.ONE_MINUTE_FIVE_MAX);
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

   procedure Initialize (This : in out ConstrainedMotionRectanglesResultsCacheSingleton'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ConstrainedMotionRectanglesResultsCacheSingleton_Access is
      This : constant ConstrainedMotionRectanglesResultsCacheSingleton_Access := new ConstrainedMotionRectanglesResultsCacheSingleton;
   begin
      ConstrainedMotionRectanglesResultsCacheSingleton_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return CacheInterface_Access is
   begin
        return CacheInterface_Access (ConstrainedMotionRectanglesResultsCacheSingleton_Package.cacheInterface);
   end getInstance;

begin
   null;
   cacheInterface := null;

end org.allbinary.media.image.comparison.motion.ConstrainedMotionRectanglesResultsCacheSingleton_Package;


