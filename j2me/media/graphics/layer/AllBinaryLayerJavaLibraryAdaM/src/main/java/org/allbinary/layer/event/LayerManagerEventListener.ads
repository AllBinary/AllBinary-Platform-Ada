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

limited with org.allbinary.layer.event.LayerManagerEventListener_Package;
package org.allbinary.layer.event.LayerManagerEventListener_Package_References is
   type LayerManagerEventListener_Access is access all org.allbinary.layer.event.LayerManagerEventListener_Package.LayerManagerEventListener'Class;
   type LayerManagerEventListener_Access_Array is array (Natural range <>) of LayerManagerEventListener_Access;
   type LayerManagerEventListener_Access_Array_Access is access all LayerManagerEventListener_Access_Array;
   type LayerManagerEventListener_Access_Array_Access_Array is array (Natural range <>) of LayerManagerEventListener_Access_Array_Access;
   type LayerManagerEventListener_Access_Array_Access_Array_Access is access all LayerManagerEventListener_Access_Array_Access_Array;
end org.allbinary.layer.event.LayerManagerEventListener_Package_References;

with org.allbinary.layer.event.LayerManagerEventListener_Package_References;
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
with org.allbinary.layer.event.LayerManagerEventListenerInterface_Package; use org.allbinary.layer.event.LayerManagerEventListenerInterface_Package;
limited with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package_References;

package org.allbinary.layer.event.LayerManagerEventListener_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
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
   subtype LayerManagerEvent_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access;
   use type LayerManagerEvent_Access;
   subtype LayerManagerEvent_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array;
   use type LayerManagerEvent_Access_Array;
   subtype LayerManagerEvent_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access;
   use type LayerManagerEvent_Access_Array_Access;
   subtype LayerManagerEvent_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array;
   use type LayerManagerEvent_Access_Array_Access_Array;
   subtype LayerManagerEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array_Access;
   use type LayerManagerEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerManagerEventListener_Access is org.allbinary.layer.event.LayerManagerEventListener_Package_References.LayerManagerEventListener_Access;
   function "=" (Left, Right : LayerManagerEventListener_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventListener_Package_References."=";
   subtype LayerManagerEventListener_Access_Array is org.allbinary.layer.event.LayerManagerEventListener_Package_References.LayerManagerEventListener_Access_Array;
   function "=" (Left, Right : LayerManagerEventListener_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEventListener_Package_References."=";
   subtype LayerManagerEventListener_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventListener_Package_References.LayerManagerEventListener_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEventListener_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventListener_Package_References."=";
   subtype LayerManagerEventListener_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEventListener_Package_References.LayerManagerEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEventListener_Package_References."=";
   subtype LayerManagerEventListener_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventListener_Package_References.LayerManagerEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventListener_Package_References."=";

   type LayerManagerEventListener is new Java_Object and LayerManagerEventListenerInterface with null record;

   procedure Initialize (This : in out LayerManagerEventListener'Class);
   function Create return LayerManagerEventListener_Access;
   procedure onEvent (This : in out LayerManagerEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onCreateLayerManagerEvent (This : in out LayerManagerEventListener; layerManagerEvent_Param : access LayerManagerEvent_Package.LayerManagerEvent'Class);
   procedure onDeleteLayerManagerEvent (This : in out LayerManagerEventListener; layerManagerEvent_Param : access LayerManagerEvent_Package.LayerManagerEvent'Class);

end org.allbinary.layer.event.LayerManagerEventListener_Package;


