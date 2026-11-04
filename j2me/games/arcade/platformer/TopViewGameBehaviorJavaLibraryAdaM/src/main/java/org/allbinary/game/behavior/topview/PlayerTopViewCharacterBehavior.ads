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

limited with org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package;
package org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References is
   type PlayerTopViewCharacterBehavior_Access is access all org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package.PlayerTopViewCharacterBehavior'Class;
   type PlayerTopViewCharacterBehavior_Access_Array is array (Natural range <>) of PlayerTopViewCharacterBehavior_Access;
   type PlayerTopViewCharacterBehavior_Access_Array_Access is access all PlayerTopViewCharacterBehavior_Access_Array;
   type PlayerTopViewCharacterBehavior_Access_Array_Access_Array is array (Natural range <>) of PlayerTopViewCharacterBehavior_Access_Array_Access;
   type PlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access is access all PlayerTopViewCharacterBehavior_Access_Array_Access_Array;
end org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References;

with org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package; use org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package;

package org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   use type Direction_Access;
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   use type Direction_Access_Array;
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   use type Direction_Access_Array_Access;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   use type Direction_Access_Array_Access_Array;
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   use type Direction_Access_Array_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   use type AllBinaryTiledLayer_Access;
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   use type AllBinaryTiledLayer_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   use type AllBinaryTiledLayer_Access_Array_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
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
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlayerTopViewCharacterBehavior_Access is org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References.PlayerTopViewCharacterBehavior_Access;
   function "=" (Left, Right : PlayerTopViewCharacterBehavior_Access) return Boolean renames org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References."=";
   subtype PlayerTopViewCharacterBehavior_Access_Array is org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References.PlayerTopViewCharacterBehavior_Access_Array;
   function "=" (Left, Right : PlayerTopViewCharacterBehavior_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References."=";
   subtype PlayerTopViewCharacterBehavior_Access_Array_Access is org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References.PlayerTopViewCharacterBehavior_Access_Array_Access;
   function "=" (Left, Right : PlayerTopViewCharacterBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References."=";
   subtype PlayerTopViewCharacterBehavior_Access_Array_Access_Array is org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References.PlayerTopViewCharacterBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerTopViewCharacterBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References."=";
   subtype PlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References.PlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior_Package_References."=";

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


