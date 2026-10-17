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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PathFindingInfoInterface is interface;
   type PathFindingInfoInterface_Access is access all PathFindingInfoInterface'Class;
   type PathFindingInfoInterface_Access_Array is array (Natural range <>) of PathFindingInfoInterface_Access;
   type PathFindingInfoInterface_Access_Array_Access is access all PathFindingInfoInterface_Access_Array;
   function getStartPathFindingNodeList (This : in out PathFindingInfoInterface) return BasicArrayList_Access is abstract;
   function getEndPathFindingNodeList (This : in out PathFindingInfoInterface) return BasicArrayList_Access is abstract;
   function getPathFinder (This : in out PathFindingInfoInterface) return GeographicPathFinderBase_Access is abstract;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package;


