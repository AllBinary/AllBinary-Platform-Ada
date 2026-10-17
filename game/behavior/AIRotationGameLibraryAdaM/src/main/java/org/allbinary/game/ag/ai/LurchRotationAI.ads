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
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.RotationAnimationInterface_Package; use org.allbinary.animation.RotationAnimationInterface_Package;
with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package; use org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
with org.allbinary.game.ag.ai.tactical.LurchAI_Package; use org.allbinary.game.ag.ai.tactical.LurchAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.math.AngleIncrementInfo_Package; use org.allbinary.math.AngleIncrementInfo_Package;

package org.allbinary.game.ag.ai.LurchRotationAI_Package is

   package IndexedAnimation_Package renames org.allbinary.animation.IndexedAnimation_Package;
   package RotationAnimationInterface_Package renames org.allbinary.animation.RotationAnimationInterface_Package;
   package RotationAnimationInterfaceCompositeInterface_Package renames org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
   package LurchAI_Package renames org.allbinary.game.ag.ai.tactical.LurchAI_Package;
   package GameInput_Package renames org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package AngleIncrementInfo_Package renames org.allbinary.math.AngleIncrementInfo_Package;

   type LurchRotationAI is tagged;
   type LurchRotationAI_Access is access all LurchRotationAI'Class;
   type LurchRotationAI_Access_Array is array (Natural range <>) of LurchRotationAI_Access;
   type LurchRotationAI_Access_Array_Access is access all LurchRotationAI_Access_Array;

   type LurchRotationAI is new LurchAI with record
      rotationAnimationInterface : IndexedAnimation_Access;
   end record;

   procedure Initialize (This : in out LurchRotationAI'Class; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access);
   function Create (ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return LurchRotationAI_Access;
   procedure reverse_Id (This : in out LurchRotationAI);
   procedure update (This : in out LurchRotationAI);

end org.allbinary.game.ag.ai.LurchRotationAI_Package;


