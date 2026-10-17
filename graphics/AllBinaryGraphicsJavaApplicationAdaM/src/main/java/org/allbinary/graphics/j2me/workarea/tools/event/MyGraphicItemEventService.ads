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
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;

package org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package is


   type MyGraphicItemEventService is tagged;
   type MyGraphicItemEventService_Access is access all MyGraphicItemEventService'Class;
   type MyGraphicItemEventService_Access_Array is array (Natural range <>) of MyGraphicItemEventService_Access;
   type MyGraphicItemEventService_Access_Array_Access is access all MyGraphicItemEventService_Access_Array;

   type MyGraphicItemEventService is new Java_Object with null record;
   listenerList : EventListenerList_Access;
   DELETE : Unbounded_String;
   DESELECT : Unbounded_String;
   SELECT_Id : Unbounded_String;
   DUPLICATE : Unbounded_String;
   ROTATE : Unbounded_String;

   procedure Initialize (This : in out MyGraphicItemEventService'Class);
   function Create return MyGraphicItemEventService_Access;
   procedure addListener (listener_Param : access MyGraphicItemEventListener'Class);
   procedure removeListener (listener_Param : access MyGraphicItemEventListener'Class);
   procedure fire (evt_Param : access MyGraphicItemEvent'Class);

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package;


