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
limited with org.allbinary.game.layer.PlayerGameInputGameLayer_Package;
package org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References is
   type PlayerGameInputGameLayer_Access is access all org.allbinary.game.layer.PlayerGameInputGameLayer_Package.PlayerGameInputGameLayer'Class;
   type PlayerGameInputGameLayer_Access_Array is array (Natural range <>) of PlayerGameInputGameLayer_Access;
   type PlayerGameInputGameLayer_Access_Array_Access is access all PlayerGameInputGameLayer_Access_Array;
   type PlayerGameInputGameLayer_Access_Array_Access_Array is array (Natural range <>) of PlayerGameInputGameLayer_Access_Array_Access;
   type PlayerGameInputGameLayer_Access_Array_Access_Array_Access is access all PlayerGameInputGameLayer_Access_Array_Access_Array;
   type PlayerGameInputGameLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerGameInputGameLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerGameInputGameLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerGameInputGameLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerGameInputGameLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerGameInputGameLayer_Access_Array_Access is (if Value /= null and then Value.all in PlayerGameInputGameLayer_Access_Array_Object'Class then PlayerGameInputGameLayer_Access_Array_Object'Class (Value.all).Value else null);
   type PlayerGameInputGameLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerGameInputGameLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerGameInputGameLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerGameInputGameLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerGameInputGameLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerGameInputGameLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlayerGameInputGameLayer_Access_Array_Access_Array_Object'Class then PlayerGameInputGameLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References;

with org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;

package org.allbinary.game.layer.PlayerGameInputGameLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package PlayerGameInputCompositeInterface_Package renames Standard.org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   use type PlayerGameInput_Access;
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   use type PlayerGameInput_Access_Array;
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access;
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   use type PlayerGameInput_Access_Array_Access_Array;
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlayerGameInputGameLayer_Access is org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References.PlayerGameInputGameLayer_Access;
   function "=" (Left, Right : PlayerGameInputGameLayer_Access) return Boolean renames org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References."=";
   subtype PlayerGameInputGameLayer_Access_Array is org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References.PlayerGameInputGameLayer_Access_Array;
   function "=" (Left, Right : PlayerGameInputGameLayer_Access_Array) return Boolean renames org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References."=";
   subtype PlayerGameInputGameLayer_Access_Array_Access is org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References.PlayerGameInputGameLayer_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInputGameLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References."=";
   function Java_Box (Value : PlayerGameInputGameLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References.Java_Box;
   function Java_Unbox_PlayerGameInputGameLayer_Access_Array (Value : access Java_Object'Class) return PlayerGameInputGameLayer_Access_Array_Access renames org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References.Java_Unbox_PlayerGameInputGameLayer_Access_Array;
   subtype PlayerGameInputGameLayer_Access_Array_Access_Array is org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References.PlayerGameInputGameLayer_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameInputGameLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References."=";
   subtype PlayerGameInputGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References.PlayerGameInputGameLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInputGameLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References."=";
   function Java_Box (Value : PlayerGameInputGameLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References.Java_Box;
   function Java_Unbox_PlayerGameInputGameLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return PlayerGameInputGameLayer_Access_Array_Access_Array_Access renames org.allbinary.game.layer.PlayerGameInputGameLayer_Package_References.Java_Unbox_PlayerGameInputGameLayer_Access_Array_Access_Array;

   type PlayerGameInputGameLayer is new AllBinaryGameLayer and PlayerGameInputCompositeInterface with record
      playerGameInput : PlayerGameInput_Access;
   end record;

   procedure Initialize (This : in out PlayerGameInputGameLayer'Class; playerInputId : Integer);
   function Create (playerInputId : Integer) return PlayerGameInputGameLayer_Access;
   function getPlayerGameInput (This : in out PlayerGameInputGameLayer) return PlayerGameInput_Access;
   procedure initInputProcessors (This : in out PlayerGameInputGameLayer);
   procedure processInput (This : in out PlayerGameInputGameLayer; myManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure paint (This : in out PlayerGameInputGameLayer; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.PlayerGameInputGameLayer_Package;


