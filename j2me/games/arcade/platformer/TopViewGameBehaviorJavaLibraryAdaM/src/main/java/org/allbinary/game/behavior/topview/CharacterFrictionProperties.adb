-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


with org.allbinary.game.physics.friction.FrictionData_Package; use org.allbinary.game.physics.friction.FrictionData_Package;

package body org.allbinary.game.behavior.topview.CharacterFrictionProperties_Package is

   package FrictionData_Package renames Standard.org.allbinary.game.physics.friction.FrictionData_Package;
   procedure Initialize_Fields (This : in out CharacterFrictionProperties'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CharacterFrictionProperties'Class; airFriction : Integer; waterFriction : Integer; collisionFriction : Integer) is
   begin
      FrictionProperties_Package.Initialize (This);
      Initialize_Fields (This);
        This.AIR_FRICTION_NOMINATOR := (FrictionData_Package.getFrictionDenominator) - (airFriction);
        This.COLLISION_FRICTION_NOMINATOR := (FrictionData_Package.getFrictionDenominator) - (collisionFriction);
        This.WATER_FRICTION_NOMINATOR := (FrictionData_Package.getFrictionDenominator) - (waterFriction);
   end Initialize;

   function Create (airFriction : Integer; waterFriction : Integer; collisionFriction : Integer) return CharacterFrictionProperties_Access is
      This : constant CharacterFrictionProperties_Access := new CharacterFrictionProperties;
   begin
      CharacterFrictionProperties_Package.Initialize (This.all, airFriction, waterFriction, collisionFriction);
      return This;
   end Create;

   function getWATER_FRICTION_NOMINATOR (This : in out CharacterFrictionProperties) return Integer is
   begin
        return This.WATER_FRICTION_NOMINATOR;
   end getWATER_FRICTION_NOMINATOR;

   function getAIR_FRICTION_NOMINATOR (This : in out CharacterFrictionProperties) return Integer is
   begin
        return This.AIR_FRICTION_NOMINATOR;
   end getAIR_FRICTION_NOMINATOR;

   function getCOLLISION_FRICTION_NOMINATOR (This : in out CharacterFrictionProperties) return Integer is
   begin
        return This.COLLISION_FRICTION_NOMINATOR;
   end getCOLLISION_FRICTION_NOMINATOR;

end org.allbinary.game.behavior.topview.CharacterFrictionProperties_Package;


