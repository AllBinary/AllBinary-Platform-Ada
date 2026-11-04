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

limited with org.allbinary.view.event.ViewPositionEventListenerInterface_Package;
package org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References is
   type ViewPositionEventListenerInterface_Access is access all org.allbinary.view.event.ViewPositionEventListenerInterface_Package.ViewPositionEventListenerInterface'Class;
   type ViewPositionEventListenerInterface_Access_Array is array (Natural range <>) of ViewPositionEventListenerInterface_Access;
   type ViewPositionEventListenerInterface_Access_Array_Access is access all ViewPositionEventListenerInterface_Access_Array;
   type ViewPositionEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of ViewPositionEventListenerInterface_Access_Array_Access;
   type ViewPositionEventListenerInterface_Access_Array_Access_Array_Access is access all ViewPositionEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References;

with org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.view.event.ViewPositionEvent_Package_References;

package org.allbinary.view.event.ViewPositionEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype ViewPositionEvent_Access is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access;
   use type ViewPositionEvent_Access;
   subtype ViewPositionEvent_Access_Array is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array;
   use type ViewPositionEvent_Access_Array;
   subtype ViewPositionEvent_Access_Array_Access is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array_Access;
   use type ViewPositionEvent_Access_Array_Access;
   subtype ViewPositionEvent_Access_Array_Access_Array is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array_Access_Array;
   use type ViewPositionEvent_Access_Array_Access_Array;
   subtype ViewPositionEvent_Access_Array_Access_Array_Access is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array_Access_Array_Access;
   use type ViewPositionEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ViewPositionEventListenerInterface is interface and EventListenerInterface;
   subtype ViewPositionEventListenerInterface_Access is org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References.ViewPositionEventListenerInterface_Access;
   function "=" (Left, Right : ViewPositionEventListenerInterface_Access) return Boolean renames org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References."=";
   subtype ViewPositionEventListenerInterface_Access_Array is org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References.ViewPositionEventListenerInterface_Access_Array;
   function "=" (Left, Right : ViewPositionEventListenerInterface_Access_Array) return Boolean renames org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References."=";
   subtype ViewPositionEventListenerInterface_Access_Array_Access is org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References.ViewPositionEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : ViewPositionEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References."=";
   subtype ViewPositionEventListenerInterface_Access_Array_Access_Array is org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References.ViewPositionEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References."=";
   subtype ViewPositionEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References.ViewPositionEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.event.ViewPositionEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_ViewPositionEventListenerInterface (Value : ViewPositionEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onChangeEvent (This : in out ViewPositionEventListenerInterface; layerManagerEvent_Param : access ViewPositionEvent_Package.ViewPositionEvent'Class) is abstract;

end org.allbinary.view.event.ViewPositionEventListenerInterface_Package;


