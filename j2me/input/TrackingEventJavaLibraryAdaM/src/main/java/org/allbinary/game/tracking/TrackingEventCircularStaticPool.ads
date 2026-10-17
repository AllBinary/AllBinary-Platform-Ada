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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package; use org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;

package org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package is

   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryEventCircularPool_Package renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;

   type TrackingEventCircularStaticPool is tagged;
   type TrackingEventCircularStaticPool_Access is access all TrackingEventCircularStaticPool'Class;
   type TrackingEventCircularStaticPool_Access_Array is array (Natural range <>) of TrackingEventCircularStaticPool_Access;
   type TrackingEventCircularStaticPool_Access_Array_Access is access all TrackingEventCircularStaticPool_Access_Array;

   type TrackingEventCircularStaticPool is new Java_Object with record
      EVENT_POOL : AllBinaryEventCircularPool_Access;
   end record;
   instance : TrackingEventCircularStaticPool_Access;

   procedure Initialize (This : in out TrackingEventCircularStaticPool'Class);
   function Create return TrackingEventCircularStaticPool_Access;
   function getInstance return TrackingEventCircularStaticPool_Access;
   procedure getInstance;
   procedure init (This : in out TrackingEventCircularStaticPool);
   function getNextInstance (This : in out TrackingEventCircularStaticPool; layerInterface : AllBinaryLayer_Access) return TrackingEvent_Access;
   procedure getNextInstance (This : in out TrackingEventCircularStaticPool; layerInterface : AllBinaryLayer_Access);

end org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package;


