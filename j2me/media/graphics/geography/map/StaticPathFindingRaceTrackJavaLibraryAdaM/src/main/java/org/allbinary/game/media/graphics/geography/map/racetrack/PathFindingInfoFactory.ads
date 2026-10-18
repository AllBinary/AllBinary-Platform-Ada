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
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;

package org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package BasePathFindingInfoFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package;
   package PathFindingInfo_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;

   type PathFindingInfoFactory is tagged;
   type PathFindingInfoFactory_Access is access all PathFindingInfoFactory'Class;
   type PathFindingInfoFactory_Access_Array is array (Natural range <>) of PathFindingInfoFactory_Access;
   type PathFindingInfoFactory_Access_Array_Access is access all PathFindingInfoFactory_Access_Array;
   type PathFindingInfoFactory_Access_Array_Access_Array is array (Natural range <>) of PathFindingInfoFactory_Access_Array_Access;
   type PathFindingInfoFactory_Access_Array_Access_Array_Access is access all PathFindingInfoFactory_Access_Array_Access_Array;

   type PathFindingInfoFactory is new BasePathFindingInfoFactory with null record;
   instance : PathFindingInfoFactory_Access;

   procedure Initialize (This : in out PathFindingInfoFactory'Class);
   function Create return PathFindingInfoFactory_Access;
   function getInstance return PathFindingInfoFactory_Access;
   function getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; graphArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access;
   procedure getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; graphArray : Integer_Array_Access_Array_Access);

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;


