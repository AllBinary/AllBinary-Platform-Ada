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
--  with javax.microedition.lcdui.Choice_Package; use javax.microedition.lcdui.Choice_Package;
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
--  with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
--  with javax.microedition.lcdui.TextField_Package; use javax.microedition.lcdui.TextField_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package; use org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
with org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package; use org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;
with org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package; use org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package;
with org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package; use org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package;
with org.allbinary.game.configuration.feature.SensorFeatureFactory_Package; use org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
with org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package; use org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package;
with org.allbinary.game.configuration.persistance.KeyValuePersistance_Package; use org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package; use org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.input.gyro.OrientationData_Package; use org.allbinary.input.gyro.OrientationData_Package;
with org.allbinary.logic.MEUtil_Package; use org.allbinary.logic.MEUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.configuration.GameConfigurationTextInput_Package; use org.allbinary.game.configuration.GameConfigurationTextInput_Package;
with org.allbinary.game.configuration.GameConfigurationSingleton_Package; use org.allbinary.game.configuration.GameConfigurationSingleton_Package;
with org.allbinary.game.configuration.GameConfiguration_Package; use org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfigurationGauge_Package; use org.allbinary.game.configuration.GameConfigurationGauge_Package;
with org.allbinary.game.configuration.GameConfigurationUtil_Package; use org.allbinary.game.configuration.GameConfigurationUtil_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;

package org.allbinary.game.configuration.GameOptionsForm_Package is

   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameFeatureChoiceGroups_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
   package GameFeatureFormUtil_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;
   package GameFeatureItemCommandListener_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package;
   package GameFeatureItemStateListener_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package;
   package SensorFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
   package GameConfigurationPersistanceSingleton_Package renames Standard.org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package;
   package KeyValuePersistance_Package renames Standard.org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyCommandsFactory_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package OrientationData_Package renames Standard.org.allbinary.input.gyro.OrientationData_Package;
   package MEUtil_Package renames Standard.org.allbinary.logic.MEUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type GameOptionsForm is tagged;
   type GameOptionsForm_Access is access all GameOptionsForm'Class;
   type GameOptionsForm_Access_Array is array (Natural range <>) of GameOptionsForm_Access;
   type GameOptionsForm_Access_Array_Access is access all GameOptionsForm_Access_Array;

   type GameOptionsForm is new CommandForm with record
      meUtil : MEUtil_Access;
   end record;

   procedure Initialize (This : in out GameOptionsForm'Class; commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return GameOptionsForm_Access;
   procedure closeClientInformation (This : in out GameOptionsForm; abeClientInformation : AbeClientInformationInterface_Access);
   procedure addTextFieldsIfSimulated (This : in out GameOptionsForm);
   procedure addTextFields (This : in out GameOptionsForm);
   procedure addConfiguration (This : in out GameOptionsForm);
   procedure initCommands (This : in out GameOptionsForm; cmdListener : CommandListener_Access);
   procedure save (This : in out GameOptionsForm; abeClientInformation : AbeClientInformationInterface_Access);

end org.allbinary.game.configuration.GameOptionsForm_Package;


