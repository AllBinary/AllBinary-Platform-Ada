-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package; use org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package;

package org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type PlayerTopViewCharacterBehavior is tagged;
   type PlayerTopViewCharacterBehavior_Access is access all PlayerTopViewCharacterBehavior'Class;
   type PlayerTopViewCharacterBehavior_Access_Array is array (Natural range <>) of PlayerTopViewCharacterBehavior_Access;
   type PlayerTopViewCharacterBehavior_Access_Array_Access is access all PlayerTopViewCharacterBehavior_Access_Array;
   type PlayerTopViewCharacterBehavior_Access_Array_Access_Array is array (Natural range <>) of PlayerTopViewCharacterBehavior_Access_Array_Access;
   type PlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access is access all PlayerTopViewCharacterBehavior_Access_Array_Access_Array;

   type PlayerTopViewCharacterBehavior is new TopViewCharacterBehavior with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PlayerTopViewCharacterBehavior'Class);
   function Create return PlayerTopViewCharacterBehavior_Access;
   procedure terrainEvent (This : in out PlayerTopViewCharacterBehavior; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; direction_Param : access Direction_Package.Direction'Class; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure terrainMove (This : in out PlayerTopViewCharacterBehavior; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer);
   procedure moveIfOnScreen (This : in out PlayerTopViewCharacterBehavior; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; ax : Integer; ay : Integer);
   function isTiledLayerMoveable (This : in out PlayerTopViewCharacterBehavior; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; y : Integer) return Boolean;
   procedure isTiledLayerMoveable (This : in out PlayerTopViewCharacterBehavior; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; y : Integer);

end org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package;


