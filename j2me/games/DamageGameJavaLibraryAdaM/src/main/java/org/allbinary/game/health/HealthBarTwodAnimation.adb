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



package body org.allbinary.game.health.HealthBarTwodAnimation_Package is

   procedure Initialize_Fields (This : in out HealthBarTwodAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out HealthBarTwodAnimation'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        HealthBarAnimation_Package.Initialize (This, layerInterface, location);
   end Initialize;

   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) return HealthBarTwodAnimation_Access is
      This : constant HealthBarTwodAnimation_Access := new HealthBarTwodAnimation;
   begin
      HealthBarTwodAnimation_Package.Initialize (This.all, layerInterface_Param, location);
      return This;
   end Create;

   procedure paintXY (This : in out HealthBarTwodAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      ax : Integer;
   begin
        ax := This.allbinaryLayer.getViewPosition.getX;
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.basicColor, This.colorP);
        graphics.fillRect (ax, (HealthBarTwodAnimation'Class (This).getY) - (1), This.x2, This.thickness);
   end paintXY;

end org.allbinary.game.health.HealthBarTwodAnimation_Package;


