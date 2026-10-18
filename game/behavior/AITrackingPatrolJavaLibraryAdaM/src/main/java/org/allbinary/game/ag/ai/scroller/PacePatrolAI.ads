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
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEventListenerInterface_Package; use org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package; use org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package;

package org.allbinary.game.ag.ai.scroller.PacePatrolAI_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package TrackingEvent_Package renames Standard.org.allbinary.game.tracking.TrackingEvent_Package;
   package TrackingEventListenerInterface_Package renames Standard.org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PacePatrolAI is tagged;
   type PacePatrolAI_Access is access all PacePatrolAI'Class;
   type PacePatrolAI_Access_Array is array (Natural range <>) of PacePatrolAI_Access;
   type PacePatrolAI_Access_Array_Access is access all PacePatrolAI_Access_Array;
   type PacePatrolAI_Access_Array_Access_Array is array (Natural range <>) of PacePatrolAI_Access_Array_Access;
   type PacePatrolAI_Access_Array_Access_Array_Access is access all PacePatrolAI_Access_Array_Access_Array;

   type PacePatrolAI is new BasePatrolAI and TrackingEventListenerInterface with record
      trackingList : BasicArrayList_Access;
      firingDistance : Integer;
      isFollowLimitedByTerrain : Boolean;
   end record;

   procedure Initialize (This : in out PacePatrolAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return PacePatrolAI_Access;
   procedure processAI (This : in out PacePatrolAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function setFiringDirectionForTargetIfInRange (This : in out PacePatrolAI) return Direction_Access;
   procedure disable (This : in out PacePatrolAI);
   procedure onEvent (This : in out PacePatrolAI; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onMovement (This : in out PacePatrolAI; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class);
   function getFiringDistance (This : in out PacePatrolAI) return Integer;
   procedure setFiringDistance (This : in out PacePatrolAI; firingDistance : Integer);

end org.allbinary.game.ag.ai.scroller.PacePatrolAI_Package;


