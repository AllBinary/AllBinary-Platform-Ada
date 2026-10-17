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
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
--  with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
--  with javax.microedition.lcdui.ItemCommandListener_Package; use javax.microedition.lcdui.ItemCommandListener_Package;
with org.allbinary.game.configuration.GameConfigurationGauge_Package; use org.allbinary.game.configuration.GameConfigurationGauge_Package;
with org.allbinary.game.configuration.GameConfigurationUtil_Package; use org.allbinary.game.configuration.GameConfigurationUtil_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package; use org.allbinary.game.configuration.GameOptionsForm_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.midlet.MidletStrings_Package; use org.allbinary.midlet.MidletStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package is

   package GameConfigurationGauge_Package renames Standard.org.allbinary.game.configuration.GameConfigurationGauge_Package;
   package GameConfigurationUtil_Package renames Standard.org.allbinary.game.configuration.GameConfigurationUtil_Package;
   package GameOptionsForm_Package renames Standard.org.allbinary.game.configuration.GameOptionsForm_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package MidletStrings_Package renames Standard.org.allbinary.midlet.MidletStrings_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GameFeatureItemCommandListener is tagged;
   type GameFeatureItemCommandListener_Access is access all GameFeatureItemCommandListener'Class;
   type GameFeatureItemCommandListener_Access_Array is array (Natural range <>) of GameFeatureItemCommandListener_Access;
   type GameFeatureItemCommandListener_Access_Array_Access is access all GameFeatureItemCommandListener_Access_Array;

   type GameFeatureItemCommandListener is new ItemCommandListener with record
      logUtil : LogUtil_Access;
      gameOptionsForm : GameOptionsForm_Access;
   end record;

   procedure Initialize (This : in out GameFeatureItemCommandListener'Class; gameOptionsForm : GameOptionsForm_Access);
   function Create (gameOptionsForm : GameOptionsForm_Access) return GameFeatureItemCommandListener_Access;
   procedure commandAction (This : in out GameFeatureItemCommandListener; command : Command_Access; item : Item_Access);

end org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package;


