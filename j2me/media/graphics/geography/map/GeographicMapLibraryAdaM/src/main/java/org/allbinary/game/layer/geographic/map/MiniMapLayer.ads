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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.animation.vector.CircleFilledAnimation_Package; use org.allbinary.animation.vector.CircleFilledAnimation_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;

package org.allbinary.game.layer.geographic.map.MiniMapLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CircleFilledAnimation_Package renames Standard.org.allbinary.animation.vector.CircleFilledAnimation_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package GeographicMapCellPositionEvent_Package renames Standard.org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
   package GeographicMapCellPositionEventListenerInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type MiniMapLayer is tagged;
   type MiniMapLayer_Access is access all MiniMapLayer'Class;
   type MiniMapLayer_Access_Array is array (Natural range <>) of MiniMapLayer_Access;
   type MiniMapLayer_Access_Array_Access is access all MiniMapLayer_Access_Array;
   type MiniMapLayer_Access_Array_Access_Array is array (Natural range <>) of MiniMapLayer_Access_Array_Access;
   type MiniMapLayer_Access_Array_Access_Array_Access is access all MiniMapLayer_Access_Array_Access_Array;

   type MiniMapLayer is new AllBinaryLayer and GeographicMapCellPositionEventListenerInterface with record
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      list : BasicArrayList_Access;
      basicColorList : BasicArrayList_Access;
      positionList : BasicArrayList_Access;
      animationInterface : CircleFilledAnimation_Access;
   end record;

   procedure Initialize (This : in out MiniMapLayer'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return MiniMapLayer_Access;
   procedure init (This : in out MiniMapLayer);
   procedure onEvent (This : in out MiniMapLayer; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onRemoveGeographicMapCellPositionEvent (This : in out MiniMapLayer; geographicMapCellPositionEvent_Param : access GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class);
   procedure onGeographicMapCellPositionEvent (This : in out MiniMapLayer; geographicMapCellPositionEvent_Param : access GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class);
   procedure paintDots (This : in out MiniMapLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out MiniMapLayer; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;


