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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References is
   type PathFinderGraphVisitorBase_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package.PathFinderGraphVisitorBase'Class;
   type PathFinderGraphVisitorBase_Access_Array is array (Natural range <>) of PathFinderGraphVisitorBase_Access;
   type PathFinderGraphVisitorBase_Access_Array_Access is access all PathFinderGraphVisitorBase_Access_Array;
   type PathFinderGraphVisitorBase_Access_Array_Access_Array is array (Natural range <>) of PathFinderGraphVisitorBase_Access_Array_Access;
   type PathFinderGraphVisitorBase_Access_Array_Access_Array_Access is access all PathFinderGraphVisitorBase_Access_Array_Access_Array;
   type PathFinderGraphVisitorBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFinderGraphVisitorBase_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFinderGraphVisitorBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFinderGraphVisitorBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFinderGraphVisitorBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFinderGraphVisitorBase_Access_Array_Access is (if Value /= null and then Value.all in PathFinderGraphVisitorBase_Access_Array_Object'Class then PathFinderGraphVisitorBase_Access_Array_Object'Class (Value.all).Value else null);
   type PathFinderGraphVisitorBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFinderGraphVisitorBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFinderGraphVisitorBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFinderGraphVisitorBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFinderGraphVisitorBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFinderGraphVisitorBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFinderGraphVisitorBase_Access_Array_Access_Array_Object'Class then PathFinderGraphVisitorBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathFinderGraphVisitorBase_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   function Java_Box (Value : PathFinderGraphVisitorBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.Java_Box;
   function Java_Unbox_PathFinderGraphVisitorBase_Access_Array (Value : access Java_Object'Class) return PathFinderGraphVisitorBase_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.Java_Unbox_PathFinderGraphVisitorBase_Access_Array;
   subtype PathFinderGraphVisitorBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access_Array;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   subtype PathFinderGraphVisitorBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.PathFinderGraphVisitorBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFinderGraphVisitorBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References."=";
   function Java_Box (Value : PathFinderGraphVisitorBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.Java_Box;
   function Java_Unbox_PathFinderGraphVisitorBase_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFinderGraphVisitorBase_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package_References.Java_Unbox_PathFinderGraphVisitorBase_Access_Array_Access_Array;

   type PathFinderGraphVisitorBase is new Java_Object with null record;

   procedure Initialize (This : in out PathFinderGraphVisitorBase'Class);
   function Create return PathFinderGraphVisitorBase_Access;
   procedure visit (This : in out PathFinderGraphVisitorBase; graph_Param : access Java_Object'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure fixPath (This : in out PathFinderGraphVisitorBase; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function isValid (This : in out PathFinderGraphVisitorBase; graphPath_Param : access Java_Object'Class) return Boolean;
   procedure isValid (This : in out PathFinderGraphVisitorBase; graphPath_Param : access Java_Object'Class);
   function getInvalidReason (This : in out PathFinderGraphVisitorBase; graphPath_Param : access Java_Object'Class) return Unbounded_String;
   procedure getInvalidReason (This : in out PathFinderGraphVisitorBase; graphPath_Param : access Java_Object'Class);
   function isValid (This : in out PathFinderGraphVisitorBase; Value : Unbounded_String) return Boolean;
   procedure isValid (This : in out PathFinderGraphVisitorBase; Value : Unbounded_String);
   function getInvalidReason (This : in out PathFinderGraphVisitorBase; Value : Unbounded_String) return Unbounded_String;
   procedure getInvalidReason (This : in out PathFinderGraphVisitorBase; Value : Unbounded_String);

end org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;


