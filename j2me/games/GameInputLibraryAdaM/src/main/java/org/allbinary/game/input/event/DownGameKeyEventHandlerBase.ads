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
limited with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;
package org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References is
   type DownGameKeyEventHandlerBase_Access is access all org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package.DownGameKeyEventHandlerBase'Class;
   type DownGameKeyEventHandlerBase_Access_Array is array (Natural range <>) of DownGameKeyEventHandlerBase_Access;
   type DownGameKeyEventHandlerBase_Access_Array_Access is access all DownGameKeyEventHandlerBase_Access_Array;
   type DownGameKeyEventHandlerBase_Access_Array_Access_Array is array (Natural range <>) of DownGameKeyEventHandlerBase_Access_Array_Access;
   type DownGameKeyEventHandlerBase_Access_Array_Access_Array_Access is access all DownGameKeyEventHandlerBase_Access_Array_Access_Array;
   type DownGameKeyEventHandlerBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownGameKeyEventHandlerBase_Access_Array_Access;
   end record;
   function Java_Box (Value : DownGameKeyEventHandlerBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownGameKeyEventHandlerBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownGameKeyEventHandlerBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownGameKeyEventHandlerBase_Access_Array_Access is (if Value /= null and then Value.all in DownGameKeyEventHandlerBase_Access_Array_Object'Class then DownGameKeyEventHandlerBase_Access_Array_Object'Class (Value.all).Value else null);
   type DownGameKeyEventHandlerBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownGameKeyEventHandlerBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DownGameKeyEventHandlerBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownGameKeyEventHandlerBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownGameKeyEventHandlerBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownGameKeyEventHandlerBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DownGameKeyEventHandlerBase_Access_Array_Access_Array_Object'Class then DownGameKeyEventHandlerBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References;

with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References;
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

package org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package is

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


   subtype DownGameKeyEventHandlerBase_Access is org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References.DownGameKeyEventHandlerBase_Access;
   function "=" (Left, Right : DownGameKeyEventHandlerBase_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References."=";
   subtype DownGameKeyEventHandlerBase_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References.DownGameKeyEventHandlerBase_Access_Array;
   function "=" (Left, Right : DownGameKeyEventHandlerBase_Access_Array) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References."=";
   subtype DownGameKeyEventHandlerBase_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References.DownGameKeyEventHandlerBase_Access_Array_Access;
   function "=" (Left, Right : DownGameKeyEventHandlerBase_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References."=";
   function Java_Box (Value : DownGameKeyEventHandlerBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References.Java_Box;
   function Java_Unbox_DownGameKeyEventHandlerBase_Access_Array (Value : access Java_Object'Class) return DownGameKeyEventHandlerBase_Access_Array_Access renames org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References.Java_Unbox_DownGameKeyEventHandlerBase_Access_Array;
   subtype DownGameKeyEventHandlerBase_Access_Array_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References.DownGameKeyEventHandlerBase_Access_Array_Access_Array;
   function "=" (Left, Right : DownGameKeyEventHandlerBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References."=";
   subtype DownGameKeyEventHandlerBase_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References.DownGameKeyEventHandlerBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownGameKeyEventHandlerBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References."=";
   function Java_Box (Value : DownGameKeyEventHandlerBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References.Java_Box;
   function Java_Unbox_DownGameKeyEventHandlerBase_Access_Array_Access_Array (Value : access Java_Object'Class) return DownGameKeyEventHandlerBase_Access_Array_Access_Array_Access renames org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package_References.Java_Unbox_DownGameKeyEventHandlerBase_Access_Array_Access_Array;

   type DownGameKeyEventHandlerBase is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   TOTAL_LISTENERS : Unbounded_String;
   LISTENER_LABEL : Unbounded_String;

   procedure Initialize (This : in out DownGameKeyEventHandlerBase'Class);
   function Create return DownGameKeyEventHandlerBase_Access;
   procedure addListener (This : in out DownGameKeyEventHandlerBase; playerGameInput_Param : access PlayerGameInput_Package.PlayerGameInput'Class);
   procedure removeAllListeners (This : in out DownGameKeyEventHandlerBase);
   procedure removeListenerSingleThreaded (This : in out DownGameKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out DownGameKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out DownGameKeyEventHandlerBase; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out DownGameKeyEventHandlerBase; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   function toString (This : in out DownGameKeyEventHandlerBase) return Unbounded_String;

end org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;


