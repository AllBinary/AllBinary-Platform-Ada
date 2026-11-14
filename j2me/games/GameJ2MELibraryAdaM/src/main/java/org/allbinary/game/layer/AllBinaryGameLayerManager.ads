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
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
package org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References is
   type AllBinaryGameLayerManager_Access is access all org.allbinary.game.layer.AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class;
   type AllBinaryGameLayerManager_Access_Array is array (Natural range <>) of AllBinaryGameLayerManager_Access;
   type AllBinaryGameLayerManager_Access_Array_Access is access all AllBinaryGameLayerManager_Access_Array;
   type AllBinaryGameLayerManager_Access_Array_Access_Array is array (Natural range <>) of AllBinaryGameLayerManager_Access_Array_Access;
   type AllBinaryGameLayerManager_Access_Array_Access_Array_Access is access all AllBinaryGameLayerManager_Access_Array_Access_Array;
   type AllBinaryGameLayerManager_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryGameLayerManager_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryGameLayerManager_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryGameLayerManager_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryGameLayerManager_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryGameLayerManager_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryGameLayerManager_Access_Array_Object'Class then AllBinaryGameLayerManager_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryGameLayerManager_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryGameLayerManager_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryGameLayerManager_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryGameLayerManager_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryGameLayerManager_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryGameLayerManager_Access_Array_Access_Array_Object'Class then AllBinaryGameLayerManager_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;

with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
limited with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.layer.AllBinaryGameLayerManager_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package PlayerGameInputCompositeInterface_Package renames Standard.org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   use type GameInfo_Access;
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   use type GameInfo_Access_Array;
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   use type GameInfo_Access_Array_Access;
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   use type GameInfo_Access_Array_Access_Array;
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   use type GameInfo_Access_Array_Access_Array_Access;
   subtype PlayerGameInputCompositeInterface_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access;
   use type PlayerGameInputCompositeInterface_Access;
   subtype PlayerGameInputCompositeInterface_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array;
   use type PlayerGameInputCompositeInterface_Access_Array;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access;
   use type PlayerGameInputCompositeInterface_Access_Array_Access;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   use type PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   use type PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   function Java_Box (Value : AllBinaryGameLayerManager_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.Java_Box;
   function Java_Unbox_AllBinaryGameLayerManager_Access_Array (Value : access Java_Object'Class) return AllBinaryGameLayerManager_Access_Array_Access renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.Java_Unbox_AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   function Java_Box (Value : AllBinaryGameLayerManager_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.Java_Box;
   function Java_Unbox_AllBinaryGameLayerManager_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryGameLayerManager_Access_Array_Access_Array_Access renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.Java_Unbox_AllBinaryGameLayerManager_Access_Array_Access_Array;

   type AllBinaryGameLayerManager is new AllBinaryLayerManager with record
      backgroundBasicColor : BasicColor_Access;
      foregroundBasicColor : BasicColor_Access;
      gameInfo : GameInfo_Access;
      playerGameInputCompositeInterface : PlayerGameInputCompositeInterface_Access;
   end record;
   NULL_ALLBINARY_LAYER_MANAGER : Java_Object_Access;
   ID : Integer;

   procedure Initialize (This : in out AllBinaryGameLayerManager'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class);
   function Create (backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) return AllBinaryGameLayerManager_Access;
   function getNullInstance return AllBinaryGameLayerManager_Access;
   function getLayerManager (This : in out AllBinaryGameLayerManager) return AllBinaryLayerManager_Access;
   procedure init (This : in out AllBinaryGameLayerManager);
   function getBackgroundBasicColor (This : in out AllBinaryGameLayerManager) return BasicColor_Access;
   procedure setBackgroundBasicColor (This : in out AllBinaryGameLayerManager; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getForegroundBasicColor (This : in out AllBinaryGameLayerManager) return BasicColor_Access;
   procedure setForegroundBasicColor (This : in out AllBinaryGameLayerManager; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getGameInfo (This : in out AllBinaryGameLayerManager) return GameInfo_Access;
   procedure setGameInfo (This : in out AllBinaryGameLayerManager; gameInfo_Param : access GameInfo_Package.GameInfo'Class);
   procedure setLayerProcessorList (This : in out AllBinaryGameLayerManager; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure setPlayerGameInputCompositeInterface (This : in out AllBinaryGameLayerManager; playerGameInputCompositeInterface_Param : access PlayerGameInputCompositeInterface_Package.PlayerGameInputCompositeInterface'Class);
   function getPlayerGameInputCompositeInterface (This : in out AllBinaryGameLayerManager) return PlayerGameInputCompositeInterface_Access;

end org.allbinary.game.layer.AllBinaryGameLayerManager_Package;


