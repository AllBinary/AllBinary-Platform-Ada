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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package is

   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type ScrolledMotionGesturesHandler is tagged;
   type ScrolledMotionGesturesHandler_Access is access all ScrolledMotionGesturesHandler'Class;
   type ScrolledMotionGesturesHandler_Access_Array is array (Natural range <>) of ScrolledMotionGesturesHandler_Access;
   type ScrolledMotionGesturesHandler_Access_Array_Access is access all ScrolledMotionGesturesHandler_Access_Array;

   type ScrolledMotionGesturesHandler is new BasicEventHandler with null record;
   SINGLETON : ScrolledMotionGesturesHandler_Access;

   procedure Initialize (This : in out ScrolledMotionGesturesHandler'Class);
   function Create return ScrolledMotionGesturesHandler_Access;
   function getInstance return ScrolledMotionGesturesHandler_Access;
   procedure getInstance;
   procedure process (This : in out ScrolledMotionGesturesHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package;


