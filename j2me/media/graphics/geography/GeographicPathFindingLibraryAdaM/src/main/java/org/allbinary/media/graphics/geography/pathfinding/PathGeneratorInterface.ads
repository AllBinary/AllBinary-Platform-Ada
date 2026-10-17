-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PathGeneratorInterface is interface;
   type PathGeneratorInterface_Access is access all PathGeneratorInterface'Class;
   type PathGeneratorInterface_Access_Array is array (Natural range <>) of PathGeneratorInterface_Access;
   type PathGeneratorInterface_Access_Array_Access is access all PathGeneratorInterface_Access_Array;
   function createList (This : in out PathGeneratorInterface; geographicMapInterface : BasicGeographicMap_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) return BasicArrayList_Access is abstract;

end org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package;


