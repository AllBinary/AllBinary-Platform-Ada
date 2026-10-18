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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package is

   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type UpGameKeyEventHandlerBase is tagged;
   type UpGameKeyEventHandlerBase_Access is access all UpGameKeyEventHandlerBase'Class;
   type UpGameKeyEventHandlerBase_Access_Array is array (Natural range <>) of UpGameKeyEventHandlerBase_Access;
   type UpGameKeyEventHandlerBase_Access_Array_Access is access all UpGameKeyEventHandlerBase_Access_Array;
   type UpGameKeyEventHandlerBase_Access_Array_Access_Array is array (Natural range <>) of UpGameKeyEventHandlerBase_Access_Array_Access;
   type UpGameKeyEventHandlerBase_Access_Array_Access_Array_Access is access all UpGameKeyEventHandlerBase_Access_Array_Access_Array;

   type UpGameKeyEventHandlerBase is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   TOTAL_LISTENERS : Unbounded_String;
   LISTENER_LABEL : Unbounded_String;

   procedure Initialize (This : in out UpGameKeyEventHandlerBase'Class);
   function Create return UpGameKeyEventHandlerBase_Access;
   procedure addListener (This : in out UpGameKeyEventHandlerBase; playerGameInput_Param : access PlayerGameInput_Package.PlayerGameInput'Class);
   procedure removeAllListeners (This : in out UpGameKeyEventHandlerBase);
   procedure removeListenerSingleThreaded (This : in out UpGameKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out UpGameKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out UpGameKeyEventHandlerBase; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out UpGameKeyEventHandlerBase; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   function toString (This : in out UpGameKeyEventHandlerBase) return Unbounded_String;

end org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;


