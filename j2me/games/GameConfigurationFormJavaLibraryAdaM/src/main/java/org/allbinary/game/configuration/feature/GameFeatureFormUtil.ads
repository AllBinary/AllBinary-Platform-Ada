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
--  with javax.microedition.lcdui.ChoiceGroup_Package; use javax.microedition.lcdui.ChoiceGroup_Package;
--  with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.game.configuration.GameConfigurationGauge_Package; use org.allbinary.game.configuration.GameConfigurationGauge_Package;
with org.allbinary.game.configuration.GameConfigurationUtil_Package; use org.allbinary.game.configuration.GameConfigurationUtil_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.logic.MEUtil_Package; use org.allbinary.logic.MEUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.GameFeatureUtil_Package; use org.allbinary.game.configuration.feature.GameFeatureUtil_Package;

package org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package is

   package GameConfigurationGauge_Package renames Standard.org.allbinary.game.configuration.GameConfigurationGauge_Package;
   package GameConfigurationUtil_Package renames Standard.org.allbinary.game.configuration.GameConfigurationUtil_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package MEUtil_Package renames Standard.org.allbinary.logic.MEUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;

   type GameFeatureFormUtil is tagged;
   type GameFeatureFormUtil_Access is access all GameFeatureFormUtil'Class;
   type GameFeatureFormUtil_Access_Array is array (Natural range <>) of GameFeatureFormUtil_Access;
   type GameFeatureFormUtil_Access_Array_Access is access all GameFeatureFormUtil_Access_Array;

   type GameFeatureFormUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      meUtil : MEUtil_Access;
   end record;
   instance : GameFeatureFormUtil_Access;

   procedure Initialize (This : in out GameFeatureFormUtil'Class);
   function Create return GameFeatureFormUtil_Access;
   function getInstance return GameFeatureFormUtil_Access;
   function getChoiceGroup (This : in out GameFeatureFormUtil; hashtable : ABHashtable_Access; name : Unbounded_String; option : Integer) return ChoiceGroup_Access;
   procedure getChoiceGroup (This : in out GameFeatureFormUtil; hashtable : ABHashtable_Access; name : Unbounded_String; option : Integer);
   procedure addChoiceGroup (This : in out GameFeatureFormUtil; form : CommandForm_Access; hashtable : ABHashtable_Access; option : Integer);
   procedure setDefault (This : in out GameFeatureFormUtil; form : CommandForm_Access);

end org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;


