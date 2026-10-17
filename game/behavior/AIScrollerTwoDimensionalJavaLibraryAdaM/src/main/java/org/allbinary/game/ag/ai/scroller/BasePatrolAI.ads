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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package is

   package BasicAI_Package renames org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames org.allbinary.game.input.GameInput_Package;
   package BasicVelocityProperties_Package renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package VelocityInterfaceCompositeInterface_Package renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package MathUtil_Package renames org.allbinary.logic.math.MathUtil_Package;
   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type BasePatrolAI is tagged;
   type BasePatrolAI_Access is access all BasePatrolAI'Class;
   type BasePatrolAI_Access_Array is array (Natural range <>) of BasePatrolAI_Access;
   type BasePatrolAI_Access_Array_Access is access all BasePatrolAI_Access_Array;

   type BasePatrolAI is new BasicAI with record
      maxDistance : Integer;
      currentDistance : Integer;
      xTotalDistance : Integer;
      lastKeyDirection : Integer;
      keyDirection : Integer;
   end record;
   MAX_DISTANCE : Integer;
   DIRECTION_ARRAY : Integer;
   FIRING_DISTANCE : Integer;
   SPEED : Integer;

   procedure Initialize (This : in out BasePatrolAI'Class; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access);
   function Create (hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return BasePatrolAI_Access;
   procedure update (This : in out BasePatrolAI);
   procedure updateTotalDistance (This : in out BasePatrolAI);
   procedure changeDirectionIfReachedPacingAreaMax (This : in out BasePatrolAI);
   procedure nextDirection (This : in out BasePatrolAI);
   procedure disable (This : in out BasePatrolAI);

end org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package;


