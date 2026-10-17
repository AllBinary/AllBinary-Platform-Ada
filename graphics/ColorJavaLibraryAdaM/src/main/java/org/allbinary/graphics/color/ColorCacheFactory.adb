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


package body org.allbinary.graphics.color.ColorCacheFactory_Package is

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
            when e : others =>
            logUtil.put (commonStrings.EXCEPTION_Id, ColorCacheFactory_Package.ColorCacheFactory'Tag, STATIC_BLOCK, e);
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
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return AutomaticCacheInterface_Access is
   begin
        return ColorCacheFactory_Package.cacheInterface;
   end getInstance;

   procedure getInstance is
      Java_Result : constant AutomaticCacheInterface_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   cacheInterface := null;

end org.allbinary.graphics.color.ColorCacheFactory_Package;


