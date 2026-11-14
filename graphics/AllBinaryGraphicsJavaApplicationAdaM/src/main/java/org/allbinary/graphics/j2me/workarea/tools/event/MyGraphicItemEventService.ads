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
limited with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package;
package org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References is
   type MyGraphicItemEventService_Access is access all org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package.MyGraphicItemEventService'Class;
   type MyGraphicItemEventService_Access_Array is array (Natural range <>) of MyGraphicItemEventService_Access;
   type MyGraphicItemEventService_Access_Array_Access is access all MyGraphicItemEventService_Access_Array;
   type MyGraphicItemEventService_Access_Array_Access_Array is array (Natural range <>) of MyGraphicItemEventService_Access_Array_Access;
   type MyGraphicItemEventService_Access_Array_Access_Array_Access is access all MyGraphicItemEventService_Access_Array_Access_Array;
   type MyGraphicItemEventService_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyGraphicItemEventService_Access_Array_Access;
   end record;
   function Java_Box (Value : MyGraphicItemEventService_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyGraphicItemEventService_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyGraphicItemEventService_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyGraphicItemEventService_Access_Array_Access is (if Value /= null and then Value.all in MyGraphicItemEventService_Access_Array_Object'Class then MyGraphicItemEventService_Access_Array_Object'Class (Value.all).Value else null);
   type MyGraphicItemEventService_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyGraphicItemEventService_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MyGraphicItemEventService_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyGraphicItemEventService_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyGraphicItemEventService_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyGraphicItemEventService_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MyGraphicItemEventService_Access_Array_Access_Array_Object'Class then MyGraphicItemEventService_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.EventListener_Package; use java.util.EventListener_Package;
--  with javax.swing.event.EventListenerList_Package; use javax.swing.event.EventListenerList_Package;
limited with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package is

   package Reference_Types is
   subtype MyGraphicItemEventListener_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access;
   use type MyGraphicItemEventListener_Access;
   subtype MyGraphicItemEventListener_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array;
   use type MyGraphicItemEventListener_Access_Array;
   subtype MyGraphicItemEventListener_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array_Access;
   use type MyGraphicItemEventListener_Access_Array_Access;
   subtype MyGraphicItemEventListener_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array_Access_Array;
   use type MyGraphicItemEventListener_Access_Array_Access_Array;
   subtype MyGraphicItemEventListener_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array_Access_Array_Access;
   use type MyGraphicItemEventListener_Access_Array_Access_Array_Access;
   subtype MyGraphicItemEvent_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access;
   use type MyGraphicItemEvent_Access;
   subtype MyGraphicItemEvent_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array;
   use type MyGraphicItemEvent_Access_Array;
   subtype MyGraphicItemEvent_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array_Access;
   use type MyGraphicItemEvent_Access_Array_Access;
   subtype MyGraphicItemEvent_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array_Access_Array;
   use type MyGraphicItemEvent_Access_Array_Access_Array;
   subtype MyGraphicItemEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array_Access_Array_Access;
   use type MyGraphicItemEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MyGraphicItemEventService_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References.MyGraphicItemEventService_Access;
   function "=" (Left, Right : MyGraphicItemEventService_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References."=";
   subtype MyGraphicItemEventService_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References.MyGraphicItemEventService_Access_Array;
   function "=" (Left, Right : MyGraphicItemEventService_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References."=";
   subtype MyGraphicItemEventService_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References.MyGraphicItemEventService_Access_Array_Access;
   function "=" (Left, Right : MyGraphicItemEventService_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References."=";
   function Java_Box (Value : MyGraphicItemEventService_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References.Java_Box;
   function Java_Unbox_MyGraphicItemEventService_Access_Array (Value : access Java_Object'Class) return MyGraphicItemEventService_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References.Java_Unbox_MyGraphicItemEventService_Access_Array;
   subtype MyGraphicItemEventService_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References.MyGraphicItemEventService_Access_Array_Access_Array;
   function "=" (Left, Right : MyGraphicItemEventService_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References."=";
   subtype MyGraphicItemEventService_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References.MyGraphicItemEventService_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyGraphicItemEventService_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References."=";
   function Java_Box (Value : MyGraphicItemEventService_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References.Java_Box;
   function Java_Unbox_MyGraphicItemEventService_Access_Array_Access_Array (Value : access Java_Object'Class) return MyGraphicItemEventService_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package_References.Java_Unbox_MyGraphicItemEventService_Access_Array_Access_Array;

   type MyGraphicItemEventService is new Java_Object with null record;
   listenerList : EventListenerList_Access;
   DELETE : Unbounded_String;
   DESELECT : Unbounded_String;
   SELECT_Id : Unbounded_String;
   DUPLICATE : Unbounded_String;
   ROTATE : Unbounded_String;

   procedure Initialize (This : in out MyGraphicItemEventService'Class);
   function Create return MyGraphicItemEventService_Access;
   procedure addListener (listener_Param : access MyGraphicItemEventListener_Package.MyGraphicItemEventListener'Class);
   procedure removeListener (listener_Param : access MyGraphicItemEventListener_Package.MyGraphicItemEventListener'Class);
   procedure fire (evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class);

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package;


