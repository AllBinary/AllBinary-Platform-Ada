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
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.layer.AllBinaryGameLayerManager_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package PlayerGameInputCompositeInterface_Package renames Standard.org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type AllBinaryGameLayerManager is tagged;
   type AllBinaryGameLayerManager_Access is access all AllBinaryGameLayerManager'Class;
   type AllBinaryGameLayerManager_Access_Array is array (Natural range <>) of AllBinaryGameLayerManager_Access;
   type AllBinaryGameLayerManager_Access_Array_Access is access all AllBinaryGameLayerManager_Access_Array;
   type AllBinaryGameLayerManager_Access_Array_Access_Array is array (Natural range <>) of AllBinaryGameLayerManager_Access_Array_Access;
   type AllBinaryGameLayerManager_Access_Array_Access_Array_Access is access all AllBinaryGameLayerManager_Access_Array_Access_Array;

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


