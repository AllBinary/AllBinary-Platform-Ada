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
--  with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.EnumerationUtil_Package; use org.allbinary.util.EnumerationUtil_Package;

package org.allbinary.game.layer.LevelLayersFinder_Package is

   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;

   type LevelLayersFinder is tagged;
   type LevelLayersFinder_Access is access all LevelLayersFinder'Class;
   type LevelLayersFinder_Access_Array is array (Natural range <>) of LevelLayersFinder_Access;
   type LevelLayersFinder_Access_Array_Access is access all LevelLayersFinder_Access_Array;

   type LevelLayersFinder is new Java_Object with record
      enumerationUtil : EnumerationUtil_Access;
   end record;
   instance : LevelLayersFinder_Access;

   procedure Initialize (This : in out LevelLayersFinder'Class);
   function Create return LevelLayersFinder_Access;
   function getInstance return LevelLayersFinder_Access;
   procedure getInstance;
   function get (This : in out LevelLayersFinder; hashtable : ABHashtable_Access) return BasicArrayList_Access;
   procedure get (This : in out LevelLayersFinder; hashtable : ABHashtable_Access);

end org.allbinary.game.layer.LevelLayersFinder_Package;


