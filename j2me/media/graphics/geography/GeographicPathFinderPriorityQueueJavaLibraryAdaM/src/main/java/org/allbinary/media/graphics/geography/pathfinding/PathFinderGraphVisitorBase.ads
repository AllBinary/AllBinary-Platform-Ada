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

package org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type PathFinderGraphVisitorBase is tagged;
   type PathFinderGraphVisitorBase_Access is access all PathFinderGraphVisitorBase'Class;
   type PathFinderGraphVisitorBase_Access_Array is array (Natural range <>) of PathFinderGraphVisitorBase_Access;
   type PathFinderGraphVisitorBase_Access_Array_Access is access all PathFinderGraphVisitorBase_Access_Array;

   type PathFinderGraphVisitorBase is new Java_Object with null record;

   procedure Initialize (This : in out PathFinderGraphVisitorBase'Class);
   function Create return PathFinderGraphVisitorBase_Access;
   procedure visit (This : in out PathFinderGraphVisitorBase; graph : Java_Object_Access; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access);
   procedure fixPath (This : in out PathFinderGraphVisitorBase; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; pathList : BasicArrayList_Access);
   function isValid (This : in out PathFinderGraphVisitorBase; graphPath : Java_Object_Access) return Boolean;
   procedure isValid (This : in out PathFinderGraphVisitorBase; graphPath : Java_Object_Access);
   function getInvalidReason (This : in out PathFinderGraphVisitorBase; graphPath : Java_Object_Access) return Unbounded_String;
   procedure getInvalidReason (This : in out PathFinderGraphVisitorBase; graphPath : Java_Object_Access);

end org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;


