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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package is

   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames org.allbinary.util.BasicArrayListUtil_Package;

   type PathCacheFactory is tagged;
   type PathCacheFactory_Access is access all PathCacheFactory'Class;
   type PathCacheFactory_Access_Array is array (Natural range <>) of PathCacheFactory_Access;
   type PathCacheFactory_Access_Array_Access is access all PathCacheFactory_Access_Array;

   type PathCacheFactory is new Java_Object with record
      basicArrayListUtil : BasicArrayListUtil_Access;
      hashtable : ABHashtable_Access;
   end record;
   pathFactory : PathCacheFactory_Access;

   procedure Initialize (This : in out PathCacheFactory'Class);
   function Create return PathCacheFactory_Access;
   function getInstance return PathCacheFactory_Access;
   procedure getInstance;
   function getSize (This : in out PathCacheFactory) return Integer;
   procedure getSize (This : in out PathCacheFactory);
   procedure add (This : in out PathCacheFactory; pathId : Integer; list : BasicArrayList_Access);
   procedure remove (This : in out PathCacheFactory; pathId : Integer);
   procedure removeAll (This : in out PathCacheFactory);
   function getOrCreate (This : in out PathCacheFactory; pathIdInteger : Integer) return BasicArrayList_Access;
   procedure getOrCreate (This : in out PathCacheFactory; pathIdInteger : Integer);

end org.allbinary.media.graphics.geography.pathfinding.PathCacheFactory_Package;


