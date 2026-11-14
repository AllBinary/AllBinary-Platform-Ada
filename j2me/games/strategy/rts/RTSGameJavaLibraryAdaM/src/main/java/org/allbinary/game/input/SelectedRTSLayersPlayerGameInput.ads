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

with AllBinary_Java;
limited with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;
package org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References is
   type SelectedRTSLayersPlayerGameInput_Access is access all org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class;
   type SelectedRTSLayersPlayerGameInput_Access_Array is array (Natural range <>) of SelectedRTSLayersPlayerGameInput_Access;
   type SelectedRTSLayersPlayerGameInput_Access_Array_Access is access all SelectedRTSLayersPlayerGameInput_Access_Array;
   type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array is array (Natural range <>) of SelectedRTSLayersPlayerGameInput_Access_Array_Access;
   type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access is access all SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array;
   type SelectedRTSLayersPlayerGameInput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectedRTSLayersPlayerGameInput_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectedRTSLayersPlayerGameInput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectedRTSLayersPlayerGameInput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectedRTSLayersPlayerGameInput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectedRTSLayersPlayerGameInput_Access_Array_Access is (if Value /= null and then Value.all in SelectedRTSLayersPlayerGameInput_Access_Array_Object'Class then SelectedRTSLayersPlayerGameInput_Access_Array_Object'Class (Value.all).Value else null);
   type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Object'Class then SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References;

with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
limited with org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
with org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References;
limited with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
limited with org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package_References;
limited with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;
with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References;

