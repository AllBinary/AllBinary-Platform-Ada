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


package body org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package is

   procedure Initialize_Fields (This : in out ColorDeltaFactory'Class) is
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
        instance := To_Unbounded_String ("ColorDeltaFactory");
        begin
            logUtil.putF (commonStrings.START, instance, STATIC_BLOCK);
            ColorDeltaFactory_Package.cacheInterface := AutomaticCacheInterface_Access (CacheInterfaceFactory_Package.getInstance (CacheTypeFactory_Package.getInstance.CACHE, CachePolicyFactory_Package.getInstance.THIRTY_MINUTES_TEN_THOUSAND_MAX));
            logUtil.putF (commonStrings.END_Id, instance, STATIC_BLOCK);
        exception
            when e : others =>
            logUtil.put (commonStrings.EXCEPTION_Id, instance, STATIC_BLOCK, e);
        end;
   end Initializer;

   procedure Initialize (This : in out ColorDeltaFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ColorDeltaFactory_Access is
      This : constant ColorDeltaFactory_Access := new ColorDeltaFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (rgb1 : Integer; rgb2 : Integer) return ColorDelta_Access is
      colorDelta : ColorDelta_Access;
   begin
        colorDelta := ColorDelta_Access (ColorDeltaFactory_Package.cacheInterface.get (ColorDelta_Package.getKey (rgb1, rgb2)));
        if (colorDelta) = (null) then
            colorDelta := ColorDelta_Package.Create (rgb1, rgb2);
        end if;
        return colorDelta;
   end getInstance;

   procedure getInstance (rgb1 : Integer; rgb2 : Integer) is
      Java_Result : constant ColorDelta_Access := getInstance (rgb1, rgb2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   cacheInterface := null;

end org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package;


