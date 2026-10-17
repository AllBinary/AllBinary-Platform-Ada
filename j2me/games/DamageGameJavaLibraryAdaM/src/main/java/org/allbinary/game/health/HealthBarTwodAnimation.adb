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


   procedure Initialize (This : in out HealthBarTwodAnimation'Class; layerInterface : AllBinaryLayer_Access; location : Integer) is
   begin
        HealthBarAnimation_Package.Initialize (This, layerInterface, location);
   end Initialize;

   function Create (layerInterface : AllBinaryLayer_Access; location : Integer) return HealthBarTwodAnimation_Access is
      This : constant HealthBarTwodAnimation_Access := new HealthBarTwodAnimation;
   begin
      HealthBarTwodAnimation_Package.Initialize (This.all, layerInterface, location);
      return This;
   end Create;

   procedure paintXY (This : in out HealthBarTwodAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
      ax : Integer;
   begin
        ax := This.allbinaryLayer.getViewPosition.getX;
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.basicColor, This.colorP);
        graphics.fillRect (ax, (This.getY) - (1), This.x2, This.thickness);
   end paintXY;

end org.allbinary.game.health.HealthBarTwodAnimation_Package;


