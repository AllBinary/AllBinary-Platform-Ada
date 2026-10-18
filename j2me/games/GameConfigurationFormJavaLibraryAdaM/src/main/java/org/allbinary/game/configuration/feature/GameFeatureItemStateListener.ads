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
with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemStateListener_Package; use javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package; use org.allbinary.game.configuration.GameOptionsForm_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.configuration.feature.GameFeature_Package; use org.allbinary.game.configuration.feature.GameFeature_Package;

package org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package is

   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package ItemStateListener_Package renames Standard.javax.microedition.lcdui.ItemStateListener_Package;
   package GameOptionsForm_Package renames Standard.org.allbinary.game.configuration.GameOptionsForm_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GameFeatureItemStateListener is tagged;
   type GameFeatureItemStateListener_Access is access all GameFeatureItemStateListener'Class;
   type GameFeatureItemStateListener_Access_Array is array (Natural range <>) of GameFeatureItemStateListener_Access;
   type GameFeatureItemStateListener_Access_Array_Access is access all GameFeatureItemStateListener_Access_Array;
   type GameFeatureItemStateListener_Access_Array_Access_Array is array (Natural range <>) of GameFeatureItemStateListener_Access_Array_Access;
   type GameFeatureItemStateListener_Access_Array_Access_Array_Access is access all GameFeatureItemStateListener_Access_Array_Access_Array;

   type GameFeatureItemStateListener is new Java_Object and ItemStateListener with record
      logUtil : LogUtil_Access;
      gameOptionsForm : GameOptionsForm_Access;
   end record;
   toggleList : BasicArrayList_Access;

   procedure Initialize (This : in out GameFeatureItemStateListener'Class; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class);
   function Create (gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class) return GameFeatureItemStateListener_Access;
   procedure add (gameFeature_Param : access GameFeature_Package.GameFeature'Class);
   procedure itemStateChanged (This : in out GameFeatureItemStateListener; item_Param : access Item_Package.Item'Class);

end org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package;


