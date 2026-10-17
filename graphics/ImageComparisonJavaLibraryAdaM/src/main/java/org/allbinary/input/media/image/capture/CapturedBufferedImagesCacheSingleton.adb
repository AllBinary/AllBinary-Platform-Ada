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


package body org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package is

   procedure Initialize_Fields (This : in out CapturedBufferedImagesCacheSingleton'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CapturedBufferedImagesCacheSingleton'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CapturedBufferedImagesCacheSingleton_Access is
      This : constant CapturedBufferedImagesCacheSingleton_Access := new CapturedBufferedImagesCacheSingleton;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return CacheInterface_Access is
   begin
        return CapturedBufferedImagesCacheSingleton_Package.cacheInterface;
   end getInstance;

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
        instance := To_Unbounded_String ("CapturedBufferedImagesCacheSingleton");
        begin
            logUtil.putF (commonStrings.START, instance, STATIC_BLOCK);
            CapturedBufferedImagesCacheSingleton_Package.cacheInterface := AutomaticCacheInterface_Access (CacheInterfaceFactory_Package.getInstance ((CacheTypeFactory_Package.getInstance.SET), (CachePolicyFactory_Package.getInstance.ONE_MINUTE_FIVE_MAX)));
            logUtil.putF (commonStrings.END_Id, instance, STATIC_BLOCK);
        exception
            when e : others =>
            logUtil.put (commonStrings.EXCEPTION_Id, instance, STATIC_BLOCK, e);
        end;
   end Initializer;

   procedure getInstance is
      Java_Result : constant CacheInterface_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   cacheInterface := null;

end org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;


