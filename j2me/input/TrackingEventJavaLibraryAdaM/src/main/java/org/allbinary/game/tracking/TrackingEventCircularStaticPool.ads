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
limited with org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package;
package org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References is
   type TrackingEventCircularStaticPool_Access is access all org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package.TrackingEventCircularStaticPool'Class;
   type TrackingEventCircularStaticPool_Access_Array is array (Natural range <>) of TrackingEventCircularStaticPool_Access;
   type TrackingEventCircularStaticPool_Access_Array_Access is access all TrackingEventCircularStaticPool_Access_Array;
   type TrackingEventCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of TrackingEventCircularStaticPool_Access_Array_Access;
   type TrackingEventCircularStaticPool_Access_Array_Access_Array_Access is access all TrackingEventCircularStaticPool_Access_Array_Access_Array;
   type TrackingEventCircularStaticPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackingEventCircularStaticPool_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackingEventCircularStaticPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackingEventCircularStaticPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackingEventCircularStaticPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackingEventCircularStaticPool_Access_Array_Access is (if Value /= null and then Value.all in TrackingEventCircularStaticPool_Access_Array_Object'Class then TrackingEventCircularStaticPool_Access_Array_Object'Class (Value.all).Value else null);
   type TrackingEventCircularStaticPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackingEventCircularStaticPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackingEventCircularStaticPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackingEventCircularStaticPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackingEventCircularStaticPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackingEventCircularStaticPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TrackingEventCircularStaticPool_Access_Array_Access_Array_Object'Class then TrackingEventCircularStaticPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References;

with org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References;
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
limited with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References;
limited with org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEvent_Package_References;

package org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryEventCircularPool_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
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
   subtype AllBinaryEventCircularPool_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access;
   use type AllBinaryEventCircularPool_Access;
   subtype AllBinaryEventCircularPool_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array;
   use type AllBinaryEventCircularPool_Access_Array;
   subtype AllBinaryEventCircularPool_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access;
   use type AllBinaryEventCircularPool_Access_Array_Access;
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array;
   use type AllBinaryEventCircularPool_Access_Array_Access_Array;
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   use type AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   subtype TrackingEvent_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access;
   use type TrackingEvent_Access;
   subtype TrackingEvent_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array;
   use type TrackingEvent_Access_Array;
   subtype TrackingEvent_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access;
   use type TrackingEvent_Access_Array_Access;
   subtype TrackingEvent_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array;
   use type TrackingEvent_Access_Array_Access_Array;
   subtype TrackingEvent_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array_Access;
   use type TrackingEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TrackingEventCircularStaticPool_Access is org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References.TrackingEventCircularStaticPool_Access;
   function "=" (Left, Right : TrackingEventCircularStaticPool_Access) return Boolean renames org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References."=";
   subtype TrackingEventCircularStaticPool_Access_Array is org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References.TrackingEventCircularStaticPool_Access_Array;
   function "=" (Left, Right : TrackingEventCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References."=";
   subtype TrackingEventCircularStaticPool_Access_Array_Access is org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References.TrackingEventCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : TrackingEventCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References."=";
   function Java_Box (Value : TrackingEventCircularStaticPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_TrackingEventCircularStaticPool_Access_Array (Value : access Java_Object'Class) return TrackingEventCircularStaticPool_Access_Array_Access renames org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References.Java_Unbox_TrackingEventCircularStaticPool_Access_Array;
   subtype TrackingEventCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References.TrackingEventCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : TrackingEventCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References."=";
   subtype TrackingEventCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References.TrackingEventCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackingEventCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References."=";
   function Java_Box (Value : TrackingEventCircularStaticPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_TrackingEventCircularStaticPool_Access_Array_Access_Array (Value : access Java_Object'Class) return TrackingEventCircularStaticPool_Access_Array_Access_Array_Access renames org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package_References.Java_Unbox_TrackingEventCircularStaticPool_Access_Array_Access_Array;

   type TrackingEventCircularStaticPool is new Java_Object with record
      EVENT_POOL : AllBinaryEventCircularPool_Access;
   end record;
   instance : TrackingEventCircularStaticPool_Access;

   procedure Initialize (This : in out TrackingEventCircularStaticPool'Class);
   function Create return TrackingEventCircularStaticPool_Access;
   function getInstance return TrackingEventCircularStaticPool_Access;
   procedure init (This : in out TrackingEventCircularStaticPool);
   function getNextInstance (This : in out TrackingEventCircularStaticPool; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return TrackingEvent_Access;
   procedure getNextInstance (This : in out TrackingEventCircularStaticPool; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.tracking.TrackingEventCircularStaticPool_Package;


