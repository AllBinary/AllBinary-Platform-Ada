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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package PathFindingInfo_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
   package PathFindingNode_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
   package GeographicMapCellPositionFactoryInitVisitorInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type BasePathFindingInfoFactory is tagged;
   type BasePathFindingInfoFactory_Access is access all BasePathFindingInfoFactory'Class;
   type BasePathFindingInfoFactory_Access_Array is array (Natural range <>) of BasePathFindingInfoFactory_Access;
   type BasePathFindingInfoFactory_Access_Array_Access is access all BasePathFindingInfoFactory_Access_Array;

   type BasePathFindingInfoFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out BasePathFindingInfoFactory'Class);
   function Create return BasePathFindingInfoFactory_Access;
   procedure init (This : in out BasePathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; mapArray : Integer_Array_Access_Array_Access);
   procedure addStartPathFindingNode (This : in out BasePathFindingInfoFactory; pathFindingInfo : PathFindingInfo_Access; startGeographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure addEndPathFindingNode (This : in out BasePathFindingInfoFactory; pathFindingInfo : PathFindingInfo_Access; endGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function getInstancePathFindingInfo (This : in out BasePathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; graphArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access;
   procedure getInstancePathFindingInfo (This : in out BasePathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; graphArray : Integer_Array_Access_Array_Access);

end org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package;


