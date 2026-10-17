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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.GameType_Package; use org.allbinary.game.GameType_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;

package org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package is

   package GameType_Package renames Standard.org.allbinary.game.GameType_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type AdvancedRTSPlayerLayerInterface is interface and RTSPlayerLayerInterface;
   type AdvancedRTSPlayerLayerInterface_Access is access all AdvancedRTSPlayerLayerInterface'Class;
   type AdvancedRTSPlayerLayerInterface_Access_Array is array (Natural range <>) of AdvancedRTSPlayerLayerInterface_Access;
   type AdvancedRTSPlayerLayerInterface_Access_Array_Access is access all AdvancedRTSPlayerLayerInterface_Access_Array;
   function getAdvancedPlayerOwnedRTSLayers (This : in out AdvancedRTSPlayerLayerInterface) return AdvancedPlayerOwnedRTSLayers_Access is abstract;
   function isLocalPlayer (This : in out AdvancedRTSPlayerLayerInterface) return Boolean is abstract;
   function getGameType (This : in out AdvancedRTSPlayerLayerInterface) return GameType_Access is abstract;
   function getDecalBasicColor (This : in out AdvancedRTSPlayerLayerInterface) return BasicColor_Access is abstract;

end org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;


