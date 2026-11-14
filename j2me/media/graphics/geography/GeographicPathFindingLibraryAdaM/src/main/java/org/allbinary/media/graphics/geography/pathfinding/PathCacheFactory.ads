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
limited with org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References is
   type PathCacheFactory_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package.PathCacheFactory'Class;
   type PathCacheFactory_Access_Array is array (Natural range <>) of PathCacheFactory_Access;
   type PathCacheFactory_Access_Array_Access is access all PathCacheFactory_Access_Array;
   type PathCacheFactory_Access_Array_Access_Array is array (Natural range <>) of PathCacheFactory_Access_Array_Access;
   type PathCacheFactory_Access_Array_Access_Array_Access is access all PathCacheFactory_Access_Array_Access_Array;
   type PathCacheFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathCacheFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PathCacheFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathCacheFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathCacheFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathCacheFactory_Access_Array_Access is (if Value /= null and then Value.all in PathCacheFactory_Access_Array_Object'Class then PathCacheFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PathCacheFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathCacheFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathCacheFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathCacheFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathCacheFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathCacheFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathCacheFactory_Access_Array_Access_Array_Object'Class then PathCacheFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package Reference_Types is
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
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
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathCacheFactory_Access is org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References.PathCacheFactory_Access;
   function "=" (Left, Right : PathCacheFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References."=";
   subtype PathCacheFactory_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References.PathCacheFactory_Access_Array;
   function "=" (Left, Right : PathCacheFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References."=";
   subtype PathCacheFactory_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References.PathCacheFactory_Access_Array_Access;
   function "=" (Left, Right : PathCacheFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References."=";
   function Java_Box (Value : PathCacheFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References.Java_Box;
   function Java_Unbox_PathCacheFactory_Access_Array (Value : access Java_Object'Class) return PathCacheFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References.Java_Unbox_PathCacheFactory_Access_Array;
   subtype PathCacheFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References.PathCacheFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PathCacheFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References."=";
   subtype PathCacheFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References.PathCacheFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathCacheFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References."=";
   function Java_Box (Value : PathCacheFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References.Java_Box;
   function Java_Unbox_PathCacheFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PathCacheFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package_References.Java_Unbox_PathCacheFactory_Access_Array_Access_Array;

   type PathCacheFactory is new Java_Object with record
      basicArrayListUtil : BasicArrayListUtil_Access;
      hashtable : ABHashtable_Access;
   end record;
   pathFactory : PathCacheFactory_Access;

   procedure Initialize (This : in out PathCacheFactory'Class);
   function Create return PathCacheFactory_Access;
   function getInstance return PathCacheFactory_Access;
   function getSize (This : in out PathCacheFactory) return Integer;
   procedure add (This : in out PathCacheFactory; pathId : Integer; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure remove (This : in out PathCacheFactory; pathId : Integer);
   procedure removeAll (This : in out PathCacheFactory);
   function getOrCreate (This : in out PathCacheFactory; pathIdInteger : Integer) return BasicArrayList_Access;
   procedure getOrCreate (This : in out PathCacheFactory; pathIdInteger : Integer);

end org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package;


