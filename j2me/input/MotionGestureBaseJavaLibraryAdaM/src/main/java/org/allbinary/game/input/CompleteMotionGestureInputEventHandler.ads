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
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;

package org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type CompleteMotionGestureInputEventHandler is tagged;
   type CompleteMotionGestureInputEventHandler_Access is access all CompleteMotionGestureInputEventHandler'Class;
   type CompleteMotionGestureInputEventHandler_Access_Array is array (Natural range <>) of CompleteMotionGestureInputEventHandler_Access;
   type CompleteMotionGestureInputEventHandler_Access_Array_Access is access all CompleteMotionGestureInputEventHandler_Access_Array;

   type CompleteMotionGestureInputEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   SINGLETON : CompleteMotionGestureInputEventHandler_Access;

   procedure Initialize (This : in out CompleteMotionGestureInputEventHandler'Class);
   function Create return CompleteMotionGestureInputEventHandler_Access;
   function getInstance return CompleteMotionGestureInputEventHandler_Access;
   procedure addListener (This : in out CompleteMotionGestureInputEventHandler; completeMotionGestureInputEventListener_Param : access CompleteMotionGestureInputEventListener'Class);
   procedure removeAllListeners (This : in out CompleteMotionGestureInputEventHandler);
   procedure removeListener (This : in out CompleteMotionGestureInputEventHandler; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure fireEvent (This : in out CompleteMotionGestureInputEventHandler; eventObject_Param : access AllBinaryEventObject'Class);
   procedure process (This : in out CompleteMotionGestureInputEventHandler; eventObject_Param : access AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface'Class);

end org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package;


