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
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package; use javax.microedition.lcdui.ItemCommandListener_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package; use org.allbinary.game.configuration.GameOptionsForm_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package ItemCommandListener_Package renames Standard.javax.microedition.lcdui.ItemCommandListener_Package;
   package GameOptionsForm_Package renames Standard.org.allbinary.game.configuration.GameOptionsForm_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type GameFeatureItemCommandListener is tagged;
   type GameFeatureItemCommandListener_Access is access all GameFeatureItemCommandListener'Class;
   type GameFeatureItemCommandListener_Access_Array is array (Natural range <>) of GameFeatureItemCommandListener_Access;
   type GameFeatureItemCommandListener_Access_Array_Access is access all GameFeatureItemCommandListener_Access_Array;
   type GameFeatureItemCommandListener_Access_Array_Access_Array is array (Natural range <>) of GameFeatureItemCommandListener_Access_Array_Access;
   type GameFeatureItemCommandListener_Access_Array_Access_Array_Access is access all GameFeatureItemCommandListener_Access_Array_Access_Array;

   type GameFeatureItemCommandListener is new Java_Object and ItemCommandListener with record
      logUtil : LogUtil_Access;
      gameOptionsForm : GameOptionsForm_Access;
   end record;

   procedure Initialize (This : in out GameFeatureItemCommandListener'Class; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class);
   function Create (gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class) return GameFeatureItemCommandListener_Access;
   procedure commandAction (This : in out GameFeatureItemCommandListener; command_Param : access Command_Package.Command'Class; item_Param : access Item_Package.Item'Class);

end org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package;


