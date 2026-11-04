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

limited with org.allbinary.game.input.form.RTSFormInput_Package;
package org.allbinary.game.input.form.RTSFormInput_Package_References is
   type RTSFormInput_Access is access all org.allbinary.game.input.form.RTSFormInput_Package.RTSFormInput'Class;
   type RTSFormInput_Access_Array is array (Natural range <>) of RTSFormInput_Access;
   type RTSFormInput_Access_Array_Access is access all RTSFormInput_Access_Array;
   type RTSFormInput_Access_Array_Access_Array is array (Natural range <>) of RTSFormInput_Access_Array_Access;
   type RTSFormInput_Access_Array_Access_Array_Access is access all RTSFormInput_Access_Array_Access_Array;
end org.allbinary.game.input.form.RTSFormInput_Package_References;

with org.allbinary.game.input.form.RTSFormInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.identification.GroupCommonFactory_Package_References;
limited with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.input.form.RTSFormInput_Package is

   package GroupCommonFactory_Package renames Standard.org.allbinary.game.identification.GroupCommonFactory_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype GroupCommonFactory_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access;
   use type GroupCommonFactory_Access;
   subtype GroupCommonFactory_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array;
   use type GroupCommonFactory_Access_Array;
   subtype GroupCommonFactory_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access;
   use type GroupCommonFactory_Access_Array_Access;
   subtype GroupCommonFactory_Access_Array_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array;
   use type GroupCommonFactory_Access_Array_Access_Array;
   subtype GroupCommonFactory_Access_Array_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array_Access;
   use type GroupCommonFactory_Access_Array_Access_Array_Access;
   subtype RTSPlayerLayerInterface_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access;
   use type RTSPlayerLayerInterface_Access;
   subtype RTSPlayerLayerInterface_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array;
   use type RTSPlayerLayerInterface_Access_Array;
   subtype RTSPlayerLayerInterface_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access;
   use type RTSPlayerLayerInterface_Access_Array_Access;
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array;
   use type RTSPlayerLayerInterface_Access_Array_Access_Array;
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   use type RTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   use type ABCustomItem_Access;
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   use type ABCustomItem_Access_Array;
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access;
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   use type ABCustomItem_Access_Array_Access_Array;
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access_Array_Access;
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
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   use type CollidableDestroyableDamageableLayer_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RTSFormInput_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access;
   function "=" (Left, Right : RTSFormInput_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array;
   function "=" (Left, Right : RTSFormInput_Access_Array) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";

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
   procedure setAllBinaryGameLayerManager (This : in out RTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   procedure processAtPoint (This : in out RTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class);
   procedure process (This : in out RTSFormInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure processGameSpecific (This : in out RTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; index : Integer);
   function processSticky (This : in out RTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class) return Boolean;
   procedure processSticky (This : in out RTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class);
   procedure processStickyGameSpecific (This : in out RTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; index : Integer);
   function getItemAt (This : in out RTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; point_Param : access GPoint_Package.GPoint'Class) return ABCustomItem_Access;
   procedure getItemAt (This : in out RTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; point_Param : access GPoint_Package.GPoint'Class);
   function getIndexAt (This : in out RTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; point_Param : access GPoint_Package.GPoint'Class) return Integer;
   procedure getIndexAt (This : in out RTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; point_Param : access GPoint_Package.GPoint'Class);
   function getInstance (This : in out RTSFormInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; aItem_Param : access ABCustomItem_Package.ABCustomItem'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return CollidableDestroyableDamageableLayer_Access;
   procedure getInstance (This : in out RTSFormInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; aItem_Param : access ABCustomItem_Package.ABCustomItem'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getSelectedGeographicCellPosition (This : in out RTSFormInput) return GeographicMapCellPosition_Access;
   procedure setSelectedGeographicCellPosition (This : in out RTSFormInput; selectedGeographicCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function isStickyItemSelected (This : in out RTSFormInput) return Boolean;
   procedure setStickyItemSelected (This : in out RTSFormInput; stickyItemSelected : Boolean);
   function getSelectedStickyItem (This : in out RTSFormInput) return ABCustomItem_Access;
   procedure setSelectedStickyItem (This : in out RTSFormInput; selectedStickyItem_Param : access ABCustomItem_Package.ABCustomItem'Class);
   function getSelectedStickyItemIndex (This : in out RTSFormInput) return Integer;
   procedure setSelectedStickyItemIndex (This : in out RTSFormInput; selectedStickyItemIndex : Integer);
   function getHashtable (This : in out RTSFormInput) return ABHashtable_Access;

end org.allbinary.game.input.form.RTSFormInput_Package;


