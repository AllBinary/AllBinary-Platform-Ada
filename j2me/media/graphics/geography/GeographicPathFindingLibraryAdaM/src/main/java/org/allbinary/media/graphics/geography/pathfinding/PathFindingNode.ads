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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type PathFindingNode is tagged;
   type PathFindingNode_Access is access all PathFindingNode'Class;
   type PathFindingNode_Access_Array is array (Natural range <>) of PathFindingNode_Access;
   type PathFindingNode_Access_Array_Access is access all PathFindingNode_Access_Array;

   type PathFindingNode is new Java_Object with record
      parent : Java_Object_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
   end record;

   procedure Initialize (This : in out PathFindingNode'Class; parent : Java_Object_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function Create (parent : Java_Object_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return PathFindingNode_Access;
   function getParentP (This : in out PathFindingNode) return PathFindingNode_Access;
   procedure getParentP (This : in out PathFindingNode);
   procedure setGeographicMapCellPositionP (This : in out PathFindingNode; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function toString (This : in out PathFindingNode) return Unbounded_String;
   procedure toString (This : in out PathFindingNode);

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;


