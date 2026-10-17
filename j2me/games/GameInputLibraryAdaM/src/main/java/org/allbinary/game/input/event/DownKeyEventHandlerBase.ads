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
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.DownKeyEventListenerInterface_Package; use org.allbinary.game.input.event.DownKeyEventListenerInterface_Package;

package org.allbinary.game.input.event.DownKeyEventHandlerBase_Package is

   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type DownKeyEventHandlerBase is tagged;
   type DownKeyEventHandlerBase_Access is access all DownKeyEventHandlerBase'Class;
   type DownKeyEventHandlerBase_Access_Array is array (Natural range <>) of DownKeyEventHandlerBase_Access;
   type DownKeyEventHandlerBase_Access_Array_Access is access all DownKeyEventHandlerBase_Access_Array;

   type DownKeyEventHandlerBase is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   TOTAL_LISTENERS : Unbounded_String;
   LISTENER_LABEL : Unbounded_String;

   procedure Initialize (This : in out DownKeyEventHandlerBase'Class);
   function Create return DownKeyEventHandlerBase_Access;
   procedure addListener (This : in out DownKeyEventHandlerBase; playerGameInput_Param : access PlayerGameInput'Class);
   procedure removeAllListeners (This : in out DownKeyEventHandlerBase);
   procedure removeListenerSingleThreaded (This : in out DownKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure removeListener (This : in out DownKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure fireEventI (This : in out DownKeyEventHandlerBase; eventObject : Integer);
   procedure fireEventForGameKeyEvent (This : in out DownKeyEventHandlerBase; eventObject_Param : access GameKeyEvent'Class);
   procedure processI (This : in out DownKeyEventHandlerBase; eventObject : Integer; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure processEvent (This : in out DownKeyEventHandlerBase; eventObject_Param : access GameKeyEvent'Class; eventListenerInterface_Param : access EventListenerInterface'Class);
   function toString (This : in out DownKeyEventHandlerBase) return Unbounded_String;

end org.allbinary.game.input.event.DownKeyEventHandlerBase_Package;


