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



package body org.allbinary.game.health.HealthBar_Package is

   procedure Initialize_Fields (This : in out HealthBar'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HealthBar'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; healthInterface_Param : access Health_Package.Health'Class; animationInterface_Param : access HealthBarAnimation_Package.HealthBarAnimation'Class; direction : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      healthInterface : constant Health_Access := Health_Access (healthInterface_Param);
      animationInterface : constant HealthBarAnimation_Access := HealthBarAnimation_Access (animationInterface_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.allbinaryLayer := layerInterface;
        This.animationInterface := animationInterface;
        This.healthInterface := HealthInterface_Access (healthInterface);
        This.healthInterface.addListener (HealthBar_Access'(This'Unchecked_Access));
        HealthBar'Class (This).onHealthChange;
   end Initialize;

   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; healthInterface_Param : access Health_Package.Health'Class; animationInterface_Param : access HealthBarAnimation_Package.HealthBarAnimation'Class; direction : Integer) return HealthBar_Access is
      This : constant HealthBar_Access := new HealthBar;
   begin
      HealthBar_Package.Initialize (This.all, layerInterface_Param, healthInterface_Param, animationInterface_Param, direction);
      return This;
   end Create;

   procedure onHealthChange (This : in out HealthBar) is
   begin
        This.animationInterface.onHealthChange (((This.healthInterface.getHealth) * (This.allbinaryLayer.getWidth)) / (This.healthInterface.getMaxHealth));
   end onHealthChange;

   procedure paint (This : in out HealthBar; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintXY (graphics, 0, 0);
   end paint;

   procedure paintThreed (This : in out HealthBar; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintThreedXYZ (graphics, 0, 0, 0);
   end paintThreed;

end org.allbinary.game.health.HealthBar_Package;


