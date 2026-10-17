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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.input.event.PressGameKeyEventHandler_Package is

   package PlayerGameInput_Package renames org.allbinary.game.input.PlayerGameInput_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames org.allbinary.logic.util.event.EventStrings_Package;
   package BasicEventHandler_Package renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type PressGameKeyEventHandler is tagged;
   type PressGameKeyEventHandler_Access is access all PressGameKeyEventHandler'Class;
   type PressGameKeyEventHandler_Access_Array is array (Natural range <>) of PressGameKeyEventHandler_Access;
   type PressGameKeyEventHandler_Access_Array_Access is access all PressGameKeyEventHandler_Access_Array;

   type PressGameKeyEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   instance : PressGameKeyEventHandler_Access;

   procedure Initialize (This : in out PressGameKeyEventHandler'Class);
   function Create return PressGameKeyEventHandler_Access;
   function getInstance return PressGameKeyEventHandler_Access;
   procedure getInstance;
   procedure addListener (This : in out PressGameKeyEventHandler; playerGameInput : PlayerGameInput_Access);
   procedure removeAllListeners (This : in out PressGameKeyEventHandler);
   procedure removeListener (This : in out PressGameKeyEventHandler; eventListenerInterface : EventListenerInterface_Access);
   procedure fireEvent (This : in out PressGameKeyEventHandler; eventObject : AllBinaryEventObject_Access);
   procedure process (This : in out PressGameKeyEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.game.input.event.PressGameKeyEventHandler_Package;