package org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSLayerInfoPaintable_Package renames Standard.org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   use type RTSLayer_Access;
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   use type RTSLayer_Access_Array;
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   use type RTSLayer_Access_Array_Access;
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   use type RTSLayer_Access_Array_Access_Array;
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   use type RTSLayer_Access_Array_Access_Array_Access;
   subtype RTSLayerInfoPaintable_Access is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access;
   use type RTSLayerInfoPaintable_Access;
   subtype RTSLayerInfoPaintable_Access_Array is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array;
   use type RTSLayerInfoPaintable_Access_Array;
   subtype RTSLayerInfoPaintable_Access_Array_Access is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array_Access;
   use type RTSLayerInfoPaintable_Access_Array_Access;
   subtype RTSLayerInfoPaintable_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array_Access_Array;
   use type RTSLayerInfoPaintable_Access_Array_Access_Array;
   subtype RTSLayerInfoPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array_Access_Array_Access;
   use type RTSLayerInfoPaintable_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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
   subtype GameNotificationEvent_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access;
   use type GameNotificationEvent_Access;
   subtype GameNotificationEvent_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array;
   use type GameNotificationEvent_Access_Array;
   subtype GameNotificationEvent_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access;
   use type GameNotificationEvent_Access_Array_Access;
   subtype GameNotificationEvent_Access_Array_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array;
   use type GameNotificationEvent_Access_Array_Access_Array;
   subtype GameNotificationEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array_Access;
   use type GameNotificationEvent_Access_Array_Access_Array_Access;
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
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   use type Visitor_Access;
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   use type Visitor_Access_Array;
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   use type Visitor_Access_Array_Access;
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   use type Visitor_Access_Array_Access_Array;
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   use type Visitor_Access_Array_Access_Array_Access;
   subtype GameInputProcessor_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access;
   use type GameInputProcessor_Access;
   subtype GameInputProcessor_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array;
   use type GameInputProcessor_Access_Array;
   subtype GameInputProcessor_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access;
   use type GameInputProcessor_Access_Array_Access;
   subtype GameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array;
   use type GameInputProcessor_Access_Array_Access_Array;
   subtype GameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array_Access;
   use type GameInputProcessor_Access_Array_Access_Array_Access;
   subtype SelectRTSLayerVisitorFactoryInterface_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access;
   use type SelectRTSLayerVisitorFactoryInterface_Access;
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array;
   use type SelectRTSLayerVisitorFactoryInterface_Access_Array;
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array_Access;
   use type SelectRTSLayerVisitorFactoryInterface_Access_Array_Access;
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array;
   use type SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array;
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array_Access;
   use type SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SelectedRTSLayersPlayerGameInput_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access;
   function "=" (Left, Right : SelectedRTSLayersPlayerGameInput_Access) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References."=";
   subtype SelectedRTSLayersPlayerGameInput_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array;
   function "=" (Left, Right : SelectedRTSLayersPlayerGameInput_Access_Array) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References."=";
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access;
   function "=" (Left, Right : SelectedRTSLayersPlayerGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References."=";
   function Java_Box (Value : SelectedRTSLayersPlayerGameInput_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.Java_Box;
   function Java_Unbox_SelectedRTSLayersPlayerGameInput_Access_Array (Value : access Java_Object'Class) return SelectedRTSLayersPlayerGameInput_Access_Array_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.Java_Unbox_SelectedRTSLayersPlayerGameInput_Access_Array;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References."=";
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References."=";
   function Java_Box (Value : SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.Java_Box;
   function Java_Unbox_SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array (Value : access Java_Object'Class) return SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.Java_Unbox_SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array;

   type SelectedRTSLayersPlayerGameInput is new PlayerGameInput with record
      inputProcessorArray : GameInputProcessor_Access_Array_Access;
      list : BasicArrayList_Access;
      isSingleKeyProcessing : Boolean;
      selectedRTSLayersList : BasicArrayList_Access;
      preSelectedRTSLayersList : BasicArrayList_Access;
      paintSelectedRTSLayersList : BasicArrayList_Access;
      rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access;
      selectRTSLayerVisitorInterface : Visitor_Access;
      upgradeGameNotificationEvent : GameNotificationEvent_Access;
      noMoneyGameNotificationEvent : GameNotificationEvent_Access;
      downgradeGameNotificationEvent : GameNotificationEvent_Access;
   end record;

   procedure Initialize (This : in out SelectedRTSLayersPlayerGameInput'Class; towerInfoPaintable_Param : access RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; selectRTSLayerVisitorFactoryInterface_Param : access SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class);
   function Create (towerInfoPaintable_Param : access RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; selectRTSLayerVisitorFactoryInterface_Param : access SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class) return SelectedRTSLayersPlayerGameInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out SelectedRTSLayersPlayerGameInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   function isSelected (This : in out SelectedRTSLayersPlayerGameInput; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return Boolean;
   procedure isSelected (This : in out SelectedRTSLayersPlayerGameInput; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure upgrade (This : in out SelectedRTSLayersPlayerGameInput);
   procedure downgrade (This : in out SelectedRTSLayersPlayerGameInput);
   procedure initInputProcessors (This : in out SelectedRTSLayersPlayerGameInput);
   procedure processInputKey (This : in out SelectedRTSLayersPlayerGameInput; key : Integer);
   procedure processInput (This : in out SelectedRTSLayersPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function getSelectedBasicArrayList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access;
   procedure addSelectedRTSLayer (This : in out SelectedRTSLayersPlayerGameInput; selectedLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure setSelectedRTSLayer (This : in out SelectedRTSLayersPlayerGameInput; selectedLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   function getLastSelectedRtsLayer (This : in out SelectedRTSLayersPlayerGameInput) return CollidableDestroyableDamageableLayer_Access;
   procedure selectAllPreselected (This : in out SelectedRTSLayersPlayerGameInput);
   procedure deselectAllPreselected (This : in out SelectedRTSLayersPlayerGameInput);
   procedure deselectAll (This : in out SelectedRTSLayersPlayerGameInput);
   function isAnyRTSLayerSelected (This : in out SelectedRTSLayersPlayerGameInput) return Boolean;
   function getPaintSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access;
   function getPreSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access;

end org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;


