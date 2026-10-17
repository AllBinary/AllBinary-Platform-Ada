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

package org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type InGameFeatureChoiceGroups is tagged;
   type InGameFeatureChoiceGroups_Access is access all InGameFeatureChoiceGroups'Class;
   type InGameFeatureChoiceGroups_Access_Array is array (Natural range <>) of InGameFeatureChoiceGroups_Access;
   type InGameFeatureChoiceGroups_Access_Array_Access is access all InGameFeatureChoiceGroups_Access_Array;

   type InGameFeatureChoiceGroups is new Java_Object with record
      hashtable : ABHashtable_Access;
   end record;
   gameFeatureChoiceGroupsExclusive : InGameFeatureChoiceGroups_Access;
   gameFeatureChoiceGroupsMultiple : InGameFeatureChoiceGroups_Access;

   procedure Initialize (This : in out InGameFeatureChoiceGroups'Class);
   function Create return InGameFeatureChoiceGroups_Access;
   function getExclusiveInstance return InGameFeatureChoiceGroups_Access;
   procedure getExclusiveInstance;
   function getMultipleInstance return InGameFeatureChoiceGroups_Access;
   procedure getMultipleInstance;
   function get (This : in out InGameFeatureChoiceGroups) return ABHashtable_Access;
   procedure get (This : in out InGameFeatureChoiceGroups);
   procedure add (This : in out InGameFeatureChoiceGroups; name : Unbounded_String; list : BasicArrayList_Access);

end org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package;


