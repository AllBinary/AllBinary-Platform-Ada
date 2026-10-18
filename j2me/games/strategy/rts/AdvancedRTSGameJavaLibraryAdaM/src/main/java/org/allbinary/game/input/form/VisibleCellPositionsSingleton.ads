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
with javax.microedition.lcdui.game.SimpleTiledLayer_Package; use javax.microedition.lcdui.game.SimpleTiledLayer_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package; use org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package; use org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.layer.event.ScrollMapEvent_Package; use org.allbinary.layer.event.ScrollMapEvent_Package;
with org.allbinary.layer.event.ScrollMapEventHandler_Package; use org.allbinary.layer.event.ScrollMapEventHandler_Package;
with org.allbinary.layer.event.ScrollMapEventListenerInterface_Package; use org.allbinary.layer.event.ScrollMapEventListenerInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package is

   package SimpleTiledLayer_Package renames Standard.javax.microedition.lcdui.game.SimpleTiledLayer_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package BuildingEventListenerInterface_Package renames Standard.org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
   package LocalPlayerBuildingEventHandler_Package renames Standard.org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package ScrollMapEvent_Package renames Standard.org.allbinary.layer.event.ScrollMapEvent_Package;
   package ScrollMapEventHandler_Package renames Standard.org.allbinary.layer.event.ScrollMapEventHandler_Package;
   package ScrollMapEventListenerInterface_Package renames Standard.org.allbinary.layer.event.ScrollMapEventListenerInterface_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;

   type VisibleCellPositionsSingleton is tagged;
   type VisibleCellPositionsSingleton_Access is access all VisibleCellPositionsSingleton'Class;
   type VisibleCellPositionsSingleton_Access_Array is array (Natural range <>) of VisibleCellPositionsSingleton_Access;
   type VisibleCellPositionsSingleton_Access_Array_Access is access all VisibleCellPositionsSingleton_Access_Array;

   type VisibleCellPositionsSingleton is new BuildingEventListenerInterface and ScrollMapEventListenerInterface with record
      stationaryVisibleCellPositions : Short_Integer_Array_Access_Array_Access;
      visibleCellPositions : Short_Integer_Array_Access_Array_Access;
      currentlyVisibleCellPositions : Short_Integer_Array_Access_Array_Access;
      ALL_VISIBLE_TILEDLAYER : SimpleTiledLayer_Access;
      simpleTiledLayer : SimpleTiledLayer_Access;
      paintSimpleTiledLayer : SimpleTiledLayer_Access;
      currentIndex : Integer;
   end record;
   instance : VisibleCellPositionsSingleton_Access;

   procedure Initialize (This : in out VisibleCellPositionsSingleton'Class);
   function Create return VisibleCellPositionsSingleton_Access;
   function getInstance return VisibleCellPositionsSingleton_Access;
   procedure init (This : in out VisibleCellPositionsSingleton; simpleTiledLayer_Param : access SimpleTiledLayer_Package.SimpleTiledLayer'Class);
   procedure onEvent (This : in out VisibleCellPositionsSingleton; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onBuildingEvent (This : in out VisibleCellPositionsSingleton; event_Param : access RTSLayerEvent_Package.RTSLayerEvent'Class);
   procedure onMoveEvent (This : in out VisibleCellPositionsSingleton; scrollMapEvent_Param : access ScrollMapEvent_Package.ScrollMapEvent'Class);
   procedure addStationaryCellPositions (This : in out VisibleCellPositionsSingleton; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure removeStationaryCellPositions (This : in out VisibleCellPositionsSingleton; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure update (This : in out VisibleCellPositionsSingleton);
   function shouldProcess (This : in out VisibleCellPositionsSingleton) return Boolean;
   procedure addCellPositions (This : in out VisibleCellPositionsSingleton; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function isVisible (This : in out VisibleCellPositionsSingleton; cellPosition_Param : access CellPosition_Package.CellPosition'Class) return Boolean;
   procedure isVisible (This : in out VisibleCellPositionsSingleton; cellPosition_Param : access CellPosition_Package.CellPosition'Class);
   procedure move (This : in out VisibleCellPositionsSingleton; dx : Integer; dy : Integer);
   procedure paint (This : in out VisibleCellPositionsSingleton; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setSimpleTiledLayer (This : in out VisibleCellPositionsSingleton; simpleTiledLayer_Param : access SimpleTiledLayer_Package.SimpleTiledLayer'Class);
   function getSimpleTiledLayer (This : in out VisibleCellPositionsSingleton) return SimpleTiledLayer_Access;

end org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;


