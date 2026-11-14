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
limited with org.allbinary.layer.event.LayerManagerEventHandler_Package;
package org.allbinary.layer.event.LayerManagerEventHandler_Package_References is
   type LayerManagerEventHandler_Access is access all org.allbinary.layer.event.LayerManagerEventHandler_Package.LayerManagerEventHandler'Class;
   type LayerManagerEventHandler_Access_Array is array (Natural range <>) of LayerManagerEventHandler_Access;
   type LayerManagerEventHandler_Access_Array_Access is access all LayerManagerEventHandler_Access_Array;
   type LayerManagerEventHandler_Access_Array_Access_Array is array (Natural range <>) of LayerManagerEventHandler_Access_Array_Access;
   type LayerManagerEventHandler_Access_Array_Access_Array_Access is access all LayerManagerEventHandler_Access_Array_Access_Array;
   type LayerManagerEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerManagerEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerManagerEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerManagerEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerManagerEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerManagerEventHandler_Access_Array_Access is (if Value /= null and then Value.all in LayerManagerEventHandler_Access_Array_Object'Class then LayerManagerEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type LayerManagerEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerManagerEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerManagerEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerManagerEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerManagerEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerManagerEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LayerManagerEventHandler_Access_Array_Access_Array_Object'Class then LayerManagerEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.event.LayerManagerEventHandler_Package_References;

with org.allbinary.layer.event.LayerManagerEventHandler_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package_References;

package org.allbinary.layer.event.LayerManagerEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype LayerManagerEventListener_Access is org.allbinary.layer.event.LayerManagerEventListener_Package_References.LayerManagerEventListener_Access;
   use type LayerManagerEventListener_Access;
   subtype LayerManagerEventListener_Access_Array is org.allbinary.layer.event.LayerManagerEventListener_Package_References.LayerManagerEventListener_Access_Array;
   use type LayerManagerEventListener_Access_Array;
   subtype LayerManagerEventListener_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventListener_Package_References.LayerManagerEventListener_Access_Array_Access;
   use type LayerManagerEventListener_Access_Array_Access;
   subtype LayerManagerEventListener_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEventListener_Package_References.LayerManagerEventListener_Access_Array_Access_Array;
   use type LayerManagerEventListener_Access_Array_Access_Array;
   subtype LayerManagerEventListener_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventListener_Package_References.LayerManagerEventListener_Access_Array_Access_Array_Access;
   use type LayerManagerEventListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerManagerEventHandler_Access is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access;
   function "=" (Left, Right : LayerManagerEventHandler_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References."=";
   subtype LayerManagerEventHandler_Access_Array is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array;
   function "=" (Left, Right : LayerManagerEventHandler_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References."=";
   subtype LayerManagerEventHandler_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEventHandler_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References."=";
   function Java_Box (Value : LayerManagerEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References.Java_Box;
   function Java_Unbox_LayerManagerEventHandler_Access_Array (Value : access Java_Object'Class) return LayerManagerEventHandler_Access_Array_Access renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References.Java_Unbox_LayerManagerEventHandler_Access_Array;
   subtype LayerManagerEventHandler_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References."=";
   subtype LayerManagerEventHandler_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References."=";
   function Java_Box (Value : LayerManagerEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References.Java_Box;
   function Java_Unbox_LayerManagerEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return LayerManagerEventHandler_Access_Array_Access_Array_Access renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References.Java_Unbox_LayerManagerEventHandler_Access_Array_Access_Array;

   type LayerManagerEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
      CREATE : Unbounded_String;
      DELETE : Unbounded_String;
   end record;
   instance : LayerManagerEventHandler_Access;

   procedure Initialize (This : in out LayerManagerEventHandler'Class);
   function Create return LayerManagerEventHandler_Access;
   function getInstance return LayerManagerEventHandler_Access;
   procedure addListener (This : in out LayerManagerEventHandler; layerManagerEventListener_Param : access LayerManagerEventListener_Package.LayerManagerEventListener'Class);
   procedure removeAllListeners (This : in out LayerManagerEventHandler);
   procedure removeListener (This : in out LayerManagerEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out LayerManagerEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure fireDeleteEvent (This : in out LayerManagerEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out LayerManagerEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.layer.event.LayerManagerEventHandler_Package;


