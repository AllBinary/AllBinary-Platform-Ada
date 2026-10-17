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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package; use org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.direction.DirectionalCompositeInterface_Package; use org.allbinary.direction.DirectionalCompositeInterface_Package;
with org.allbinary.direction.DirectionalInterface_Package; use org.allbinary.direction.DirectionalInterface_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package; use org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.game.tracking.TrackingEventListenerInterface_Package; use org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package DirectionalCompositeInterface_Package renames Standard.org.allbinary.direction.DirectionalCompositeInterface_Package;
   package DirectionalInterface_Package renames Standard.org.allbinary.direction.DirectionalInterface_Package;
   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package DestroyedEvent_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
   package DestroyedEventHandler_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
   package DestroyedEventListenerInterface_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package VelocityInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
   package TrackingEvent_Package renames Standard.org.allbinary.game.tracking.TrackingEvent_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package TrackingEventListenerInterface_Package renames Standard.org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type DiveAndDirectionalTrackingAI is tagged;
   type DiveAndDirectionalTrackingAI_Access is access all DiveAndDirectionalTrackingAI'Class;
   type DiveAndDirectionalTrackingAI_Access_Array is array (Natural range <>) of DiveAndDirectionalTrackingAI_Access;
   type DiveAndDirectionalTrackingAI_Access_Array_Access is access all DiveAndDirectionalTrackingAI_Access_Array;

   type DiveAndDirectionalTrackingAI is new BasicAI and TrackingEventListenerInterface and DestroyedEventListenerInterface with record
      mathUtil : MathUtil_Access;
      directionFactory : DirectionFactory_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      list : BasicArrayList_Access;
      directionalInterface : DirectionalInterface_Access;
      velocityInterface : BasicVelocityProperties_Access;
      directionToKeyMap : Integer_Array_Access;
      initialDropped : Boolean;
      diveP : Boolean;
      directionOfTarget : Direction_Access;
      MIN_DISTANCE : Integer;
      lastTrackingLayerInterface : AllBinaryLayer_Access;
      artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access;
      aiVistor : Visitor_Access;
      lastDirection : Direction_Access;
   end record;

   procedure Initialize (This : in out DiveAndDirectionalTrackingAI'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; artificialIntelligenceInterface_Param : access ArtificialIntelligenceInterface'Class; gameInput_Param : access GameInput'Class; visitor_Param : access Visitor'Class);
   function Create (ownerLayerInterface_Param : access AllBinaryLayer'Class; artificialIntelligenceInterface_Param : access ArtificialIntelligenceInterface'Class; gameInput_Param : access GameInput'Class; visitor_Param : access Visitor'Class) return DiveAndDirectionalTrackingAI_Access;
   procedure processAI (This : in out DiveAndDirectionalTrackingAI; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class);
   procedure init (This : in out DiveAndDirectionalTrackingAI);
   procedure target (This : in out DiveAndDirectionalTrackingAI; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class);
   procedure verticalTargeting (This : in out DiveAndDirectionalTrackingAI; x : Integer);
   procedure horizontalTargeting (This : in out DiveAndDirectionalTrackingAI; y : Integer);
   procedure setDive (This : in out DiveAndDirectionalTrackingAI);
   procedure moveRight (This : in out DiveAndDirectionalTrackingAI);
   procedure moveLeft (This : in out DiveAndDirectionalTrackingAI);
   procedure moveDown (This : in out DiveAndDirectionalTrackingAI);
   procedure moveUp (This : in out DiveAndDirectionalTrackingAI);
   procedure dive (This : in out DiveAndDirectionalTrackingAI);
   procedure attack (This : in out DiveAndDirectionalTrackingAI);
   procedure drop (This : in out DiveAndDirectionalTrackingAI);
   function isBeyondTarget (This : in out DiveAndDirectionalTrackingAI) return Boolean;
   procedure onEvent (This : in out DiveAndDirectionalTrackingAI; eventObject_Param : access AllBinaryEventObject'Class);
   procedure onMovement (This : in out DiveAndDirectionalTrackingAI; trackingEvent_Param : access TrackingEvent'Class);
   procedure onDestroyed (This : in out DiveAndDirectionalTrackingAI; destroyedEvent_Param : access DestroyedEvent'Class);
   procedure setLastDirection (This : in out DiveAndDirectionalTrackingAI; lastDirection_Param : access Direction'Class);
   procedure setLastKey (This : in out DiveAndDirectionalTrackingAI; lastKey : Integer);
   function getLastDirection (This : in out DiveAndDirectionalTrackingAI) return Direction_Access;
   function toString (This : in out DiveAndDirectionalTrackingAI) return Unbounded_String;

end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package;


