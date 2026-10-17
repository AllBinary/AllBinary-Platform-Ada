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
with org.allbinary.game.layer.LayerPlacementType_Package; use org.allbinary.game.layer.LayerPlacementType_Package;

package org.allbinary.game.layer.BasicLayerPlacement_Package is


   type BasicLayerPlacement is tagged;
   type BasicLayerPlacement_Access is access all BasicLayerPlacement'Class;
   type BasicLayerPlacement_Access_Array is array (Natural range <>) of BasicLayerPlacement_Access;
   type BasicLayerPlacement_Access_Array_Access is access all BasicLayerPlacement_Access_Array;

   type BasicLayerPlacement is new Java_Object with record
      layerType : LayerPlacementType_Access;
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out BasicLayerPlacement'Class; layerType_Param : access LayerPlacementType'Class; width : Integer; height : Integer);
   function Create (layerType_Param : access LayerPlacementType'Class; width : Integer; height : Integer) return BasicLayerPlacement_Access;
   function getWidth (This : in out BasicLayerPlacement) return Integer;
   function getHeight (This : in out BasicLayerPlacement) return Integer;
   function getLayerType (This : in out BasicLayerPlacement) return LayerPlacementType_Access;
   procedure setLayerType (This : in out BasicLayerPlacement; layerType_Param : access LayerPlacementType'Class);

end org.allbinary.game.layer.BasicLayerPlacement_Package;


