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


with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.logic.util.cache.CacheInterfaceFactory_Package; use org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;
with org.allbinary.logic.util.cache.CachePolicyFactory_Package; use org.allbinary.logic.util.cache.CachePolicyFactory_Package;
with org.allbinary.logic.util.cache.CacheTypeFactory_Package; use org.allbinary.logic.util.cache.CacheTypeFactory_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package; use org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package; use org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package CacheInterfaceFactory_Package renames Standard.org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;
   package CachePolicyFactory_Package renames Standard.org.allbinary.logic.util.cache.CachePolicyFactory_Package;
   package CacheTypeFactory_Package renames Standard.org.allbinary.logic.util.cache.CacheTypeFactory_Package;
   package ColorDelta_Package renames Standard.org.allbinary.media.image.comparison.color.ColorDelta_Package;
   package ColorDeltaFactory_Package renames Standard.org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out PixelDeltaFactory'Class) is
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
        instance := To_Unbounded_String ("PixelDeltaFactory");
        begin
            logUtil.putF (commonStrings.START, instance, STATIC_BLOCK);
            PixelDeltaFactory_Package.cacheInterface := AutomaticCacheInterface_Access (CacheInterfaceFactory_Package.getInstance (CacheTypeFactory_Package.getInstance.CACHE, CachePolicyFactory_Package.getInstance.THIRTY_MINUTES_TEN_THOUSAND_MAX));
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

   procedure Initialize (This : in out PixelDeltaFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PixelDeltaFactory_Access is
      This : constant PixelDeltaFactory_Access := new PixelDeltaFactory;
   begin
      PixelDeltaFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (x : Integer; y : Integer; rgb1 : Integer; rgb2 : Integer) return PixelDelta_Access is
      point : GPoint_Access;
      colorDelta : ColorDelta_Access;
      pixelDelta : PixelDelta_Access;
   begin
        point := PointFactory_Package.getInstance.createXY (x, y);
        colorDelta := ColorDeltaFactory_Package.getInstance (rgb1, rgb2);
        pixelDelta := PixelDelta_Access (PixelDeltaFactory_Package.cacheInterface.get (PixelDelta_Package.getKey (point, colorDelta)));
        if (pixelDelta) = (null) then
            pixelDelta := PixelDelta_Package.Create (point, colorDelta);
        end if;
        return pixelDelta;
   end getInstance;

   procedure getInstance (x : Integer; y : Integer; rgb1 : Integer; rgb2 : Integer) is
      Java_Result : constant PixelDelta_Access := getInstance (x => x, y => y, rgb1 => rgb1, rgb2 => rgb2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   cacheInterface := null;

end org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package;


