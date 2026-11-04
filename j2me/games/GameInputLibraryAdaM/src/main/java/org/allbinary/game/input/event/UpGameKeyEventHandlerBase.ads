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

limited with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;
package org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References is
   type UpGameKeyEventHandlerBase_Access is access all org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package.UpGameKeyEventHandlerBase'Class;
   type UpGameKeyEventHandlerBase_Access_Array is array (Natural range <>) of UpGameKeyEventHandlerBase_Access;
   type UpGameKeyEventHandlerBase_Access_Array_Access is access all UpGameKeyEventHandlerBase_Access_Array;
   type UpGameKeyEventHandlerBase_Access_Array_Access_Array is array (Natural range <>) of UpGameKeyEventHandlerBase_Access_Array_Access;
   type UpGameKeyEventHandlerBase_Access_Array_Access_Array_Access is access all UpGameKeyEventHandlerBase_Access_Array_Access_Array;
end org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References;

with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package is

   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   use type PlayerGameInput_Access;
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   use type PlayerGameInput_Access_Array;
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access;
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   use type PlayerGameInput_Access_Array_Access_Array;
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype EventListenerInterface_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access;
   use type EventListenerInterface_Access;
   subtype EventListenerInterface_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array;
   use type EventListenerInterface_Access_Array;
   subtype EventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access;
   subtype EventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array;
   use type EventListenerInterface_Access_Array_Access_Array;
   subtype EventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UpGameKeyEventHandlerBase_Access is org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References.UpGameKeyEventHandlerBase_Access;
   function "=" (Left, Right : UpGameKeyEventHandlerBase_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References."=";
   subtype UpGameKeyEventHandlerBase_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References.UpGameKeyEventHandlerBase_Access_Array;
   function "=" (Left, Right : UpGameKeyEventHandlerBase_Access_Array) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References."=";
   subtype UpGameKeyEventHandlerBase_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References.UpGameKeyEventHandlerBase_Access_Array_Access;
   function "=" (Left, Right : UpGameKeyEventHandlerBase_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References."=";
   subtype UpGameKeyEventHandlerBase_Access_Array_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References.UpGameKeyEventHandlerBase_Access_Array_Access_Array;
   function "=" (Left, Right : UpGameKeyEventHandlerBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References."=";
   subtype UpGameKeyEventHandlerBase_Access_Array_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References.UpGameKeyEventHandlerBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpGameKeyEventHandlerBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package_References."=";

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


