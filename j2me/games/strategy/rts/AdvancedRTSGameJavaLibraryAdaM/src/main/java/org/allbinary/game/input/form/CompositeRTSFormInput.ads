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

limited with org.allbinary.game.input.form.CompositeRTSFormInput_Package;
package org.allbinary.game.input.form.CompositeRTSFormInput_Package_References is
   type CompositeRTSFormInput_Access is access all org.allbinary.game.input.form.CompositeRTSFormInput_Package.CompositeRTSFormInput'Class;
   type CompositeRTSFormInput_Access_Array is array (Natural range <>) of CompositeRTSFormInput_Access;
   type CompositeRTSFormInput_Access_Array_Access is access all CompositeRTSFormInput_Access_Array;
   type CompositeRTSFormInput_Access_Array_Access_Array is array (Natural range <>) of CompositeRTSFormInput_Access_Array_Access;
   type CompositeRTSFormInput_Access_Array_Access_Array_Access is access all CompositeRTSFormInput_Access_Array_Access_Array;
end org.allbinary.game.input.form.CompositeRTSFormInput_Package_References;

with org.allbinary.game.input.form.CompositeRTSFormInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
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
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;

package org.allbinary.game.input.form.CompositeRTSFormInput_Package is

   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype CompositeRTSFormInput_Access is org.allbinary.game.input.form.CompositeRTSFormInput_Package_References.CompositeRTSFormInput_Access;
   function "=" (Left, Right : CompositeRTSFormInput_Access) return Boolean renames org.allbinary.game.input.form.CompositeRTSFormInput_Package_References."=";
   subtype CompositeRTSFormInput_Access_Array is org.allbinary.game.input.form.CompositeRTSFormInput_Package_References.CompositeRTSFormInput_Access_Array;
   function "=" (Left, Right : CompositeRTSFormInput_Access_Array) return Boolean renames org.allbinary.game.input.form.CompositeRTSFormInput_Package_References."=";
   subtype CompositeRTSFormInput_Access_Array_Access is org.allbinary.game.input.form.CompositeRTSFormInput_Package_References.CompositeRTSFormInput_Access_Array_Access;
   function "=" (Left, Right : CompositeRTSFormInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.CompositeRTSFormInput_Package_References."=";
   subtype CompositeRTSFormInput_Access_Array_Access_Array is org.allbinary.game.input.form.CompositeRTSFormInput_Package_References.CompositeRTSFormInput_Access_Array_Access_Array;
   function "=" (Left, Right : CompositeRTSFormInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.CompositeRTSFormInput_Package_References."=";
   subtype CompositeRTSFormInput_Access_Array_Access_Array_Access is org.allbinary.game.input.form.CompositeRTSFormInput_Package_References.CompositeRTSFormInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompositeRTSFormInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.CompositeRTSFormInput_Package_References."=";

   type CompositeRTSFormInput is new RTSFormInput with record
      rtsFormInputArray : RTSFormInput_Access_Array_Access;
      itemIndex : Integer_Array_Access;
      isPrimaryWaypointCreator : Boolean;
   end record;

   procedure Initialize (This : in out CompositeRTSFormInput'Class; groupInterface : Group_Access_Array_Access; isPrimaryWaypointCreator : Boolean; itemIndex : Integer_Array_Access);
   function Create (groupInterface : Group_Access_Array_Access; isPrimaryWaypointCreator : Boolean; itemIndex : Integer_Array_Access) return CompositeRTSFormInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out CompositeRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   procedure processAtPoint (This : in out CompositeRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class);
   procedure processGameSpecific (This : in out CompositeRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; index : Integer);
   function processSticky (This : in out CompositeRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class) return Boolean;
   procedure processSticky (This : in out CompositeRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class);
   procedure processStickyGameSpecific (This : in out CompositeRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; index : Integer);
   function getSelectedStickyItemIndex (This : in out CompositeRTSFormInput) return Integer;
   function isStickyItemSelected (This : in out CompositeRTSFormInput) return Boolean;
   procedure setStickyItemSelected (This : in out CompositeRTSFormInput; stickyItemSelected : Boolean);
   function getSelectedStickyItem (This : in out CompositeRTSFormInput) return ABCustomItem_Access;
   procedure setSelectedStickyItem (This : in out CompositeRTSFormInput; selectedStickyItem_Param : access ABCustomItem_Package.ABCustomItem'Class);

end org.allbinary.game.input.form.CompositeRTSFormInput_Package;


