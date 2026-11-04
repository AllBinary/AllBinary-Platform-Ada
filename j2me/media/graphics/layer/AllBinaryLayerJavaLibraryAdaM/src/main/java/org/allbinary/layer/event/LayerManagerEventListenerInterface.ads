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

limited with org.allbinary.layer.event.LayerManagerEventListenerInterface_Package;
package org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References is
   type LayerManagerEventListenerInterface_Access is access all org.allbinary.layer.event.LayerManagerEventListenerInterface_Package.LayerManagerEventListenerInterface'Class;
   type LayerManagerEventListenerInterface_Access_Array is array (Natural range <>) of LayerManagerEventListenerInterface_Access;
   type LayerManagerEventListenerInterface_Access_Array_Access is access all LayerManagerEventListenerInterface_Access_Array;
   type LayerManagerEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of LayerManagerEventListenerInterface_Access_Array_Access;
   type LayerManagerEventListenerInterface_Access_Array_Access_Array_Access is access all LayerManagerEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References;

with org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package_References;

package org.allbinary.layer.event.LayerManagerEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
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


   type LayerManagerEventListenerInterface is interface and EventListenerInterface;
   subtype LayerManagerEventListenerInterface_Access is org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References.LayerManagerEventListenerInterface_Access;
   function "=" (Left, Right : LayerManagerEventListenerInterface_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References."=";
   subtype LayerManagerEventListenerInterface_Access_Array is org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References.LayerManagerEventListenerInterface_Access_Array;
   function "=" (Left, Right : LayerManagerEventListenerInterface_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References."=";
   subtype LayerManagerEventListenerInterface_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References.LayerManagerEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References."=";
   subtype LayerManagerEventListenerInterface_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References.LayerManagerEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References."=";
   subtype LayerManagerEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References.LayerManagerEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_LayerManagerEventListenerInterface (Value : LayerManagerEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onCreateLayerManagerEvent (This : in out LayerManagerEventListenerInterface; layerManagerEvent_Param : access LayerManagerEvent_Package.LayerManagerEvent'Class) is abstract;
   procedure onDeleteLayerManagerEvent (This : in out LayerManagerEventListenerInterface; layerManagerEvent_Param : access LayerManagerEvent_Package.LayerManagerEvent'Class) is abstract;

end org.allbinary.layer.event.LayerManagerEventListenerInterface_Package;


