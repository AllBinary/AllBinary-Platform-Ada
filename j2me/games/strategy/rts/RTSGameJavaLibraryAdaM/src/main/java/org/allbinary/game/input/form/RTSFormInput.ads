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
with org.allbinary.game.identification.GroupCommonFactory_Package; use org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package; use org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package; use org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.input.form.RTSFormInput_Package is

   package GroupCommonFactory_Package renames Standard.org.allbinary.game.identification.GroupCommonFactory_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package LayerInterfaceFactoryImageItem_Package renames Standard.org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type RTSFormInput is tagged;
   type RTSFormInput_Access is access all RTSFormInput'Class;
   type RTSFormInput_Access_Array is array (Natural range <>) of RTSFormInput_Access;
   type RTSFormInput_Access_Array_Access is access all RTSFormInput_Access_Array;

   type RTSFormInput is new Java_Object with record
      logUtil : LogUtil_Access;
      groupCommonFactory : GroupCommonFactory_Access;
      hashtable : ABHashtable_Access;
      newUnconstructedRTSLayerInterfaceArray : CollidableDestroyableDamageableLayer_Access_Array_Access;
      groupInterfaceArray : Group_Access_Array_Access;
      selectedGeographicCellPosition : GeographicMapCellPosition_Access;
      stickyItemSelected : Boolean;
      selectedStickyItemIndex : Integer;
      selectedStickyItem : ABCustomItem_Access;
   end record;

   procedure Initialize (This : in out RTSFormInput'Class; groupInterfaceArray : Group_Access_Array_Access);
   function Create (groupInterfaceArray : Group_Access_Array_Access) return RTSFormInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out RTSFormInput; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   procedure processAtPoint (This : in out RTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; point : GPoint_Access);
   procedure process (This : in out RTSFormInput; layerManager : AllBinaryLayerManager_Access);
   procedure processGameSpecific (This : in out RTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; item : ABCustomItem_Access; index : Integer);
   function processSticky (This : in out RTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; point : GPoint_Access) return Boolean;
   procedure processSticky (This : in out RTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; point : GPoint_Access);
   procedure processStickyGameSpecific (This : in out RTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; item : ABCustomItem_Access; index : Integer);
   function getItemAt (This : in out RTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; point : GPoint_Access) return ABCustomItem_Access;
   procedure getItemAt (This : in out RTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; point : GPoint_Access);
   function getIndexAt (This : in out RTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; point : GPoint_Access) return Integer;
   procedure getIndexAt (This : in out RTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; point : GPoint_Access);
   function getInstance (This : in out RTSFormInput; layerManager : AllBinaryLayerManager_Access; aItem : ABCustomItem_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return CollidableDestroyableDamageableLayer_Access;
   procedure getInstance (This : in out RTSFormInput; layerManager : AllBinaryLayerManager_Access; aItem : ABCustomItem_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function getSelectedGeographicCellPosition (This : in out RTSFormInput) return GeographicMapCellPosition_Access;
   procedure getSelectedGeographicCellPosition (This : in out RTSFormInput);
   procedure setSelectedGeographicCellPosition (This : in out RTSFormInput; selectedGeographicCellPosition : GeographicMapCellPosition_Access);
   function isStickyItemSelected (This : in out RTSFormInput) return Boolean;
   procedure isStickyItemSelected (This : in out RTSFormInput);
   procedure setStickyItemSelected (This : in out RTSFormInput; stickyItemSelected : Boolean);
   function getSelectedStickyItem (This : in out RTSFormInput) return ABCustomItem_Access;
   procedure getSelectedStickyItem (This : in out RTSFormInput);
   procedure setSelectedStickyItem (This : in out RTSFormInput; selectedStickyItem : ABCustomItem_Access);
   function getSelectedStickyItemIndex (This : in out RTSFormInput) return Integer;
   procedure getSelectedStickyItemIndex (This : in out RTSFormInput);
   procedure setSelectedStickyItemIndex (This : in out RTSFormInput; selectedStickyItemIndex : Integer);
   function getHashtable (This : in out RTSFormInput) return ABHashtable_Access;
   procedure getHashtable (This : in out RTSFormInput);

end org.allbinary.game.input.form.RTSFormInput_Package;


