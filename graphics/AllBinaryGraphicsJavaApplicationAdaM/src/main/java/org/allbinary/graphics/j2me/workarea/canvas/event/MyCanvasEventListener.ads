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

limited with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;
package org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References is
   type MyCanvasEventListener_Access is access all org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package.MyCanvasEventListener'Class;
   type MyCanvasEventListener_Access_Array is array (Natural range <>) of MyCanvasEventListener_Access;
   type MyCanvasEventListener_Access_Array_Access is access all MyCanvasEventListener_Access_Array;
   type MyCanvasEventListener_Access_Array_Access_Array is array (Natural range <>) of MyCanvasEventListener_Access_Array_Access;
   type MyCanvasEventListener_Access_Array_Access_Array_Access is access all MyCanvasEventListener_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References;

with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References;

package org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package is

   package Reference_Types is
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


   type MyCanvasEventListener is interface;
   subtype MyCanvasEventListener_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References.MyCanvasEventListener_Access;
   function "=" (Left, Right : MyCanvasEventListener_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References."=";
   subtype MyCanvasEventListener_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References.MyCanvasEventListener_Access_Array;
   function "=" (Left, Right : MyCanvasEventListener_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References."=";
   subtype MyCanvasEventListener_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References.MyCanvasEventListener_Access_Array_Access;
   function "=" (Left, Right : MyCanvasEventListener_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References."=";
   subtype MyCanvasEventListener_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References.MyCanvasEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvasEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References."=";
   subtype MyCanvasEventListener_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References.MyCanvasEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvasEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package_References."=";
   function Java_Object_Access_From_MyCanvasEventListener (Value : MyCanvasEventListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure delete (This : in out MyCanvasEventListener; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class) is abstract;
   procedure duplicate (This : in out MyCanvasEventListener; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class) is abstract;
   procedure select_Id (This : in out MyCanvasEventListener; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class) is abstract;
   procedure rotate (This : in out MyCanvasEventListener; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class) is abstract;
   procedure explode (This : in out MyCanvasEventListener; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class) is abstract;
   procedure autoExplode (This : in out MyCanvasEventListener; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class) is abstract;
   procedure center (This : in out MyCanvasEventListener; evt_Param : access MyCanvasEvent_Package.MyCanvasEvent'Class) is abstract;

end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;


