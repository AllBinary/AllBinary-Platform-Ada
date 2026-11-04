-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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

limited with org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
package org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References is
   type AdvancedRTSPlayerLayerInterface_Access is access all org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package.AdvancedRTSPlayerLayerInterface'Class;
   type AdvancedRTSPlayerLayerInterface_Access_Array is array (Natural range <>) of AdvancedRTSPlayerLayerInterface_Access;
   type AdvancedRTSPlayerLayerInterface_Access_Array_Access is access all AdvancedRTSPlayerLayerInterface_Access_Array;
   type AdvancedRTSPlayerLayerInterface_Access_Array_Access_Array is array (Natural range <>) of AdvancedRTSPlayerLayerInterface_Access_Array_Access;
   type AdvancedRTSPlayerLayerInterface_Access_Array_Access_Array_Access is access all AdvancedRTSPlayerLayerInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References;

with org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameType_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
limited with org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;
with org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References;

package org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package is

   package GameType_Package renames Standard.org.allbinary.game.GameType_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype GameType_Access is org.allbinary.game.GameType_Package_References.GameType_Access;
   use type GameType_Access;
   subtype GameType_Access_Array is org.allbinary.game.GameType_Package_References.GameType_Access_Array;
   use type GameType_Access_Array;
   subtype GameType_Access_Array_Access is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access;
   use type GameType_Access_Array_Access;
   subtype GameType_Access_Array_Access_Array is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access_Array;
   use type GameType_Access_Array_Access_Array;
   subtype GameType_Access_Array_Access_Array_Access is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access_Array_Access;
   use type GameType_Access_Array_Access_Array_Access;
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
   subtype AdvancedPlayerOwnedRTSLayers_Access is org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.AdvancedPlayerOwnedRTSLayers_Access;
   use type AdvancedPlayerOwnedRTSLayers_Access;
   subtype AdvancedPlayerOwnedRTSLayers_Access_Array is org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.AdvancedPlayerOwnedRTSLayers_Access_Array;
   use type AdvancedPlayerOwnedRTSLayers_Access_Array;
   subtype AdvancedPlayerOwnedRTSLayers_Access_Array_Access is org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.AdvancedPlayerOwnedRTSLayers_Access_Array_Access;
   use type AdvancedPlayerOwnedRTSLayers_Access_Array_Access;
   subtype AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array;
   use type AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array;
   subtype AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package_References.AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access;
   use type AdvancedPlayerOwnedRTSLayers_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AdvancedRTSPlayerLayerInterface is interface and RTSPlayerLayerInterface;
   subtype AdvancedRTSPlayerLayerInterface_Access is org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References.AdvancedRTSPlayerLayerInterface_Access;
   function "=" (Left, Right : AdvancedRTSPlayerLayerInterface_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References."=";
   subtype AdvancedRTSPlayerLayerInterface_Access_Array is org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References.AdvancedRTSPlayerLayerInterface_Access_Array;
   function "=" (Left, Right : AdvancedRTSPlayerLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References."=";
   subtype AdvancedRTSPlayerLayerInterface_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References.AdvancedRTSPlayerLayerInterface_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSPlayerLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References."=";
   subtype AdvancedRTSPlayerLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References.AdvancedRTSPlayerLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvancedRTSPlayerLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References."=";
   subtype AdvancedRTSPlayerLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References.AdvancedRTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSPlayerLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package_References."=";
   function Java_Object_Access_From_AdvancedRTSPlayerLayerInterface (Value : AdvancedRTSPlayerLayerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getAdvancedPlayerOwnedRTSLayers (This : in out AdvancedRTSPlayerLayerInterface) return AdvancedPlayerOwnedRTSLayers_Access is abstract;
   function isLocalPlayer (This : in out AdvancedRTSPlayerLayerInterface) return Boolean is abstract;
   function getGameType (This : in out AdvancedRTSPlayerLayerInterface) return GameType_Access is abstract;
   function getDecalBasicColor (This : in out AdvancedRTSPlayerLayerInterface) return BasicColor_Access is abstract;

end org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;


