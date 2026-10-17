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
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;

package org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package is


   type MyCanvasEventService is tagged;
   type MyCanvasEventService_Access is access all MyCanvasEventService'Class;
   type MyCanvasEventService_Access_Array is array (Natural range <>) of MyCanvasEventService_Access;
   type MyCanvasEventService_Access_Array_Access is access all MyCanvasEventService_Access_Array;

   type MyCanvasEventService is new Java_Object with null record;
   listenerList : EventListenerList_Access;
   DELETE : Unbounded_String;
   DUPLICATE : Unbounded_String;
   SELECT_Id : Unbounded_String;
   ROTATE : Unbounded_String;
   EXPLODE : Unbounded_String;
   AUTOEXPLODE : Unbounded_String;
   CENTER : Unbounded_String;

   procedure Initialize (This : in out MyCanvasEventService'Class);
   function Create return MyCanvasEventService_Access;
   procedure addListener (listener : MyCanvasEventListener_Access);
   procedure removeListener (listener : MyCanvasEventListener_Access);
   procedure fire (evt : MyCanvasEvent_Access);

end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;


