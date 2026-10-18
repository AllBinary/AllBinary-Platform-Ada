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


with org.allbinary.game.physics.friction.FrictionData_Package; use org.allbinary.game.physics.friction.FrictionData_Package;
with org.allbinary.game.physics.velocity.DragVelocityBehavior_Package; use org.allbinary.game.physics.velocity.DragVelocityBehavior_Package;

package body org.allbinary.game.physics.FrictionProperties_Package is

   package FrictionData_Package renames Standard.org.allbinary.game.physics.friction.FrictionData_Package;
   package DragVelocityBehavior_Package renames Standard.org.allbinary.game.physics.velocity.DragVelocityBehavior_Package;
   procedure Initialize_Fields (This : in out FrictionProperties'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out FrictionProperties'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FrictionProperties_Access is
      This : constant FrictionProperties_Access := new FrictionProperties;
   begin
      FrictionProperties_Package.Initialize (This.all);
      return This;
   end Create;

   procedure friction (This : in out FrictionProperties; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; nominator : Integer) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
   begin
        DragVelocityBehavior_Package.instance.reduce (velocityProperties, nominator, FrictionData_Package.getFrictionDenominator);
   end friction;

end org.allbinary.game.physics.FrictionProperties_Package;


