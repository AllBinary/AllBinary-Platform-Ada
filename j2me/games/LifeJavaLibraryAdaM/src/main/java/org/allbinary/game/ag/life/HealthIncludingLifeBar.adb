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
   function createHealthIncludingLifeBar (layerInterface : AllBinaryLayer_Access; life : Life_Access; healthInterface : Health_Access; location : Integer; direction : Integer) return HealthIncludingLifeBar_Access is
   begin
        return HealthIncludingLifeBar_Package.Create (layerInterface, life, healthInterface, HealthBarTwodAnimation_Package.Create (layerInterface, location), direction);
   end createHealthIncludingLifeBar;

   procedure Initialize (This : in out HealthIncludingLifeBar'Class; layerInterface : AllBinaryLayer_Access; life : Life_Access; healthInterface : Health_Access; animationInterface : HealthBarAnimation_Access; direction : Integer) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.allbinaryLayer := layerInterface;
        This.animationInterface := animationInterface;
        This.life := life;
        This.healthInterface := healthInterface;
        This.healthInterface.addListener (This'Unchecked_Access);
        This.onHealthChange;
   end Initialize;

   function Create (layerInterface : AllBinaryLayer_Access; life : Life_Access; healthInterface : Health_Access; animationInterface : HealthBarAnimation_Access; direction : Integer) return HealthIncludingLifeBar_Access is
      This : constant HealthIncludingLifeBar_Access := new HealthIncludingLifeBar;
   begin
      HealthIncludingLifeBar_Package.Initialize (This.all, layerInterface, life, healthInterface, animationInterface, direction);
      return This;
   end Create;

   procedure onHealthChange (This : in out HealthIncludingLifeBar) is
   begin
        This.animationInterface.onHealthChange ((((((This.healthInterface.getHealth) + (((This.healthInterface.getMaxHealth) * (This.life.get))))) * (This.allbinaryLayer.getWidth))) / (((This.healthInterface.getMaxHealth) + (((This.healthInterface.getMaxHealth) * (This.life.getStartLives))))));
   end onHealthChange;

   procedure paint (This : in out HealthIncludingLifeBar; graphics : Graphics_Access) is
   begin
        This.animationInterface.paintXY (graphics, 0, 0);
   end paint;

   procedure paintThreed (This : in out HealthIncludingLifeBar; graphics : Graphics_Access) is
   begin
        This.animationInterface.paintThreedXYZ (graphics, 0, 0, 0);
   end paintThreed;

   procedure createHealthIncludingLifeBar (layerInterface : AllBinaryLayer_Access; life : Life_Access; healthInterface : Health_Access; location : Integer; direction : Integer) is
      Java_Result : constant HealthIncludingLifeBar_Access := createHealthIncludingLifeBar (layerInterface, life, healthInterface, location, direction);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHealthIncludingLifeBar;

end org.allbinary.game.ag.life.HealthIncludingLifeBar_Package;


