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


with org.allbinary.graphics.color.ColorCacheFactory_Package; use org.allbinary.graphics.color.ColorCacheFactory_Package;
with org.allbinary.graphics.color.ColorCacheable_Package; use org.allbinary.graphics.color.ColorCacheable_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.input.automation.module.game.Color_Package; use org.allbinary.input.automation.module.game.Color_Package;

package body org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package is

   package ColorCacheFactory_Package renames Standard.org.allbinary.graphics.color.ColorCacheFactory_Package;
   package ColorCacheable_Package renames Standard.org.allbinary.graphics.color.ColorCacheable_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
   procedure Initialize_Fields (This : in out GraphicsAnalysisUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GraphicsAnalysisUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GraphicsAnalysisUtil_Access is
      This : constant GraphicsAnalysisUtil_Access := new GraphicsAnalysisUtil;
   begin
      GraphicsAnalysisUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getNominator (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; min_x : Integer; max_x : Integer; y : Integer) return Long_Float is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      colorInteger : Integer;
      automaticCacheInterface : AutomaticCacheInterface_Access;
      colorCacheable : ColorCacheable_Access;
      color : Color_Access;
      index : Integer;
   begin
        for index in reverse (Integer (min_x)) + 1 .. Integer (max_x) loop
            colorInteger := To_Unbounded_String (Java_Image (bufferedImage.getRGB (index, Integer (y))));
            automaticCacheInterface := AutomaticCacheInterface_Access (ColorCacheFactory_Package.getInstance);
            colorCacheable := ColorCacheable_Access (automaticCacheInterface.get (colorInteger));
            color := colorCacheable.getColor;
            if (((color.getRed) < (GraphicsAnalysisUtil_Package.MAX)) and then ((color.getGreen) < (GraphicsAnalysisUtil_Package.MAX))) and then ((color.getBlue) < (GraphicsAnalysisUtil_Package.MAX)) then
                null;
            else
                return Long_Float ((index) - (Integer (min_x)));
            end if;
        end loop;
        return 0.0;
   end getNominator;

   procedure getNominator (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; min_x : Integer; max_x : Integer; y : Integer) is
      Java_Result : constant Long_Float := getNominator (bufferedImage_Param => bufferedImage_Param, min_x => min_x, max_x => max_x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNominator;

begin
   null;
   MAX := 122;

end org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package;


