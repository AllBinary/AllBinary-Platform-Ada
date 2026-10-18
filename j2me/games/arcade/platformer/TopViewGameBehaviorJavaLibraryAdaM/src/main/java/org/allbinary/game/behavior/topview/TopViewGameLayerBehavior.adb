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



package body org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package is

   procedure Initialize_Fields (This : in out TopViewGameLayerBehavior'Class) is
   begin
      null;
      
      This.isJumpAction := True;
      This.isJumpOver := False;
      This.isFallingWithoutJumpAttempt := False;
      This.gravityActionIndex := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out TopViewGameLayerBehavior'Class; maxGravityActionIndex : Integer) is
   begin
      GameLayerBehavior_Package.Initialize (This);
      Initialize_Fields (This);
        This.maxGravityActionIndex := maxGravityActionIndex;
   end Initialize;

   function Create (maxGravityActionIndex : Integer) return TopViewGameLayerBehavior_Access is
      This : constant TopViewGameLayerBehavior_Access := new TopViewGameLayerBehavior;
   begin
      TopViewGameLayerBehavior_Package.Initialize (This.all, maxGravityActionIndex);
      return This;
   end Create;

   procedure gravity (This : in out TopViewGameLayerBehavior) is
   begin
        if (This.gravityActionIndex) = (0) then
            This.gravityActionIndex := This.gravityActionIndex + 1;
            This.isFallingWithoutJumpAttempt := True;
        end if;
   end gravity;

   procedure land (This : in out TopViewGameLayerBehavior; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
   begin
        velocityProperties.getVelocityYBasicDecimalP.setint (0);
        TopViewGameLayerBehavior'Class (This).landReset;
   end land;

   procedure landReset (This : in out TopViewGameLayerBehavior) is
   begin
        This.gravityActionIndex := 0;
        This.isFallingWithoutJumpAttempt := False;
        This.isJumpAction := True;
        This.isJumpOver := False;
   end landReset;

   procedure up (This : in out TopViewGameLayerBehavior; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; acceleration_Param : access BasicAccelerationProperties_Package.BasicAccelerationProperties'Class; jumpBehavior_Param : access InitialJumpBehavior_Package.InitialJumpBehavior'Class; accelerationMultiplier : Integer) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      acceleration : constant BasicAccelerationProperties_Access := BasicAccelerationProperties_Access (acceleration_Param);
      jumpBehavior : constant InitialJumpBehavior_Access := InitialJumpBehavior_Access (jumpBehavior_Param);
      acceleration2 : Integer;
   begin
        if not (This.isJumpOver) then
            if (This.gravityActionIndex) < (This.maxGravityActionIndex) then
                acceleration2 := (-(acceleration.getForward)) * (accelerationMultiplier);
                velocityProperties.getVelocityYBasicDecimalP.addint (acceleration2);
                velocityProperties.limitXYToForwardAndReverseMaxVelocity;
                This.gravityActionIndex := This.gravityActionIndex + 1;
            else
                null;
            end if;
        else
            null;
        end if;
        if This.isJumpAction then
            jumpBehavior.process;
            This.isJumpAction := False;
        end if;
   end up;

   procedure inputFrames (This : in out TopViewGameLayerBehavior; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
   begin
        if ((This.gravityActionIndex) > (0)) and then ((velocityProperties.getVelocityYBasicDecimalP.getUnscaled) > (0)) then
            This.isJumpOver := True;
        end if;
   end inputFrames;

end org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package;


