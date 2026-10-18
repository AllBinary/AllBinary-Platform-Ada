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


with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

package body org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   procedure Initialize_Fields (This : in out ColorFromEventUtil'Class) is
   begin
      null;
      This.YELLOW := BasicColorFactory_Package.getInstance.YELLOW;
      This.COLOR_INT := This.YELLOW.intValue;
   end Initialize_Fields;

   procedure Initialize (This : in out ColorFromEventUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ColorFromEventUtil_Access is
      This : constant ColorFromEventUtil_Access := new ColorFromEventUtil;
   begin
      ColorFromEventUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ColorFromEventUtil_Access is
   begin
        return ColorFromEventUtil_Package.instance;
   end getInstance;

   function getForegroundColor (This : in out ColorFromEventUtil; gameCanvasInterface_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return BasicColor_Access is
      gameCanvasInterface : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvasInterface_Param);
      color : BasicColor_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      foregroundBasicColor : BasicColor_Access;
   begin
        color := This.YELLOW;
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (gameCanvasInterface.getLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        if (geographicMapInterface) /= (null) then
            foregroundBasicColor := geographicMapInterface.getForegroundBasicColor;
            color := foregroundBasicColor;
        end if;
        return color;
   end getForegroundColor;

   procedure getForegroundColor (This : in out ColorFromEventUtil; gameCanvasInterface_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      Java_Result : constant BasicColor_Access := ColorFromEventUtil'Class (This).getForegroundColor (gameCanvasInterface_Param => gameCanvasInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getForegroundColor;

begin
   null;
   instance := ColorFromEventUtil_Package.Create;

end org.allbinary.media.graphics.geography.map.ColorFromEventUtil_Package;


