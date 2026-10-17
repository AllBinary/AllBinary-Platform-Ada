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

package org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package is

   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

   type PathFinderGraphVisitorFactoryBase is tagged;
   type PathFinderGraphVisitorFactoryBase_Access is access all PathFinderGraphVisitorFactoryBase'Class;
   type PathFinderGraphVisitorFactoryBase_Access_Array is array (Natural range <>) of PathFinderGraphVisitorFactoryBase_Access;
   type PathFinderGraphVisitorFactoryBase_Access_Array_Access is access all PathFinderGraphVisitorFactoryBase_Access_Array;

   type PathFinderGraphVisitorFactoryBase is new Java_Object with null record;

   procedure Initialize (This : in out PathFinderGraphVisitorFactoryBase'Class);
   function Create return PathFinderGraphVisitorFactoryBase_Access;
   function getInstance (This : in out PathFinderGraphVisitorFactoryBase; geographicMapInterface : BasicGeographicMap_Access) return PathFinderGraphVisitorBase_Access;
   procedure getInstance (This : in out PathFinderGraphVisitorFactoryBase; geographicMapInterface : BasicGeographicMap_Access);

end org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;


