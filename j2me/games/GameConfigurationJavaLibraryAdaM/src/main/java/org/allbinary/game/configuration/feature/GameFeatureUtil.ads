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
limited with org.allbinary.game.configuration.feature.GameFeatureUtil_Package;
package org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References is
   type GameFeatureUtil_Access is access all org.allbinary.game.configuration.feature.GameFeatureUtil_Package.GameFeatureUtil'Class;
   type GameFeatureUtil_Access_Array is array (Natural range <>) of GameFeatureUtil_Access;
   type GameFeatureUtil_Access_Array_Access is access all GameFeatureUtil_Access_Array;
   type GameFeatureUtil_Access_Array_Access_Array is array (Natural range <>) of GameFeatureUtil_Access_Array_Access;
   type GameFeatureUtil_Access_Array_Access_Array_Access is access all GameFeatureUtil_Access_Array_Access_Array;
   type GameFeatureUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureUtil_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureUtil_Access_Array_Object'Class then GameFeatureUtil_Access_Array_Object'Class (Value.all).Value else null);
   type GameFeatureUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureUtil_Access_Array_Access_Array_Object'Class then GameFeatureUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References;

with org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceGroup_Package_References;
--  with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.EnumerationUtil_Package_References;
limited with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Feature_Package_References;

package org.allbinary.game.configuration.feature.GameFeatureUtil_Package is

   package ChoiceGroup_Package renames Standard.javax.microedition.lcdui.ChoiceGroup_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;
   package Reference_Types is
   subtype ChoiceGroup_Access is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access;
   use type ChoiceGroup_Access;
   subtype ChoiceGroup_Access_Array is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array;
   use type ChoiceGroup_Access_Array;
   subtype ChoiceGroup_Access_Array_Access is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array_Access;
   use type ChoiceGroup_Access_Array_Access;
   subtype ChoiceGroup_Access_Array_Access_Array is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array_Access_Array;
   use type ChoiceGroup_Access_Array_Access_Array;
   subtype ChoiceGroup_Access_Array_Access_Array_Access is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array_Access_Array_Access;
   use type ChoiceGroup_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype EnumerationUtil_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access;
   use type EnumerationUtil_Access;
   subtype EnumerationUtil_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array;
   use type EnumerationUtil_Access_Array;
   subtype EnumerationUtil_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access;
   subtype EnumerationUtil_Access_Array_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array;
   use type EnumerationUtil_Access_Array_Access_Array;
   subtype EnumerationUtil_Access_Array_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access_Array_Access;
   subtype Feature_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access;
   use type Feature_Access;
   subtype Feature_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array;
   use type Feature_Access_Array;
   subtype Feature_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access;
   use type Feature_Access_Array_Access;
   subtype Feature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array;
   use type Feature_Access_Array_Access_Array;
   subtype Feature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array_Access;
   use type Feature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameFeatureUtil_Access is org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.GameFeatureUtil_Access;
   function "=" (Left, Right : GameFeatureUtil_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References."=";
   subtype GameFeatureUtil_Access_Array is org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.GameFeatureUtil_Access_Array;
   function "=" (Left, Right : GameFeatureUtil_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References."=";
   subtype GameFeatureUtil_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.GameFeatureUtil_Access_Array_Access;
   function "=" (Left, Right : GameFeatureUtil_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References."=";
   function Java_Box (Value : GameFeatureUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.Java_Box;
   function Java_Unbox_GameFeatureUtil_Access_Array (Value : access Java_Object'Class) return GameFeatureUtil_Access_Array_Access renames org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.Java_Unbox_GameFeatureUtil_Access_Array;
   subtype GameFeatureUtil_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.GameFeatureUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References."=";
   subtype GameFeatureUtil_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.GameFeatureUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References."=";
   function Java_Box (Value : GameFeatureUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.Java_Box;
   function Java_Unbox_GameFeatureUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return GameFeatureUtil_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.Java_Unbox_GameFeatureUtil_Access_Array_Access_Array;

   type GameFeatureUtil is new Java_Object with record
      logUtil : LogUtil_Access;
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


