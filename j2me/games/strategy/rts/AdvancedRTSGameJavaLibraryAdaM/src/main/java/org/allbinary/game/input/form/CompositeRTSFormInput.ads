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
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;

package org.allbinary.game.input.form.CompositeRTSFormInput_Package is

   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type CompositeRTSFormInput is tagged;
   type CompositeRTSFormInput_Access is access all CompositeRTSFormInput'Class;
   type CompositeRTSFormInput_Access_Array is array (Natural range <>) of CompositeRTSFormInput_Access;
   type CompositeRTSFormInput_Access_Array_Access is access all CompositeRTSFormInput_Access_Array;

   type CompositeRTSFormInput is new RTSFormInput with record
      rtsFormInputArray : RTSFormInput_Access_Array_Access;
      itemIndex : Integer_Array_Access;
      isPrimaryWaypointCreator : Boolean;
   end record;

   procedure Initialize (This : in out CompositeRTSFormInput'Class; groupInterface : Group_Access_Array_Access; isPrimaryWaypointCreator : Boolean; itemIndex : Integer_Array_Access);
   function Create (groupInterface : Group_Access_Array_Access; isPrimaryWaypointCreator : Boolean; itemIndex : Integer_Array_Access) return CompositeRTSFormInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out CompositeRTSFormInput; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   procedure processAtPoint (This : in out CompositeRTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; point : GPoint_Access);
   procedure processGameSpecific (This : in out CompositeRTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; item : ABCustomItem_Access; index : Integer);
   function processSticky (This : in out CompositeRTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; point : GPoint_Access) return Boolean;
   procedure processSticky (This : in out CompositeRTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; point : GPoint_Access);
   procedure processStickyGameSpecific (This : in out CompositeRTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; item : ABCustomItem_Access; index : Integer);
   function getSelectedStickyItemIndex (This : in out CompositeRTSFormInput) return Integer;
   procedure getSelectedStickyItemIndex (This : in out CompositeRTSFormInput);
   function isStickyItemSelected (This : in out CompositeRTSFormInput) return Boolean;
   procedure isStickyItemSelected (This : in out CompositeRTSFormInput);
   procedure setStickyItemSelected (This : in out CompositeRTSFormInput; stickyItemSelected : Boolean);
   function getSelectedStickyItem (This : in out CompositeRTSFormInput) return ABCustomItem_Access;
   procedure getSelectedStickyItem (This : in out CompositeRTSFormInput);
   procedure setSelectedStickyItem (This : in out CompositeRTSFormInput; selectedStickyItem : ABCustomItem_Access);

end org.allbinary.game.input.form.CompositeRTSFormInput_Package;


