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

limited with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References is
   type PathFinderGraphVisitorFactoryBase_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package.PathFinderGraphVisitorFactoryBase'Class;
   type PathFinderGraphVisitorFactoryBase_Access_Array is array (Natural range <>) of PathFinderGraphVisitorFactoryBase_Access;
   type PathFinderGraphVisitorFactoryBase_Access_Array_Access is access all PathFinderGraphVisitorFactoryBase_Access_Array;
   type PathFinderGraphVisitorFactoryBase_Access_Array_Access_Array is array (Natural range <>) of PathFinderGraphVisitorFactoryBase_Access_Array_Access;
   type PathFinderGraphVisitorFactoryBase_Access_Array_Access_Array_Access is access all PathFinderGraphVisitorFactoryBase_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package Reference_Types is
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype PathFinderGraphVisitorBase_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access;
   use type PathFinderGraphVisitorBase_Access;
   subtype PathFinderGraphVisitorBase_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array;
   use type PathFinderGraphVisitorBase_Access_Array;
   subtype PathFinderGraphVisitorBase_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access;
   use type PathFinderGraphVisitorBase_Access_Array_Access;
   subtype PathFinderGraphVisitorBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access_Array;
   use type PathFinderGraphVisitorBase_Access_Array_Access_Array;
   subtype PathFinderGraphVisitorBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access_Array_Access;
   use type PathFinderGraphVisitorBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathFinderGraphVisitorFactoryBase_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References.PathFinderGraphVisitorFactoryBase_Access;
   function "=" (Left, Right : PathFinderGraphVisitorFactoryBase_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References."=";
   subtype PathFinderGraphVisitorFactoryBase_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References.PathFinderGraphVisitorFactoryBase_Access_Array;
   function "=" (Left, Right : PathFinderGraphVisitorFactoryBase_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References."=";
   subtype PathFinderGraphVisitorFactoryBase_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References.PathFinderGraphVisitorFactoryBase_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphVisitorFactoryBase_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References."=";
   subtype PathFinderGraphVisitorFactoryBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References.PathFinderGraphVisitorFactoryBase_Access_Array_Access_Array;
   function "=" (Left, Right : PathFinderGraphVisitorFactoryBase_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References."=";
   subtype PathFinderGraphVisitorFactoryBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References.PathFinderGraphVisitorFactoryBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphVisitorFactoryBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package_References."=";

   type PathFinderGraphVisitorFactoryBase is new Java_Object with null record;

   procedure Initialize (This : in out PathFinderGraphVisitorFactoryBase'Class);
   function Create return PathFinderGraphVisitorFactoryBase_Access;
   function getInstance (This : in out PathFinderGraphVisitorFactoryBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return PathFinderGraphVisitorBase_Access;
   procedure getInstance (This : in out PathFinderGraphVisitorFactoryBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);

end org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;


