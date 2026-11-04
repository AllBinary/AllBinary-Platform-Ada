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

limited with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
package org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References is
   type DisplayChangeEventListener_Access is access all org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package.DisplayChangeEventListener'Class;
   type DisplayChangeEventListener_Access_Array is array (Natural range <>) of DisplayChangeEventListener_Access;
   type DisplayChangeEventListener_Access_Array_Access is access all DisplayChangeEventListener_Access_Array;
   type DisplayChangeEventListener_Access_Array_Access_Array is array (Natural range <>) of DisplayChangeEventListener_Access_Array_Access;
   type DisplayChangeEventListener_Access_Array_Access_Array_Access is access all DisplayChangeEventListener_Access_Array_Access_Array;
end org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References;

with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;

package org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   use type DisplayChangeEvent_Access;
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   use type DisplayChangeEvent_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access;
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   use type DisplayChangeEvent_Access_Array_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type DisplayChangeEventListener is interface and EventListenerInterface;
   subtype DisplayChangeEventListener_Access is org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References.DisplayChangeEventListener_Access;
   function "=" (Left, Right : DisplayChangeEventListener_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References."=";
   subtype DisplayChangeEventListener_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References.DisplayChangeEventListener_Access_Array;
   function "=" (Left, Right : DisplayChangeEventListener_Access_Array) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References."=";
   subtype DisplayChangeEventListener_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References.DisplayChangeEventListener_Access_Array_Access;
   function "=" (Left, Right : DisplayChangeEventListener_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References."=";
   subtype DisplayChangeEventListener_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References.DisplayChangeEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayChangeEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References."=";
   subtype DisplayChangeEventListener_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References.DisplayChangeEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayChangeEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References."=";
   function Java_Object_Access_From_DisplayChangeEventListener (Value : DisplayChangeEventListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onDisplayChangeEvent (This : in out DisplayChangeEventListener; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is abstract;

end org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;


