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

package org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package is

   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

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
   function searchTotalPath (This : in out GeographicPathFinderBase; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer) return BasicArrayList_Access;
   procedure searchTotalPath (This : in out GeographicPathFinderBase; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer);
   function searchTotalPathN (This : in out GeographicPathFinderBase; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer; multipassState : MultipassState_Access) return BasicArrayList_Access;
   procedure searchTotalPathN (This : in out GeographicPathFinderBase; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer; multipassState : MultipassState_Access);

end org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package;


