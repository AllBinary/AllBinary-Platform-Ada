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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package; use org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;

package org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GeographicPathFinderBase is tagged;
   type GeographicPathFinderBase_Access is access all GeographicPathFinderBase'Class;
   type GeographicPathFinderBase_Access_Array is array (Natural range <>) of GeographicPathFinderBase_Access;
   type GeographicPathFinderBase_Access_Array_Access is access all GeographicPathFinderBase_Access_Array;

   type GeographicPathFinderBase is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;
   NULL_GEOGRAPHIC_PATH_FINDER_BASE : GeographicPathFinderBase_Access;

   procedure Initialize (This : in out GeographicPathFinderBase'Class);
   function Create return GeographicPathFinderBase_Access;
   function searchTotalPath (This : in out GeographicPathFinderBase; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer) return BasicArrayList_Access;
   procedure searchTotalPath (This : in out GeographicPathFinderBase; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer);
   function searchTotalPathN (This : in out GeographicPathFinderBase; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer; multipassState_Param : access MultipassState_Package.MultipassState'Class) return BasicArrayList_Access;
   procedure searchTotalPathN (This : in out GeographicPathFinderBase; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer; multipassState_Param : access MultipassState_Package.MultipassState'Class);

end org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package;


