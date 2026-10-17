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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;

package org.allbinary.game.tracking.TrackingEvent_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type TrackingEvent is tagged;
   type TrackingEvent_Access is access all TrackingEvent'Class;
   type TrackingEvent_Access_Array is array (Natural range <>) of TrackingEvent_Access;
   type TrackingEvent_Access_Array_Access is access all TrackingEvent_Access_Array;

   type TrackingEvent is new AllBinaryEventObject with record
      layerInterface : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out TrackingEvent'Class; allBinaryLayerInterface_Param : access Java_Object'Class);
   function Create (allBinaryLayerInterface_Param : access Java_Object'Class) return TrackingEvent_Access;
   procedure init (This : in out TrackingEvent; anyType_Param : access Java_Object'Class);
   function getLayerInterface (This : in out TrackingEvent) return AllBinaryLayer_Access;
   procedure setLayerInterface (This : in out TrackingEvent; layerInterface_Param : access AllBinaryLayer'Class);
   procedure setLayerInterfaceForCircularStaticPool (This : in out TrackingEvent; layerInterface_Param : access AllBinaryLayer'Class);
   function toString (This : in out TrackingEvent) return Unbounded_String;

end org.allbinary.game.tracking.TrackingEvent_Package;


