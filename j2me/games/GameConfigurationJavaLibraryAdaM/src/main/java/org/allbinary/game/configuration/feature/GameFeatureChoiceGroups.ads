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

package org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GameFeatureChoiceGroups is tagged;
   type GameFeatureChoiceGroups_Access is access all GameFeatureChoiceGroups'Class;
   type GameFeatureChoiceGroups_Access_Array is array (Natural range <>) of GameFeatureChoiceGroups_Access;
   type GameFeatureChoiceGroups_Access_Array_Access is access all GameFeatureChoiceGroups_Access_Array;

   type GameFeatureChoiceGroups is new Java_Object with record
      hashtable : ABHashtable_Access;
   end record;
   gameFeatureChoiceGroupsExclusive : GameFeatureChoiceGroups_Access;
   gameFeatureChoiceGroupsMultiple : GameFeatureChoiceGroups_Access;

   procedure Initialize (This : in out GameFeatureChoiceGroups'Class);
   function Create return GameFeatureChoiceGroups_Access;
   function getExclusiveInstance return GameFeatureChoiceGroups_Access;
   function getMultipleInstance return GameFeatureChoiceGroups_Access;
   function get (This : in out GameFeatureChoiceGroups) return ABHashtable_Access;
   procedure add (This : in out GameFeatureChoiceGroups; name : Unbounded_String; list_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;


