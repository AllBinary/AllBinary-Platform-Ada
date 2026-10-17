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


package body org.allbinary.game.ag.life.HealthIncludingLifeBar_Package is

   procedure Initialize_Fields (This : in out HealthIncludingLifeBar'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   --  throws Exception
   function createHealthIncludingLifeBar (layerInterface_Param : access AllBinaryLayer'Class; life_Param : access Life'Class; healthInterface_Param : access Health'Class; location : Integer; direction : Integer) return HealthIncludingLifeBar_Access is
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      life : Life_Access := Life_Access (life_Param);
      healthInterface : Health_Access := Health_Access (healthInterface_Param);
   begin
        return HealthIncludingLifeBar_Package.Create (layerInterface, life, healthInterface, HealthBarTwodAnimation_Package.Create (layerInterface, location), direction);
   end createHealthIncludingLifeBar;

   procedure Initialize (This : in out HealthIncludingLifeBar'Class; layerInterface_Param : access AllBinaryLayer'Class; life_Param : access Life'Class; healthInterface_Param : access Health'Class; animationInterface_Param : access HealthBarAnimation'Class; direction : Integer) is
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      life : Life_Access := Life_Access (life_Param);
      healthInterface : Health_Access := Health_Access (healthInterface_Param);
      animationInterface : HealthBarAnimation_Access := HealthBarAnimation_Access (animationInterface_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.allbinaryLayer := layerInterface;
        This.animationInterface := animationInterface;
        This.life := life;
        This.healthInterface := healthInterface;
        This.healthInterface.addListener (HealthIncludingLifeBar_Access'(This'Unchecked_Access));
        This.onHealthChange;
   end Initialize;

   function Create (layerInterface_Param : access AllBinaryLayer'Class; life_Param : access Life'Class; healthInterface_Param : access Health'Class; animationInterface_Param : access HealthBarAnimation'Class; direction : Integer) return HealthIncludingLifeBar_Access is
      This : constant HealthIncludingLifeBar_Access := new HealthIncludingLifeBar;
   begin
      HealthIncludingLifeBar_Package.Initialize (This.all, layerInterface_Param, life_Param, healthInterface_Param, animationInterface_Param, direction);
      return This;
   end Create;

   procedure onHealthChange (This : in out HealthIncludingLifeBar) is
   begin
        This.animationInterface.onHealthChange ((((((This.healthInterface.getHealth) + (((This.healthInterface.getMaxHealth) * (This.life.get))))) * (This.allbinaryLayer.getWidth))) / (((This.healthInterface.getMaxHealth) + (((This.healthInterface.getMaxHealth) * (This.life.getStartLives))))));
   end onHealthChange;

   procedure paint (This : in out HealthIncludingLifeBar; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintXY (graphics, 0, 0);
   end paint;

   procedure paintThreed (This : in out HealthIncludingLifeBar; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintThreedXYZ (graphics, 0, 0, 0);
   end paintThreed;

   procedure createHealthIncludingLifeBar (layerInterface_Param : access AllBinaryLayer'Class; life_Param : access Life'Class; healthInterface_Param : access Health'Class; location : Integer; direction : Integer) is
      Java_Result : constant HealthIncludingLifeBar_Access := createHealthIncludingLifeBar (layerInterface_Param, life_Param, healthInterface_Param, location, direction);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHealthIncludingLifeBar;

end org.allbinary.game.ag.life.HealthIncludingLifeBar_Package;


