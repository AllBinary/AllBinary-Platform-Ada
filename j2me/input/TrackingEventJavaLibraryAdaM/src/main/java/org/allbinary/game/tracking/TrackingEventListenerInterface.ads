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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;

package org.allbinary.game.tracking.TrackingEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type TrackingEventListenerInterface is interface and EventListenerInterface;
   type TrackingEventListenerInterface_Access is access all TrackingEventListenerInterface'Class;
   type TrackingEventListenerInterface_Access_Array is array (Natural range <>) of TrackingEventListenerInterface_Access;
   type TrackingEventListenerInterface_Access_Array_Access is access all TrackingEventListenerInterface_Access_Array;
   procedure onMovement (This : in out TrackingEventListenerInterface; trackingEvent_Param : access TrackingEvent'Class) is abstract;

end org.allbinary.game.tracking.TrackingEventListenerInterface_Package;


