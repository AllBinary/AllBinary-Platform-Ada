-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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



package body org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package is

   procedure Initialize_Fields (This : in out VelocityBehaviorBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out VelocityBehaviorBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return VelocityBehaviorBase_Access is
      This : constant VelocityBehaviorBase_Access := new VelocityBehaviorBase;
   begin
      VelocityBehaviorBase_Package.Initialize (This.all);
      return This;
   end Create;


   procedure reduce (This : in out VelocityBehaviorBase; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer) is
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
   begin
        null;
   end reduce;

   procedure reduceX (This : in out VelocityBehaviorBase; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer) is
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
   begin
        null;
   end reduceX;

   procedure reduceY (This : in out VelocityBehaviorBase; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer) is
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
   begin
        null;
   end reduceY;

end org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package;


