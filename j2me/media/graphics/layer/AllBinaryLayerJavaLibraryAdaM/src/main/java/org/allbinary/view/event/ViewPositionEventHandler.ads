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
limited with org.allbinary.view.event.ViewPositionEventHandler_Package;
package org.allbinary.view.event.ViewPositionEventHandler_Package_References is
   type ViewPositionEventHandler_Access is access all org.allbinary.view.event.ViewPositionEventHandler_Package.ViewPositionEventHandler'Class;
   type ViewPositionEventHandler_Access_Array is array (Natural range <>) of ViewPositionEventHandler_Access;
   type ViewPositionEventHandler_Access_Array_Access is access all ViewPositionEventHandler_Access_Array;
   type ViewPositionEventHandler_Access_Array_Access_Array is array (Natural range <>) of ViewPositionEventHandler_Access_Array_Access;
   type ViewPositionEventHandler_Access_Array_Access_Array_Access is access all ViewPositionEventHandler_Access_Array_Access_Array;
   type ViewPositionEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewPositionEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewPositionEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewPositionEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewPositionEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewPositionEventHandler_Access_Array_Access is (if Value /= null and then Value.all in ViewPositionEventHandler_Access_Array_Object'Class then ViewPositionEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type ViewPositionEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewPositionEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewPositionEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewPositionEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewPositionEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewPositionEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ViewPositionEventHandler_Access_Array_Access_Array_Object'Class then ViewPositionEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.view.event.ViewPositionEventHandler_Package_References;

with org.allbinary.view.event.ViewPositionEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.view.event.ViewPositionEventHandler_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
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


   subtype ViewPositionEventHandler_Access is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access;
   function "=" (Left, Right : ViewPositionEventHandler_Access) return Boolean renames org.allbinary.view.event.ViewPositionEventHandler_Package_References."=";
   subtype ViewPositionEventHandler_Access_Array is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array;
   function "=" (Left, Right : ViewPositionEventHandler_Access_Array) return Boolean renames org.allbinary.view.event.ViewPositionEventHandler_Package_References."=";
   subtype ViewPositionEventHandler_Access_Array_Access is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array_Access;
   function "=" (Left, Right : ViewPositionEventHandler_Access_Array_Access) return Boolean renames org.allbinary.view.event.ViewPositionEventHandler_Package_References."=";
   function Java_Box (Value : ViewPositionEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.event.ViewPositionEventHandler_Package_References.Java_Box;
   function Java_Unbox_ViewPositionEventHandler_Access_Array (Value : access Java_Object'Class) return ViewPositionEventHandler_Access_Array_Access renames org.allbinary.view.event.ViewPositionEventHandler_Package_References.Java_Unbox_ViewPositionEventHandler_Access_Array;
   subtype ViewPositionEventHandler_Access_Array_Access_Array is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.view.event.ViewPositionEventHandler_Package_References."=";
   subtype ViewPositionEventHandler_Access_Array_Access_Array_Access is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.event.ViewPositionEventHandler_Package_References."=";
   function Java_Box (Value : ViewPositionEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.event.ViewPositionEventHandler_Package_References.Java_Box;
   function Java_Unbox_ViewPositionEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return ViewPositionEventHandler_Access_Array_Access_Array_Access renames org.allbinary.view.event.ViewPositionEventHandler_Package_References.Java_Unbox_ViewPositionEventHandler_Access_Array_Access_Array;

   type ViewPositionEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   SINGLETON : ViewPositionEventHandler_Access;

   procedure Initialize (This : in out ViewPositionEventHandler'Class);
   function Create return ViewPositionEventHandler_Access;
   function getInstance return ViewPositionEventHandler_Access;
   procedure addListener (This : in out ViewPositionEventHandler; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure removeAllListeners (This : in out ViewPositionEventHandler);
   procedure removeListener (This : in out ViewPositionEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out ViewPositionEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out ViewPositionEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.view.event.ViewPositionEventHandler_Package;


