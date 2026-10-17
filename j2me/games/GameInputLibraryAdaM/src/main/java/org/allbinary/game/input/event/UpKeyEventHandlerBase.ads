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

package org.allbinary.game.input.event.UpKeyEventHandlerBase_Package is

   package PlayerGameInput_Package renames org.allbinary.game.input.PlayerGameInput_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package EventListenerInterface_Package renames org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames org.allbinary.logic.util.event.EventStrings_Package;
   package BasicEventHandler_Package renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type UpKeyEventHandlerBase is tagged;
   type UpKeyEventHandlerBase_Access is access all UpKeyEventHandlerBase'Class;
   type UpKeyEventHandlerBase_Access_Array is array (Natural range <>) of UpKeyEventHandlerBase_Access;
   type UpKeyEventHandlerBase_Access_Array_Access is access all UpKeyEventHandlerBase_Access_Array;

   type UpKeyEventHandlerBase is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   TOTAL_LISTENERS : Unbounded_String;
   LISTENER_LABEL : Unbounded_String;

   procedure Initialize (This : in out UpKeyEventHandlerBase'Class);
   function Create return UpKeyEventHandlerBase_Access;
   procedure addListener (This : in out UpKeyEventHandlerBase; playerGameInput : PlayerGameInput_Access);
   procedure removeAllListeners (This : in out UpKeyEventHandlerBase);
   procedure removeListenerSingleThreaded (This : in out UpKeyEventHandlerBase; eventListenerInterface : EventListenerInterface_Access);
   procedure removeListener (This : in out UpKeyEventHandlerBase; eventListenerInterface : EventListenerInterface_Access);
   procedure fireEventForInteger (This : in out UpKeyEventHandlerBase; eventObject : Integer);
   procedure processForInteger (This : in out UpKeyEventHandlerBase; eventObject : Integer; eventListenerInterface : EventListenerInterface_Access);
   function toString (This : in out UpKeyEventHandlerBase) return Unbounded_String;
   procedure toString (This : in out UpKeyEventHandlerBase);

end org.allbinary.game.input.event.UpKeyEventHandlerBase_Package;


