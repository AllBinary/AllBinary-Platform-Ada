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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package; use org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package; use org.allbinary.game.terrain.BasicTerrainInfo_Package;
with org.allbinary.game.terrain.TerrainEvent_Package; use org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package; use org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;
with org.allbinary.game.terrain.TerrainEventHandler_Package; use org.allbinary.game.terrain.TerrainEventHandler_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package; use org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package;

package org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package is

   package MultiGeographicMapBehavior_Package renames Standard.org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package BasicTerrainInfo_Package renames Standard.org.allbinary.game.terrain.BasicTerrainInfo_Package;
   package TerrainEvent_Package renames Standard.org.allbinary.game.terrain.TerrainEvent_Package;
   package TerrainEventCircularStaticPool_Package renames Standard.org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;
   package TerrainEventHandler_Package renames Standard.org.allbinary.game.terrain.TerrainEventHandler_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;

   type NonPlayerTopViewCharacterBehavior is tagged;
   type NonPlayerTopViewCharacterBehavior_Access is access all NonPlayerTopViewCharacterBehavior'Class;
   type NonPlayerTopViewCharacterBehavior_Access_Array is array (Natural range <>) of NonPlayerTopViewCharacterBehavior_Access;
   type NonPlayerTopViewCharacterBehavior_Access_Array_Access is access all NonPlayerTopViewCharacterBehavior_Access_Array;

   type NonPlayerTopViewCharacterBehavior is new TopViewCharacterBehavior with record
      geographicMapBehavior : MultiGeographicMapBehavior_Access;
      CLIFF : BasicTerrainInfo_Access;
   end record;

   procedure Initialize (This : in out NonPlayerTopViewCharacterBehavior'Class);
   function Create return NonPlayerTopViewCharacterBehavior_Access;
   procedure terrainEvent (This : in out NonPlayerTopViewCharacterBehavior; layer : AllBinaryLayer_Access; direction : Direction_Access; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure terrainMove (This : in out NonPlayerTopViewCharacterBehavior; layer : AllBinaryLayer_Access; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer);

end org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package;


