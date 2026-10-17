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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package; use org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package; use org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package; use org.allbinary.game.combat.destroy.DestroyableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package; use org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package; use org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupCompositeInterface_Package; use org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.PartInterfaceUtil_Package; use org.allbinary.game.part.PartInterfaceUtil_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.layer.special.SpecialGameInputInterface_Package; use org.allbinary.game.layer.special.SpecialGameInputInterface_Package;

package org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package is

   package CollidableNeverCollideBehaviorFactory_Package renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
   package DamageableInterface_Package renames org.allbinary.game.combat.damage.DamageableInterface_Package;
   package DestroyableInterface_Package renames org.allbinary.game.combat.destroy.DestroyableInterface_Package;
   package DestroyedEvent_Package renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
   package BasicGroupFactory_Package renames org.allbinary.game.identification.BasicGroupFactory_Package;
   package Group_Package renames org.allbinary.game.identification.Group_Package;
   package GameKeyEvent_Package renames org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryGameLayerManager_Package renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package CollidableCompositeLayer_Package renames org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package PickedUpLayerInterfaceFactoryInterface_Package renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package PickupBehavior_Package renames org.allbinary.game.layer.pickup.PickupBehavior_Package;
   package PickupCompositeInterface_Package renames org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;
   package PartInterface_Package renames org.allbinary.game.part.PartInterface_Package;
   package PartInterfaceUtil_Package renames org.allbinary.game.part.PartInterfaceUtil_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package RectangleFactory_Package renames org.allbinary.graphics.RectangleFactory_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package PositionStrings_Package renames org.allbinary.math.PositionStrings_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package ViewPositionBase_Package renames org.allbinary.view.ViewPositionBase_Package;

   type CollidableDestroyableDamageableLayer is tagged;
   type CollidableDestroyableDamageableLayer_Access is access all CollidableDestroyableDamageableLayer'Class;
   type CollidableDestroyableDamageableLayer_Access_Array is array (Natural range <>) of CollidableDestroyableDamageableLayer_Access;
   type CollidableDestroyableDamageableLayer_Access_Array_Access is access all CollidableDestroyableDamageableLayer_Access_Array;

   type CollidableDestroyableDamageableLayer is new CollidableCompositeLayer and DestroyableInterface and DamageableInterface and PickupCompositeInterface and SpecialGameInputInterface with record
      groupInterface : Group_Access_Array_Access;
      readyForExplosion_Case : Boolean;
      initWidth : Integer;
      initHeight : Integer;
      initX : Integer;
      initY : Integer;
      initZ : Integer;
      partInterfaceArrayP : PartInterface_Access_Array_Access;
      pickupBehavior : PickupBehavior_Access;
      allBinaryGameLayerManagerP : AllBinaryGameLayerManager_Access;
      isDraggable : Boolean;
      isDragged : Boolean;
      isDropped : Boolean;
   end record;
   NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER : Java_Object_Access;
   READYFOREXPLOSION : Unbounded_String;

   procedure Initialize (This : in out CollidableDestroyableDamageableLayer'Class; groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access);
   function Create (groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access) return CollidableDestroyableDamageableLayer_Access;
   function getNullInstance return CollidableDestroyableDamageableLayer_Access;
   procedure getNullInstance;
   procedure initPosition (This : in out CollidableDestroyableDamageableLayer);
   procedure initPositionXYZ (This : in out CollidableDestroyableDamageableLayer; x : Integer; y : Integer; z : Integer);
   procedure paint (This : in out CollidableDestroyableDamageableLayer; graphics : Graphics_Access);
   procedure damage (This : in out CollidableDestroyableDamageableLayer; damage : Integer; damageType : Integer);
   function getDamage (This : in out CollidableDestroyableDamageableLayer; damageType : Integer) return Integer;
   procedure getDamage (This : in out CollidableDestroyableDamageableLayer; damageType : Integer);
   function isDestroyed (This : in out CollidableDestroyableDamageableLayer) return Boolean;
   procedure isDestroyed (This : in out CollidableDestroyableDamageableLayer);
   function getGroupInterface (This : in out CollidableDestroyableDamageableLayer) return Group_Access_Array_Access;
   procedure getGroupInterface (This : in out CollidableDestroyableDamageableLayer);
   procedure setGroupInterface (This : in out CollidableDestroyableDamageableLayer; teamInterface : Group_Access_Array_Access);
   procedure setAllBinaryGameLayerManager (This : in out CollidableDestroyableDamageableLayer; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   function isReadyForExplosion (This : in out CollidableDestroyableDamageableLayer) return Boolean;
   procedure isReadyForExplosion (This : in out CollidableDestroyableDamageableLayer);
   procedure setReadyForExplosion (This : in out CollidableDestroyableDamageableLayer; isReadyForExplosion : Boolean);
   function getInitWidth (This : in out CollidableDestroyableDamageableLayer) return Integer;
   procedure getInitWidth (This : in out CollidableDestroyableDamageableLayer);
   function getInitHeight (This : in out CollidableDestroyableDamageableLayer) return Integer;
   procedure getInitHeight (This : in out CollidableDestroyableDamageableLayer);
   function getInitX (This : in out CollidableDestroyableDamageableLayer) return Integer;
   procedure getInitX (This : in out CollidableDestroyableDamageableLayer);
   function getInitY (This : in out CollidableDestroyableDamageableLayer) return Integer;
   procedure getInitY (This : in out CollidableDestroyableDamageableLayer);
   procedure up (This : in out CollidableDestroyableDamageableLayer);
   procedure down (This : in out CollidableDestroyableDamageableLayer);
   procedure right (This : in out CollidableDestroyableDamageableLayer);
   procedure left (This : in out CollidableDestroyableDamageableLayer);
   procedure strafeLeft (This : in out CollidableDestroyableDamageableLayer);
   procedure strafeRight (This : in out CollidableDestroyableDamageableLayer);
   procedure fire (This : in out CollidableDestroyableDamageableLayer; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure special1 (This : in out CollidableDestroyableDamageableLayer; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure special2 (This : in out CollidableDestroyableDamageableLayer; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure special3 (This : in out CollidableDestroyableDamageableLayer; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure special4 (This : in out CollidableDestroyableDamageableLayer; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure special5 (This : in out CollidableDestroyableDamageableLayer; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure upAnalog (This : in out CollidableDestroyableDamageableLayer; yAnalogValue : Integer);
   procedure downAnalog (This : in out CollidableDestroyableDamageableLayer; yAnalogValue : Integer);
   procedure rightAnalog (This : in out CollidableDestroyableDamageableLayer; xAnalogValue : Integer);
   procedure leftAnalog (This : in out CollidableDestroyableDamageableLayer; xAnalogValue : Integer);
   procedure rightTrigger (This : in out CollidableDestroyableDamageableLayer; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access; xAnalogValue : Integer);
   procedure leftTrigger (This : in out CollidableDestroyableDamageableLayer; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access; xAnalogValue : Integer);
   procedure onDestroyed (This : in out CollidableDestroyableDamageableLayer; destroyedEvent : DestroyedEvent_Access);
   function getPickupBehavior (This : in out CollidableDestroyableDamageableLayer) return PickupBehavior_Access;
   procedure getPickupBehavior (This : in out CollidableDestroyableDamageableLayer);
   procedure setPickupBehavior (This : in out CollidableDestroyableDamageableLayer; pickupBehavior : PickupBehavior_Access);
   procedure addPart (This : in out CollidableDestroyableDamageableLayer; pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access);
   procedure setPartInterfaceArray (This : in out CollidableDestroyableDamageableLayer; partInterfaceArray : PartInterface_Access_Array_Access);
   function getPartInterfaceArray (This : in out CollidableDestroyableDamageableLayer) return PartInterface_Access_Array_Access;
   procedure getPartInterfaceArray (This : in out CollidableDestroyableDamageableLayer);
   procedure toStringAppend (This : in out CollidableDestroyableDamageableLayer; stringBuffer : StringMaker_Access);
   function toString (This : in out CollidableDestroyableDamageableLayer) return Unbounded_String;
   procedure toString (This : in out CollidableDestroyableDamageableLayer);

end org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;


