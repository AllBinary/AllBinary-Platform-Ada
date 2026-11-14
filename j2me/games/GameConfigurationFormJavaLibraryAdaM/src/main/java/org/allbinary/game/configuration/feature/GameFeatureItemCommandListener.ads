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
limited with org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package;
package org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References is
   type GameFeatureItemCommandListener_Access is access all org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package.GameFeatureItemCommandListener'Class;
   type GameFeatureItemCommandListener_Access_Array is array (Natural range <>) of GameFeatureItemCommandListener_Access;
   type GameFeatureItemCommandListener_Access_Array_Access is access all GameFeatureItemCommandListener_Access_Array;
   type GameFeatureItemCommandListener_Access_Array_Access_Array is array (Natural range <>) of GameFeatureItemCommandListener_Access_Array_Access;
   type GameFeatureItemCommandListener_Access_Array_Access_Array_Access is access all GameFeatureItemCommandListener_Access_Array_Access_Array;
   type GameFeatureItemCommandListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureItemCommandListener_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureItemCommandListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureItemCommandListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureItemCommandListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureItemCommandListener_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureItemCommandListener_Access_Array_Object'Class then GameFeatureItemCommandListener_Access_Array_Object'Class (Value.all).Value else null);
   type GameFeatureItemCommandListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureItemCommandListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureItemCommandListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureItemCommandListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureItemCommandListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureItemCommandListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureItemCommandListener_Access_Array_Access_Array_Object'Class then GameFeatureItemCommandListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References;

with org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.Item_Package_References;
with javax.microedition.lcdui.ItemCommandListener_Package; use javax.microedition.lcdui.ItemCommandListener_Package;
limited with org.allbinary.game.configuration.GameOptionsForm_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package ItemCommandListener_Package renames Standard.javax.microedition.lcdui.ItemCommandListener_Package;
   package GameOptionsForm_Package renames Standard.org.allbinary.game.configuration.GameOptionsForm_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   use type Command_Access;
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   use type Command_Access_Array;
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   use type Command_Access_Array_Access;
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   use type Command_Access_Array_Access_Array;
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   use type Command_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype GameFeatureItemCommandListener_Access is org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References.GameFeatureItemCommandListener_Access;
   function "=" (Left, Right : GameFeatureItemCommandListener_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References."=";
   subtype GameFeatureItemCommandListener_Access_Array is org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References.GameFeatureItemCommandListener_Access_Array;
   function "=" (Left, Right : GameFeatureItemCommandListener_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References."=";
   subtype GameFeatureItemCommandListener_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References.GameFeatureItemCommandListener_Access_Array_Access;
   function "=" (Left, Right : GameFeatureItemCommandListener_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References."=";
   function Java_Box (Value : GameFeatureItemCommandListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References.Java_Box;
   function Java_Unbox_GameFeatureItemCommandListener_Access_Array (Value : access Java_Object'Class) return GameFeatureItemCommandListener_Access_Array_Access renames org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References.Java_Unbox_GameFeatureItemCommandListener_Access_Array;
   subtype GameFeatureItemCommandListener_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References.GameFeatureItemCommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureItemCommandListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References."=";
   subtype GameFeatureItemCommandListener_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References.GameFeatureItemCommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureItemCommandListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References."=";
   function Java_Box (Value : GameFeatureItemCommandListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References.Java_Box;
   function Java_Unbox_GameFeatureItemCommandListener_Access_Array_Access_Array (Value : access Java_Object'Class) return GameFeatureItemCommandListener_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package_References.Java_Unbox_GameFeatureItemCommandListener_Access_Array_Access_Array;

   type GameFeatureItemCommandListener is new Java_Object and ItemCommandListener with record
      logUtil : LogUtil_Access;
      gameOptionsForm : GameOptionsForm_Access;
   end record;

   procedure Initialize (This : in out GameFeatureItemCommandListener'Class; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class);
   function Create (gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class) return GameFeatureItemCommandListener_Access;
   procedure commandAction (This : in out GameFeatureItemCommandListener; command_Param : access Command_Package.Command'Class; item_Param : access Item_Package.Item'Class);

end org.allbinary.game.configuration.feature.GameFeatureItemCommandListener_Package;


