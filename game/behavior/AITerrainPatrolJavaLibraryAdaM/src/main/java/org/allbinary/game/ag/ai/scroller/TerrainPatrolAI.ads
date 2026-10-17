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
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package; use org.allbinary.game.terrain.BasicTerrainInfo_Package;
with org.allbinary.game.terrain.TerrainEvent_Package; use org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package; use org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;
with org.allbinary.game.terrain.TerrainEventHandler_Package; use org.allbinary.game.terrain.TerrainEventHandler_Package;
with org.allbinary.game.terrain.TerrainEventListener_Package; use org.allbinary.game.terrain.TerrainEventListener_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.ag.ai.scroller.PacePatrolAI_Package; use org.allbinary.game.ag.ai.scroller.PacePatrolAI_Package;

package org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package is

   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package BasicTerrainInfo_Package renames Standard.org.allbinary.game.terrain.BasicTerrainInfo_Package;
   package TerrainEvent_Package renames Standard.org.allbinary.game.terrain.TerrainEvent_Package;
   package TerrainEventCircularStaticPool_Package renames Standard.org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;
   package TerrainEventHandler_Package renames Standard.org.allbinary.game.terrain.TerrainEventHandler_Package;
   package TerrainEventListener_Package renames Standard.org.allbinary.game.terrain.TerrainEventListener_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type TerrainPatrolAI is tagged;
   type TerrainPatrolAI_Access is access all TerrainPatrolAI'Class;
   type TerrainPatrolAI_Access_Array is array (Natural range <>) of TerrainPatrolAI_Access;
   type TerrainPatrolAI_Access_Array_Access is access all TerrainPatrolAI_Access_Array;

   type TerrainPatrolAI is new PacePatrolAI with record
      terrainEventListener : TerrainEventListener_Access;
      DOWN : Angle_Access;
      CLIFF : BasicTerrainInfo_Access;
   end record;

   procedure Initialize (This : in out TerrainPatrolAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return TerrainPatrolAI_Access;
   procedure update (This : in out TerrainPatrolAI);
   procedure changeDirectionIfCliffReached (This : in out TerrainPatrolAI);

end org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package;


