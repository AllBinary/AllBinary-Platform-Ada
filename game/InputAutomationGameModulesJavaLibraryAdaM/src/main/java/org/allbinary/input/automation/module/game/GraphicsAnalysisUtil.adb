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


package body org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getNominator (bufferedImage : BufferedImage_Access; min_x : Integer; max_x : Integer; y : Integer) return Long_Float is
      colorInteger : Integer;
      automaticCacheInterface : AutomaticCacheInterface_Access;
      colorCacheable : ColorCacheable_Access;
      color : Color_Access;
      index : Integer;
   begin
        for index in reverse (min_x.intValue) + 1 .. max_x.intValue loop
            colorInteger := To_Unbounded_String (Java_Image (bufferedImage.getRGB (index, y.intValue)));
            automaticCacheInterface := ColorCacheFactory_Package.getInstance;
            colorCacheable := ColorCacheable_Access (automaticCacheInterface.get (colorInteger));
            color := colorCacheable.getColor;
            if (((color.getRed) < (GraphicsAnalysisUtil_Package.MAX)) and then ((color.getGreen) < (GraphicsAnalysisUtil_Package.MAX))) and then ((color.getBlue) < (GraphicsAnalysisUtil_Package.MAX)) then
                null;
            else
                return (index) - (min_x.intValue);
            end if;
        end loop;
        return 0.0;
   end getNominator;

   procedure getNominator (bufferedImage : BufferedImage_Access; min_x : Integer; max_x : Integer; y : Integer) is
      Java_Result : constant Long_Float := getNominator (bufferedImage, min_x, max_x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNominator;

begin
   null;
   MAX := 122;

end org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package;


