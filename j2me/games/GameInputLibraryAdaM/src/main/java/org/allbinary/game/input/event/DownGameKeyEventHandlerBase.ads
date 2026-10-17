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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;

package org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package is

   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type DownGameKeyEventHandlerBase is tagged;
   type DownGameKeyEventHandlerBase_Access is access all DownGameKeyEventHandlerBase'Class;
   type DownGameKeyEventHandlerBase_Access_Array is array (Natural range <>) of DownGameKeyEventHandlerBase_Access;
   type DownGameKeyEventHandlerBase_Access_Array_Access is access all DownGameKeyEventHandlerBase_Access_Array;

   type DownGameKeyEventHandlerBase is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   TOTAL_LISTENERS : Unbounded_String;
   LISTENER_LABEL : Unbounded_String;

   procedure Initialize (This : in out DownGameKeyEventHandlerBase'Class);
   function Create return DownGameKeyEventHandlerBase_Access;
   procedure addListener (This : in out DownGameKeyEventHandlerBase; playerGameInput_Param : access PlayerGameInput'Class);
   procedure removeAllListeners (This : in out DownGameKeyEventHandlerBase);
   procedure removeListenerSingleThreaded (This : in out DownGameKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure removeListener (This : in out DownGameKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure fireEvent (This : in out DownGameKeyEventHandlerBase; eventObject_Param : access AllBinaryEventObject'Class);
   procedure process (This : in out DownGameKeyEventHandlerBase; eventObject_Param : access AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface'Class);
   function toString (This : in out DownGameKeyEventHandlerBase) return Unbounded_String;

end org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;


