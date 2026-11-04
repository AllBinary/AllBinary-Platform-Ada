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

limited with org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package;
package org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References is
   type BasicCompositeEventHandlerInterface_Access is access all org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package.BasicCompositeEventHandlerInterface'Class;
   type BasicCompositeEventHandlerInterface_Access_Array is array (Natural range <>) of BasicCompositeEventHandlerInterface_Access;
   type BasicCompositeEventHandlerInterface_Access_Array_Access is access all BasicCompositeEventHandlerInterface_Access_Array;
   type BasicCompositeEventHandlerInterface_Access_Array_Access_Array is array (Natural range <>) of BasicCompositeEventHandlerInterface_Access_Array_Access;
   type BasicCompositeEventHandlerInterface_Access_Array_Access_Array_Access is access all BasicCompositeEventHandlerInterface_Access_Array_Access_Array;
end org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References;

with org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package_References;

package org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package is

   package Reference_Types is
   subtype BasicEventHandlerInterface_Access is org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package_References.BasicEventHandlerInterface_Access;
   use type BasicEventHandlerInterface_Access;
   subtype BasicEventHandlerInterface_Access_Array is org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package_References.BasicEventHandlerInterface_Access_Array;
   use type BasicEventHandlerInterface_Access_Array;
   subtype BasicEventHandlerInterface_Access_Array_Access is org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package_References.BasicEventHandlerInterface_Access_Array_Access;
   use type BasicEventHandlerInterface_Access_Array_Access;
   subtype BasicEventHandlerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package_References.BasicEventHandlerInterface_Access_Array_Access_Array;
   use type BasicEventHandlerInterface_Access_Array_Access_Array;
   subtype BasicEventHandlerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package_References.BasicEventHandlerInterface_Access_Array_Access_Array_Access;
   use type BasicEventHandlerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type BasicCompositeEventHandlerInterface is interface;
   subtype BasicCompositeEventHandlerInterface_Access is org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References.BasicCompositeEventHandlerInterface_Access;
   function "=" (Left, Right : BasicCompositeEventHandlerInterface_Access) return Boolean renames org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References."=";
   subtype BasicCompositeEventHandlerInterface_Access_Array is org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References.BasicCompositeEventHandlerInterface_Access_Array;
   function "=" (Left, Right : BasicCompositeEventHandlerInterface_Access_Array) return Boolean renames org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References."=";
   subtype BasicCompositeEventHandlerInterface_Access_Array_Access is org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References.BasicCompositeEventHandlerInterface_Access_Array_Access;
   function "=" (Left, Right : BasicCompositeEventHandlerInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References."=";
   subtype BasicCompositeEventHandlerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References.BasicCompositeEventHandlerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicCompositeEventHandlerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References."=";
   subtype BasicCompositeEventHandlerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References.BasicCompositeEventHandlerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicCompositeEventHandlerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package_References."=";
   function Java_Object_Access_From_BasicCompositeEventHandlerInterface (Value : BasicCompositeEventHandlerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getEventHandler (This : in out BasicCompositeEventHandlerInterface) return BasicEventHandlerInterface_Access is abstract;
   procedure setEventHandler (This : in out BasicCompositeEventHandlerInterface; basicEventHandlerInterface_Param : access BasicEventHandlerInterface_Package.BasicEventHandlerInterface'Class) is abstract;

end org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package;


