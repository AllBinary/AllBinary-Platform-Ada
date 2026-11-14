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

with AllBinary_Java;
limited with org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package;
package org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References is
   type HorizontaRotationManeuverAI_Access is access all org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package.HorizontaRotationManeuverAI'Class;
   type HorizontaRotationManeuverAI_Access_Array is array (Natural range <>) of HorizontaRotationManeuverAI_Access;
   type HorizontaRotationManeuverAI_Access_Array_Access is access all HorizontaRotationManeuverAI_Access_Array;
   type HorizontaRotationManeuverAI_Access_Array_Access_Array is array (Natural range <>) of HorizontaRotationManeuverAI_Access_Array_Access;
   type HorizontaRotationManeuverAI_Access_Array_Access_Array_Access is access all HorizontaRotationManeuverAI_Access_Array_Access_Array;
   type HorizontaRotationManeuverAI_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HorizontaRotationManeuverAI_Access_Array_Access;
   end record;
   function Java_Box (Value : HorizontaRotationManeuverAI_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HorizontaRotationManeuverAI_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HorizontaRotationManeuverAI_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HorizontaRotationManeuverAI_Access_Array_Access is (if Value /= null and then Value.all in HorizontaRotationManeuverAI_Access_Array_Object'Class then HorizontaRotationManeuverAI_Access_Array_Object'Class (Value.all).Value else null);
   type HorizontaRotationManeuverAI_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HorizontaRotationManeuverAI_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HorizontaRotationManeuverAI_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HorizontaRotationManeuverAI_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HorizontaRotationManeuverAI_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HorizontaRotationManeuverAI_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HorizontaRotationManeuverAI_Access_Array_Access_Array_Object'Class then HorizontaRotationManeuverAI_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References;

with org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package; use org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package;
limited with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package_References;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References;
limited with org.allbinary.game.physics.velocity.VelocityInterface_Package;
with org.allbinary.game.physics.velocity.VelocityInterface_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;

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
   package Reference_Types is
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   use type IndexedAnimation_Access;
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   use type IndexedAnimation_Access_Array;
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access;
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   use type IndexedAnimation_Access_Array_Access_Array;
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access_Array_Access;
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   use type GameInput_Access;
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   use type GameInput_Access_Array;
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   use type GameInput_Access_Array_Access;
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   use type GameInput_Access_Array_Access_Array;
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   use type GameInput_Access_Array_Access_Array_Access;
   subtype BasicVelocityProperties_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access;
   use type BasicVelocityProperties_Access;
   subtype BasicVelocityProperties_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array;
   use type BasicVelocityProperties_Access_Array;
   subtype BasicVelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access;
   use type BasicVelocityProperties_Access_Array_Access;
   subtype BasicVelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array;
   use type BasicVelocityProperties_Access_Array_Access_Array;
   subtype BasicVelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array_Access;
   use type BasicVelocityProperties_Access_Array_Access_Array_Access;
   subtype VelocityInterface_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access;
   use type VelocityInterface_Access;
   subtype VelocityInterface_Access_Array is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array;
   use type VelocityInterface_Access_Array;
   subtype VelocityInterface_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access;
   use type VelocityInterface_Access_Array_Access;
   subtype VelocityInterface_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access_Array;
   use type VelocityInterface_Access_Array_Access_Array;
   subtype VelocityInterface_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access_Array_Access;
   use type VelocityInterface_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HorizontaRotationManeuverAI_Access is org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References.HorizontaRotationManeuverAI_Access;
   function "=" (Left, Right : HorizontaRotationManeuverAI_Access) return Boolean renames org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References."=";
   subtype HorizontaRotationManeuverAI_Access_Array is org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References.HorizontaRotationManeuverAI_Access_Array;
   function "=" (Left, Right : HorizontaRotationManeuverAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References."=";
   subtype HorizontaRotationManeuverAI_Access_Array_Access is org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References.HorizontaRotationManeuverAI_Access_Array_Access;
   function "=" (Left, Right : HorizontaRotationManeuverAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References."=";
   function Java_Box (Value : HorizontaRotationManeuverAI_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References.Java_Box;
   function Java_Unbox_HorizontaRotationManeuverAI_Access_Array (Value : access Java_Object'Class) return HorizontaRotationManeuverAI_Access_Array_Access renames org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References.Java_Unbox_HorizontaRotationManeuverAI_Access_Array;
   subtype HorizontaRotationManeuverAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References.HorizontaRotationManeuverAI_Access_Array_Access_Array;
   function "=" (Left, Right : HorizontaRotationManeuverAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References."=";
   subtype HorizontaRotationManeuverAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References.HorizontaRotationManeuverAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HorizontaRotationManeuverAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References."=";
   function Java_Box (Value : HorizontaRotationManeuverAI_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References.Java_Box;
   function Java_Unbox_HorizontaRotationManeuverAI_Access_Array_Access_Array (Value : access Java_Object'Class) return HorizontaRotationManeuverAI_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package_References.Java_Unbox_HorizontaRotationManeuverAI_Access_Array_Access_Array;

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


