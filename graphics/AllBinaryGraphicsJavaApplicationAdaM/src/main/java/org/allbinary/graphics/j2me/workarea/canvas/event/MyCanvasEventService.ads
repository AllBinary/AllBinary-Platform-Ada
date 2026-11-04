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

limited with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;
package org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References is
   type MyCanvasEventService_Access is access all org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package.MyCanvasEventService'Class;
   type MyCanvasEventService_Access_Array is array (Natural range <>) of MyCanvasEventService_Access;
   type MyCanvasEventService_Access_Array_Access is access all MyCanvasEventService_Access_Array;
   type MyCanvasEventService_Access_Array_Access_Array is array (Natural range <>) of MyCanvasEventService_Access_Array_Access;
   type MyCanvasEventService_Access_Array_Access_Array_Access is access all MyCanvasEventService_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References;

with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References;
limited with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References;

package org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package is

   package Reference_Types is
   subtype MyCanvasEventListener_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References.MyCanvasEventListener_Access;
   use type MyCanvasEventListener_Access;
   subtype MyCanvasEventListener_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References.MyCanvasEventListener_Access_Array;
   use type MyCanvasEventListener_Access_Array;
   subtype MyCanvasEventListener_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References.MyCanvasEventListener_Access_Array_Access;
   use type MyCanvasEventListener_Access_Array_Access;
   subtype MyCanvasEventListener_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References.MyCanvasEventListener_Access_Array_Access_Array;
   use type MyCanvasEventListener_Access_Array_Access_Array;
   subtype MyCanvasEventListener_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References.MyCanvasEventListener_Access_Array_Access_Array_Access;
   use type MyCanvasEventListener_Access_Array_Access_Array_Access;
   subtype MyCanvasEvent_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access;
   use type MyCanvasEvent_Access;
   subtype MyCanvasEvent_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array;
   use type MyCanvasEvent_Access_Array;
   subtype MyCanvasEvent_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array_Access;
   use type MyCanvasEvent_Access_Array_Access;
   subtype MyCanvasEvent_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array_Access_Array;
   use type MyCanvasEvent_Access_Array_Access_Array;
   subtype MyCanvasEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array_Access_Array_Access;
   use type MyCanvasEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MyCanvasEventService_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References.MyCanvasEventService_Access;
   function "=" (Left, Right : MyCanvasEventService_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References."=";
   subtype MyCanvasEventService_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References.MyCanvasEventService_Access_Array;
   function "=" (Left, Right : MyCanvasEventService_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References."=";
   subtype MyCanvasEventService_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References.MyCanvasEventService_Access_Array_Access;
   function "=" (Left, Right : MyCanvasEventService_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References."=";
   subtype MyCanvasEventService_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References.MyCanvasEventService_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvasEventService_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References."=";
   subtype MyCanvasEventService_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References.MyCanvasEventService_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvasEventService_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package_References."=";

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
   procedure addListener (listener_Param : access MyCanvasEventListener_Package.MyCanvasEventListener'Class);
   procedure removeListener (listener_Param : access MyCanvasEventListener_Package.MyCanvasEventListener'Class);
   procedure fire (evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class);

end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;


