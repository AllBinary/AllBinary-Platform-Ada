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
--  with javax.microedition.lcdui.ChoiceGroup_Package; use javax.microedition.lcdui.ChoiceGroup_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.EnumerationUtil_Package; use org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package; use org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;

package org.allbinary.game.configuration.feature.GameFeatureUtil_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;

   type GameFeatureUtil is tagged;
   type GameFeatureUtil_Access is access all GameFeatureUtil'Class;
   type GameFeatureUtil_Access_Array is array (Natural range <>) of GameFeatureUtil_Access;
   type GameFeatureUtil_Access_Array_Access is access all GameFeatureUtil_Access_Array;

   type GameFeatureUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      tsUtil : TsUtil_Access;
      enumerationUtil : EnumerationUtil_Access;
      ON_GAME_FEATURE_CHANGE : Unbounded_String;
      GAME_FEATURE_CHANGED : Unbounded_String;
   end record;
   instance : GameFeatureUtil_Access;

   procedure Initialize (This : in out GameFeatureUtil'Class);
   function Create return GameFeatureUtil_Access;
   function getInstance return GameFeatureUtil_Access;
   procedure setDefault (This : in out GameFeatureUtil; choiceGroup_Param : access ChoiceGroup_Package.ChoiceGroup'Class);
   procedure updateMultiple (This : in out GameFeatureUtil; choiceGroup_Param : access ChoiceGroup_Package.ChoiceGroup'Class);
   procedure updateExclusiveForChoiceGroup (This : in out GameFeatureUtil; choiceGroup_Param : access ChoiceGroup_Package.ChoiceGroup'Class);
   function isExclusive (This : in out GameFeatureUtil; itemLabel : Unbounded_String) return Boolean;
   procedure isExclusive (This : in out GameFeatureUtil; itemLabel : Unbounded_String);
   procedure updateExclusive (This : in out GameFeatureUtil; selectedChoiceLabel : Unbounded_String);
   procedure updateExclusiveList (This : in out GameFeatureUtil; gameFeature_Param : access Feature_Package.Feature'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.game.configuration.feature.GameFeatureUtil_Package;


