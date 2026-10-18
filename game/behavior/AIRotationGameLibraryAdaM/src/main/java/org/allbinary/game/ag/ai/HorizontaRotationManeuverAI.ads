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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package; use org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package is

   package ArtificialIntelligenceTransitionInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package VelocityInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type HorizontaRotationManeuverAI is tagged;
   type HorizontaRotationManeuverAI_Access is access all HorizontaRotationManeuverAI'Class;
   type HorizontaRotationManeuverAI_Access_Array is array (Natural range <>) of HorizontaRotationManeuverAI_Access;
   type HorizontaRotationManeuverAI_Access_Array_Access is access all HorizontaRotationManeuverAI_Access_Array;
   type HorizontaRotationManeuverAI_Access_Array_Access_Array is array (Natural range <>) of HorizontaRotationManeuverAI_Access_Array_Access;
   type HorizontaRotationManeuverAI_Access_Array_Access_Array_Access is access all HorizontaRotationManeuverAI_Access_Array_Access_Array;

   type HorizontaRotationManeuverAI is new BasicAI and ArtificialIntelligenceTransitionInterface with record
      circularIndexUtil : CircularIndexUtil_Access;
      currentSpeedDivisor : Integer;
      rotationAnimationInterface : IndexedAnimation_Access;
      baseVelocityInterface : BasicVelocityProperties_Access;
      velocityInterface : VelocityInterface_Access;
   end record;

   procedure Initialize (This : in out HorizontaRotationManeuverAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return HorizontaRotationManeuverAI_Access;
   procedure transition (This : in out HorizontaRotationManeuverAI);
   procedure processAI (This : in out HorizontaRotationManeuverAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure reverse_Id (This : in out HorizontaRotationManeuverAI);
   procedure accelerate (This : in out HorizontaRotationManeuverAI);
   procedure drop (This : in out HorizontaRotationManeuverAI);
   function getId (This : in out HorizontaRotationManeuverAI) return Integer;

end org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package;


