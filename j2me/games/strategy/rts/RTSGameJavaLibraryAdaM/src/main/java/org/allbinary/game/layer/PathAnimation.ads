-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.layer.PathAnimation_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package CanvasStrings_Package renames org.allbinary.graphics.displayable.CanvasStrings_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellHistory_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCompositeInterface_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type PathAnimation is tagged;
   type PathAnimation_Access is access all PathAnimation'Class;
   type PathAnimation_Access_Array is array (Natural range <>) of PathAnimation_Access;
   type PathAnimation_Access_Array_Access is access all PathAnimation_Access_Array;

   type PathAnimation is new Animation with record
      logUtil : LogUtil_Access;
      linePathAnimation : LinePathAnimation_Access;
      pathFindingLayer : PathFindingLayerInterface_Access;
      allBinaryGameLayerManagerP : AllBinaryGameLayerManager_Access;
      startColor : BasicColor_Access;
      middleColor : BasicColor_Access;
      endColor : BasicColor_Access;
   end record;

   procedure Initialize (This : in out PathAnimation'Class; pathFindingLayer : PathFindingLayerInterface_Access; linePathAnimation : LinePathAnimation_Access);
   function Create (pathFindingLayer : PathFindingLayerInterface_Access; linePathAnimation : LinePathAnimation_Access) return PathAnimation_Access;
   procedure setAllBinaryGameLayerManager (This : in out PathAnimation; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   procedure nextFrame (This : in out PathAnimation);
   procedure paintXY (This : in out PathAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.game.layer.PathAnimation_Package;


