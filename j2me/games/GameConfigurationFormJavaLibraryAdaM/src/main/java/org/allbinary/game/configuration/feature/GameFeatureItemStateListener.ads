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

limited with org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package;
package org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References is
   type GameFeatureItemStateListener_Access is access all org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package.GameFeatureItemStateListener'Class;
   type GameFeatureItemStateListener_Access_Array is array (Natural range <>) of GameFeatureItemStateListener_Access;
   type GameFeatureItemStateListener_Access_Array_Access is access all GameFeatureItemStateListener_Access_Array;
   type GameFeatureItemStateListener_Access_Array_Access_Array is array (Natural range <>) of GameFeatureItemStateListener_Access_Array_Access;
   type GameFeatureItemStateListener_Access_Array_Access_Array_Access is access all GameFeatureItemStateListener_Access_Array_Access_Array;
end org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References;

with org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.Item_Package_References;
with javax.microedition.lcdui.ItemStateListener_Package; use javax.microedition.lcdui.ItemStateListener_Package;
limited with org.allbinary.game.configuration.GameOptionsForm_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.configuration.feature.GameFeature_Package;
with org.allbinary.game.configuration.feature.GameFeature_Package_References;

package org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package is

   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package ItemStateListener_Package renames Standard.javax.microedition.lcdui.ItemStateListener_Package;
   package GameOptionsForm_Package renames Standard.org.allbinary.game.configuration.GameOptionsForm_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Item_Access is javax.microedition.lcdui.Item_Package_References.Item_Access;
   use type Item_Access;
   subtype Item_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array;
   use type Item_Access_Array;
   subtype Item_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access;
   use type Item_Access_Array_Access;
   subtype Item_Access_Array_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array;
   use type Item_Access_Array_Access_Array;
   subtype Item_Access_Array_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array_Access;
   use type Item_Access_Array_Access_Array_Access;
   subtype GameOptionsForm_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access;
   use type GameOptionsForm_Access;
   subtype GameOptionsForm_Access_Array is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array;
   use type GameOptionsForm_Access_Array;
   subtype GameOptionsForm_Access_Array_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access;
   use type GameOptionsForm_Access_Array_Access;
   subtype GameOptionsForm_Access_Array_Access_Array is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access_Array;
   use type GameOptionsForm_Access_Array_Access_Array;
   subtype GameOptionsForm_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access_Array_Access;
   use type GameOptionsForm_Access_Array_Access_Array_Access;
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
   subtype GameFeature_Access is org.allbinary.game.configuration.feature.GameFeature_Package_References.GameFeature_Access;
   use type GameFeature_Access;
   subtype GameFeature_Access_Array is org.allbinary.game.configuration.feature.GameFeature_Package_References.GameFeature_Access_Array;
   use type GameFeature_Access_Array;
   subtype GameFeature_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeature_Package_References.GameFeature_Access_Array_Access;
   use type GameFeature_Access_Array_Access;
   subtype GameFeature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeature_Package_References.GameFeature_Access_Array_Access_Array;
   use type GameFeature_Access_Array_Access_Array;
   subtype GameFeature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeature_Package_References.GameFeature_Access_Array_Access_Array_Access;
   use type GameFeature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameFeatureItemStateListener_Access is org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References.GameFeatureItemStateListener_Access;
   function "=" (Left, Right : GameFeatureItemStateListener_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References."=";
   subtype GameFeatureItemStateListener_Access_Array is org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References.GameFeatureItemStateListener_Access_Array;
   function "=" (Left, Right : GameFeatureItemStateListener_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References."=";
   subtype GameFeatureItemStateListener_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References.GameFeatureItemStateListener_Access_Array_Access;
   function "=" (Left, Right : GameFeatureItemStateListener_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References."=";
   subtype GameFeatureItemStateListener_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References.GameFeatureItemStateListener_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureItemStateListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References."=";
   subtype GameFeatureItemStateListener_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References.GameFeatureItemStateListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureItemStateListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureItemStateListener_Package_References."=";

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


