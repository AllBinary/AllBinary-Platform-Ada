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

limited with org.allbinary.game.tracking.TrackingEventListenerInterface_Package;
package org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References is
   type TrackingEventListenerInterface_Access is access all org.allbinary.game.tracking.TrackingEventListenerInterface_Package.TrackingEventListenerInterface'Class;
   type TrackingEventListenerInterface_Access_Array is array (Natural range <>) of TrackingEventListenerInterface_Access;
   type TrackingEventListenerInterface_Access_Array_Access is access all TrackingEventListenerInterface_Access_Array;
   type TrackingEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of TrackingEventListenerInterface_Access_Array_Access;
   type TrackingEventListenerInterface_Access_Array_Access_Array_Access is access all TrackingEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References;

with org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEvent_Package_References;

package org.allbinary.game.tracking.TrackingEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype TrackingEvent_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access;
   use type TrackingEvent_Access;
   subtype TrackingEvent_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array;
   use type TrackingEvent_Access_Array;
   subtype TrackingEvent_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access;
   use type TrackingEvent_Access_Array_Access;
   subtype TrackingEvent_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array;
   use type TrackingEvent_Access_Array_Access_Array;
   subtype TrackingEvent_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array_Access;
   use type TrackingEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TrackingEventListenerInterface is interface and EventListenerInterface;
   subtype TrackingEventListenerInterface_Access is org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References.TrackingEventListenerInterface_Access;
   function "=" (Left, Right : TrackingEventListenerInterface_Access) return Boolean renames org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References."=";
   subtype TrackingEventListenerInterface_Access_Array is org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References.TrackingEventListenerInterface_Access_Array;
   function "=" (Left, Right : TrackingEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References."=";
   subtype TrackingEventListenerInterface_Access_Array_Access is org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References.TrackingEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : TrackingEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References."=";
   subtype TrackingEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References.TrackingEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TrackingEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References."=";
   subtype TrackingEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References.TrackingEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackingEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_TrackingEventListenerInterface (Value : TrackingEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onMovement (This : in out TrackingEventListenerInterface; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class) is abstract;

end org.allbinary.game.tracking.TrackingEventListenerInterface_Package;


