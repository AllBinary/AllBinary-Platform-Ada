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
limited with org.allbinary.layer.event.ScrollMapEventHandler_Package;
package org.allbinary.layer.event.ScrollMapEventHandler_Package_References is
   type ScrollMapEventHandler_Access is access all org.allbinary.layer.event.ScrollMapEventHandler_Package.ScrollMapEventHandler'Class;
   type ScrollMapEventHandler_Access_Array is array (Natural range <>) of ScrollMapEventHandler_Access;
   type ScrollMapEventHandler_Access_Array_Access is access all ScrollMapEventHandler_Access_Array;
   type ScrollMapEventHandler_Access_Array_Access_Array is array (Natural range <>) of ScrollMapEventHandler_Access_Array_Access;
   type ScrollMapEventHandler_Access_Array_Access_Array_Access is access all ScrollMapEventHandler_Access_Array_Access_Array;
   type ScrollMapEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrollMapEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrollMapEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrollMapEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrollMapEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrollMapEventHandler_Access_Array_Access is (if Value /= null and then Value.all in ScrollMapEventHandler_Access_Array_Object'Class then ScrollMapEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type ScrollMapEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrollMapEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrollMapEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrollMapEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrollMapEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrollMapEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScrollMapEventHandler_Access_Array_Access_Array_Object'Class then ScrollMapEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.event.ScrollMapEventHandler_Package_References;

with org.allbinary.layer.event.ScrollMapEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.layer.event.ScrollMapEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype ScrollMapEventHandler_Access is org.allbinary.layer.event.ScrollMapEventHandler_Package_References.ScrollMapEventHandler_Access;
   function "=" (Left, Right : ScrollMapEventHandler_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEventHandler_Package_References."=";
   subtype ScrollMapEventHandler_Access_Array is org.allbinary.layer.event.ScrollMapEventHandler_Package_References.ScrollMapEventHandler_Access_Array;
   function "=" (Left, Right : ScrollMapEventHandler_Access_Array) return Boolean renames org.allbinary.layer.event.ScrollMapEventHandler_Package_References."=";
   subtype ScrollMapEventHandler_Access_Array_Access is org.allbinary.layer.event.ScrollMapEventHandler_Package_References.ScrollMapEventHandler_Access_Array_Access;
   function "=" (Left, Right : ScrollMapEventHandler_Access_Array_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEventHandler_Package_References."=";
   function Java_Box (Value : ScrollMapEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.event.ScrollMapEventHandler_Package_References.Java_Box;
   function Java_Unbox_ScrollMapEventHandler_Access_Array (Value : access Java_Object'Class) return ScrollMapEventHandler_Access_Array_Access renames org.allbinary.layer.event.ScrollMapEventHandler_Package_References.Java_Unbox_ScrollMapEventHandler_Access_Array;
   subtype ScrollMapEventHandler_Access_Array_Access_Array is org.allbinary.layer.event.ScrollMapEventHandler_Package_References.ScrollMapEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollMapEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.ScrollMapEventHandler_Package_References."=";
   subtype ScrollMapEventHandler_Access_Array_Access_Array_Access is org.allbinary.layer.event.ScrollMapEventHandler_Package_References.ScrollMapEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollMapEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEventHandler_Package_References."=";
   function Java_Box (Value : ScrollMapEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.event.ScrollMapEventHandler_Package_References.Java_Box;
   function Java_Unbox_ScrollMapEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return ScrollMapEventHandler_Access_Array_Access_Array_Access renames org.allbinary.layer.event.ScrollMapEventHandler_Package_References.Java_Unbox_ScrollMapEventHandler_Access_Array_Access_Array;

   type ScrollMapEventHandler is new BasicEventHandler with null record;
   SINGLETON : ScrollMapEventHandler_Access;

   procedure Initialize (This : in out ScrollMapEventHandler'Class);
   function Create return ScrollMapEventHandler_Access;
   function getInstance return ScrollMapEventHandler_Access;
   procedure process (This : in out ScrollMapEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.layer.event.ScrollMapEventHandler_Package;


