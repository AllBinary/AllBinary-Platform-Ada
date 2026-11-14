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

with AllBinary_Java;
limited with org.allbinary.game.input.event.DownKeyEventHandlerBase_Package;
package org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References is
   type DownKeyEventHandlerBase_Access is access all org.allbinary.game.input.event.DownKeyEventHandlerBase_Package.DownKeyEventHandlerBase'Class;
   type DownKeyEventHandlerBase_Access_Array is array (Natural range <>) of DownKeyEventHandlerBase_Access;
   type DownKeyEventHandlerBase_Access_Array_Access is access all DownKeyEventHandlerBase_Access_Array;
   type DownKeyEventHandlerBase_Access_Array_Access_Array is array (Natural range <>) of DownKeyEventHandlerBase_Access_Array_Access;
   type DownKeyEventHandlerBase_Access_Array_Access_Array_Access is access all DownKeyEventHandlerBase_Access_Array_Access_Array;
   type DownKeyEventHandlerBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownKeyEventHandlerBase_Access_Array_Access;
   end record;
   function Java_Box (Value : DownKeyEventHandlerBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownKeyEventHandlerBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownKeyEventHandlerBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownKeyEventHandlerBase_Access_Array_Access is (if Value /= null and then Value.all in DownKeyEventHandlerBase_Access_Array_Object'Class then DownKeyEventHandlerBase_Access_Array_Object'Class (Value.all).Value else null);
   type DownKeyEventHandlerBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownKeyEventHandlerBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DownKeyEventHandlerBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownKeyEventHandlerBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownKeyEventHandlerBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownKeyEventHandlerBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DownKeyEventHandlerBase_Access_Array_Access_Array_Object'Class then DownKeyEventHandlerBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References;

with org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References;
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
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;

package org.allbinary.game.input.event.DownKeyEventHandlerBase_Package is

   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
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
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   use type GameKeyEvent_Access;
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   use type GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   use type GameKeyEvent_Access_Array_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DownKeyEventHandlerBase_Access is org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References.DownKeyEventHandlerBase_Access;
   function "=" (Left, Right : DownKeyEventHandlerBase_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References."=";
   subtype DownKeyEventHandlerBase_Access_Array is org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References.DownKeyEventHandlerBase_Access_Array;
   function "=" (Left, Right : DownKeyEventHandlerBase_Access_Array) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References."=";
   subtype DownKeyEventHandlerBase_Access_Array_Access is org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References.DownKeyEventHandlerBase_Access_Array_Access;
   function "=" (Left, Right : DownKeyEventHandlerBase_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References."=";
   function Java_Box (Value : DownKeyEventHandlerBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References.Java_Box;
   function Java_Unbox_DownKeyEventHandlerBase_Access_Array (Value : access Java_Object'Class) return DownKeyEventHandlerBase_Access_Array_Access renames org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References.Java_Unbox_DownKeyEventHandlerBase_Access_Array;
   subtype DownKeyEventHandlerBase_Access_Array_Access_Array is org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References.DownKeyEventHandlerBase_Access_Array_Access_Array;
   function "=" (Left, Right : DownKeyEventHandlerBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References."=";
   subtype DownKeyEventHandlerBase_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References.DownKeyEventHandlerBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownKeyEventHandlerBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References."=";
   function Java_Box (Value : DownKeyEventHandlerBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References.Java_Box;
   function Java_Unbox_DownKeyEventHandlerBase_Access_Array_Access_Array (Value : access Java_Object'Class) return DownKeyEventHandlerBase_Access_Array_Access_Array_Access renames org.allbinary.game.input.event.DownKeyEventHandlerBase_Package_References.Java_Unbox_DownKeyEventHandlerBase_Access_Array_Access_Array;

   type DownKeyEventHandlerBase is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   TOTAL_LISTENERS : Unbounded_String;
   LISTENER_LABEL : Unbounded_String;

   procedure Initialize (This : in out DownKeyEventHandlerBase'Class);
   function Create return DownKeyEventHandlerBase_Access;
   procedure addListener (This : in out DownKeyEventHandlerBase; playerGameInput_Param : access PlayerGameInput_Package.PlayerGameInput'Class);
   procedure removeAllListeners (This : in out DownKeyEventHandlerBase);
   procedure removeListenerSingleThreaded (This : in out DownKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out DownKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEventI (This : in out DownKeyEventHandlerBase; eventObject : Integer);
   procedure fireEventForGameKeyEvent (This : in out DownKeyEventHandlerBase; eventObject_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure processI (This : in out DownKeyEventHandlerBase; eventObject : Integer; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure processEvent (This : in out DownKeyEventHandlerBase; eventObject_Param : access GameKeyEvent_Package.GameKeyEvent'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   function toString (This : in out DownKeyEventHandlerBase) return Unbounded_String;

end org.allbinary.game.input.event.DownKeyEventHandlerBase_Package;


