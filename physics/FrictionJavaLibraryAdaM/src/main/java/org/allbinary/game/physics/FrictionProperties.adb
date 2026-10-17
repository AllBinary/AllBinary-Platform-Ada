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


package body org.allbinary.game.physics.FrictionProperties_Package is

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

   procedure friction (This : in out FrictionProperties; velocityProperties : VelocityProperties_Access; nominator : Integer) is
   begin
        DragVelocityBehavior_Package.instance.reduce (velocityProperties, nominator, FrictionData_Package.getFrictionDenominator);
   end friction;

end org.allbinary.game.physics.FrictionProperties_Package;


