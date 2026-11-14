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

with AllBinary_Java;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
package org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References is
   type CollidableDestroyableDamageableLayer_Access is access all org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class;
   type CollidableDestroyableDamageableLayer_Access_Array is array (Natural range <>) of CollidableDestroyableDamageableLayer_Access;
   type CollidableDestroyableDamageableLayer_Access_Array_Access is access all CollidableDestroyableDamageableLayer_Access_Array;
   type CollidableDestroyableDamageableLayer_Access_Array_Access_Array is array (Natural range <>) of CollidableDestroyableDamageableLayer_Access_Array_Access;
   type CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is access all CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   type CollidableDestroyableDamageableLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableDestroyableDamageableLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableDestroyableDamageableLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableDestroyableDamageableLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableDestroyableDamageableLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableDestroyableDamageableLayer_Access_Array_Access is (if Value /= null and then Value.all in CollidableDestroyableDamageableLayer_Access_Array_Object'Class then CollidableDestroyableDamageableLayer_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableDestroyableDamageableLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Object'Class then CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;

with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.combat.damage.DamageableInterface_Package; use org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package; use org.allbinary.game.combat.destroy.DestroyableInterface_Package;
limited with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References;
limited with org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package_References;
with org.allbinary.game.layer.pickup.PickupCompositeInterface_Package; use org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;
limited with org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.PartInterface_Package_References;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.game.layer.special.SpecialGameInputInterface_Package; use org.allbinary.game.layer.special.SpecialGameInputInterface_Package;

package org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package DamageableInterface_Package renames Standard.org.allbinary.game.combat.damage.DamageableInterface_Package;
   package DestroyableInterface_Package renames Standard.org.allbinary.game.combat.destroy.DestroyableInterface_Package;
   package DestroyedEvent_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package PickupBehavior_Package renames Standard.org.allbinary.game.layer.pickup.PickupBehavior_Package;
   package PickupCompositeInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;
   package PartInterface_Package renames Standard.org.allbinary.game.part.PartInterface_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype DestroyedEvent_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access;
   use type DestroyedEvent_Access;
   subtype DestroyedEvent_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array;
   use type DestroyedEvent_Access_Array;
   subtype DestroyedEvent_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access;
   use type DestroyedEvent_Access_Array_Access;
   subtype DestroyedEvent_Access_Array_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array;
   use type DestroyedEvent_Access_Array_Access_Array;
   subtype DestroyedEvent_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array_Access;
   use type DestroyedEvent_Access_Array_Access_Array_Access;
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
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   use type GameKeyEvent_Access;
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   use type GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   use type GameKeyEvent_Access_Array_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access_Array_Access;
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
   subtype PickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype PickupBehavior_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access;
   use type PickupBehavior_Access;
   subtype PickupBehavior_Access_Array is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array;
   use type PickupBehavior_Access_Array;
   subtype PickupBehavior_Access_Array_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access;
   use type PickupBehavior_Access_Array_Access;
   subtype PickupBehavior_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access_Array;
   use type PickupBehavior_Access_Array_Access_Array;
   subtype PickupBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access_Array_Access;
   use type PickupBehavior_Access_Array_Access_Array_Access;
   subtype PartInterface_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access;
   use type PartInterface_Access;
   subtype PartInterface_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array;
   use type PartInterface_Access_Array;
   subtype PartInterface_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access;
   use type PartInterface_Access_Array_Access;
   subtype PartInterface_Access_Array_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array;
   use type PartInterface_Access_Array_Access_Array;
   subtype PartInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array_Access;
   use type PartInterface_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
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
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   use type ViewPositionBase_Access;
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   use type ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   use type ViewPositionBase_Access_Array_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   function Java_Box (Value : CollidableDestroyableDamageableLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.Java_Box;
   function Java_Unbox_CollidableDestroyableDamageableLayer_Access_Array (Value : access Java_Object'Class) return CollidableDestroyableDamageableLayer_Access_Array_Access renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.Java_Unbox_CollidableDestroyableDamageableLayer_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   function Java_Box (Value : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.Java_Box;
   function Java_Unbox_CollidableDestroyableDamageableLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.Java_Unbox_CollidableDestroyableDamageableLayer_Access_Array_Access_Array;

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

   procedure Initialize (This : in out CollidableDestroyableDamageableLayer'Class; groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return CollidableDestroyableDamageableLayer_Access;
   function getNullInstance return CollidableDestroyableDamageableLayer_Access;
   procedure initPosition (This : in out CollidableDestroyableDamageableLayer);
   procedure initPositionXYZ (This : in out CollidableDestroyableDamageableLayer; x : Integer; y : Integer; z : Integer);
   procedure paint (This : in out CollidableDestroyableDamageableLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure damage (This : in out CollidableDestroyableDamageableLayer; damage : Integer; damageType : Integer);
   function getDamage (This : in out CollidableDestroyableDamageableLayer; damageType : Integer) return Integer;
   procedure getDamage (This : in out CollidableDestroyableDamageableLayer; damageType : Integer);
   function isDestroyed (This : in out CollidableDestroyableDamageableLayer) return Boolean;
   function getGroupInterface (This : in out CollidableDestroyableDamageableLayer) return Group_Access_Array_Access;
   procedure setGroupInterface (This : in out CollidableDestroyableDamageableLayer; teamInterface : Group_Access_Array_Access);
   procedure setAllBinaryGameLayerManager (This : in out CollidableDestroyableDamageableLayer; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   function isReadyForExplosion (This : in out CollidableDestroyableDamageableLayer) return Boolean;
   procedure setReadyForExplosion (This : in out CollidableDestroyableDamageableLayer; isReadyForExplosion : Boolean);
   function getInitWidth (This : in out CollidableDestroyableDamageableLayer) return Integer;
   function getInitHeight (This : in out CollidableDestroyableDamageableLayer) return Integer;
   function getInitX (This : in out CollidableDestroyableDamageableLayer) return Integer;
   function getInitY (This : in out CollidableDestroyableDamageableLayer) return Integer;
   procedure up (This : in out CollidableDestroyableDamageableLayer);
   procedure down (This : in out CollidableDestroyableDamageableLayer);
   procedure right (This : in out CollidableDestroyableDamageableLayer);
   procedure left (This : in out CollidableDestroyableDamageableLayer);
   procedure strafeLeft (This : in out CollidableDestroyableDamageableLayer);
   procedure strafeRight (This : in out CollidableDestroyableDamageableLayer);
   procedure fire (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure special1 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure special2 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure special3 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure special4 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure special5 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure upAnalog (This : in out CollidableDestroyableDamageableLayer; yAnalogValue : Integer);
   procedure downAnalog (This : in out CollidableDestroyableDamageableLayer; yAnalogValue : Integer);
   procedure rightAnalog (This : in out CollidableDestroyableDamageableLayer; xAnalogValue : Integer);
   procedure leftAnalog (This : in out CollidableDestroyableDamageableLayer; xAnalogValue : Integer);
   procedure rightTrigger (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class; xAnalogValue : Integer);
   procedure leftTrigger (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class; xAnalogValue : Integer);
   procedure onDestroyed (This : in out CollidableDestroyableDamageableLayer; destroyedEvent_Param : access DestroyedEvent_Package.DestroyedEvent'Class);
   function getPickupBehavior (This : in out CollidableDestroyableDamageableLayer) return PickupBehavior_Access;
   procedure setPickupBehavior (This : in out CollidableDestroyableDamageableLayer; pickupBehavior_Param : access PickupBehavior_Package.PickupBehavior'Class);
   procedure addPart (This : in out CollidableDestroyableDamageableLayer; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class);
   procedure setPartInterfaceArray (This : in out CollidableDestroyableDamageableLayer; partInterfaceArray : PartInterface_Access_Array_Access);
   function getPartInterfaceArray (This : in out CollidableDestroyableDamageableLayer) return PartInterface_Access_Array_Access;
   procedure toStringAppend (This : in out CollidableDestroyableDamageableLayer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);
   function toString (This : in out CollidableDestroyableDamageableLayer) return Unbounded_String;

end org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;


