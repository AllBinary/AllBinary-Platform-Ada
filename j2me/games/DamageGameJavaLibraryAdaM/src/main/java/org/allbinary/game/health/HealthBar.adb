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


   procedure Initialize (This : in out HealthBar'Class; layerInterface : AllBinaryLayer_Access; healthInterface : Health_Access; animationInterface : HealthBarAnimation_Access; direction : Integer) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.allbinaryLayer := layerInterface;
        This.animationInterface := animationInterface;
        This.healthInterface := healthInterface;
        This.healthInterface.addListener (This'Unchecked_Access);
        This.onHealthChange;
   end Initialize;

   function Create (layerInterface : AllBinaryLayer_Access; healthInterface : Health_Access; animationInterface : HealthBarAnimation_Access; direction : Integer) return HealthBar_Access is
      This : constant HealthBar_Access := new HealthBar;
   begin
      Initialize (This.all, layerInterface, healthInterface, animationInterface, direction);
      return This;
   end Create;

   procedure onHealthChange (This : in out HealthBar) is
   begin
        This.animationInterface.onHealthChange (((This.healthInterface.getHealth) * (This.allbinaryLayer.getWidth)) / (This.healthInterface.getMaxHealth));
   end onHealthChange;

   procedure paint (This : in out HealthBar; graphics : Graphics_Access) is
   begin
        This.animationInterface.paintXY (graphics, 0, 0);
   end paint;

   procedure paintThreed (This : in out HealthBar; graphics : Graphics_Access) is
   begin
        This.animationInterface.paintThreedXYZ (graphics, 0, 0, 0);
   end paintThreed;

end org.allbinary.game.health.HealthBar_Package;


