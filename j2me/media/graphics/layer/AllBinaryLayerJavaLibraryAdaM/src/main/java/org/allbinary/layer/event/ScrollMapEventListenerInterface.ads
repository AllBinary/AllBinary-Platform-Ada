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
limited with org.allbinary.layer.event.ScrollMapEventListenerInterface_Package;
package org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References is
   type ScrollMapEventListenerInterface_Access is access all org.allbinary.layer.event.ScrollMapEventListenerInterface_Package.ScrollMapEventListenerInterface'Class;
   type ScrollMapEventListenerInterface_Access_Array is array (Natural range <>) of ScrollMapEventListenerInterface_Access;
   type ScrollMapEventListenerInterface_Access_Array_Access is access all ScrollMapEventListenerInterface_Access_Array;
   type ScrollMapEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of ScrollMapEventListenerInterface_Access_Array_Access;
   type ScrollMapEventListenerInterface_Access_Array_Access_Array_Access is access all ScrollMapEventListenerInterface_Access_Array_Access_Array;
   type ScrollMapEventListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrollMapEventListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrollMapEventListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrollMapEventListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrollMapEventListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrollMapEventListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in ScrollMapEventListenerInterface_Access_Array_Object'Class then ScrollMapEventListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ScrollMapEventListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrollMapEventListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrollMapEventListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrollMapEventListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrollMapEventListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrollMapEventListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScrollMapEventListenerInterface_Access_Array_Access_Array_Object'Class then ScrollMapEventListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References;

with org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.layer.event.ScrollMapEvent_Package;
with org.allbinary.layer.event.ScrollMapEvent_Package_References;

package org.allbinary.layer.event.ScrollMapEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype ScrollMapEvent_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access;
   use type ScrollMapEvent_Access;
   subtype ScrollMapEvent_Access_Array is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array;
   use type ScrollMapEvent_Access_Array;
   subtype ScrollMapEvent_Access_Array_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access;
   use type ScrollMapEvent_Access_Array_Access;
   subtype ScrollMapEvent_Access_Array_Access_Array is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access_Array;
   use type ScrollMapEvent_Access_Array_Access_Array;
   subtype ScrollMapEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access_Array_Access;
   use type ScrollMapEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ScrollMapEventListenerInterface is interface and EventListenerInterface;
   subtype ScrollMapEventListenerInterface_Access is org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References.ScrollMapEventListenerInterface_Access;
   function "=" (Left, Right : ScrollMapEventListenerInterface_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References."=";
   subtype ScrollMapEventListenerInterface_Access_Array is org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References.ScrollMapEventListenerInterface_Access_Array;
   function "=" (Left, Right : ScrollMapEventListenerInterface_Access_Array) return Boolean renames org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References."=";
   subtype ScrollMapEventListenerInterface_Access_Array_Access is org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References.ScrollMapEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : ScrollMapEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References."=";
   function Java_Box (Value : ScrollMapEventListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_ScrollMapEventListenerInterface_Access_Array (Value : access Java_Object'Class) return ScrollMapEventListenerInterface_Access_Array_Access renames org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References.Java_Unbox_ScrollMapEventListenerInterface_Access_Array;
   subtype ScrollMapEventListenerInterface_Access_Array_Access_Array is org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References.ScrollMapEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollMapEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References."=";
   subtype ScrollMapEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References.ScrollMapEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollMapEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References."=";
   function Java_Box (Value : ScrollMapEventListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_ScrollMapEventListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ScrollMapEventListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.layer.event.ScrollMapEventListenerInterface_Package_References.Java_Unbox_ScrollMapEventListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ScrollMapEventListenerInterface (Value : ScrollMapEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onMoveEvent (This : in out ScrollMapEventListenerInterface; layerManagerEvent_Param : access ScrollMapEvent_Package.ScrollMapEvent'Class) is abstract;

end org.allbinary.layer.event.ScrollMapEventListenerInterface_Package;


