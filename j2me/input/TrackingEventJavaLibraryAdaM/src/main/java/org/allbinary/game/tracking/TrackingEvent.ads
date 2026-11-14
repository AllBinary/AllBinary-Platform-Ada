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
limited with org.allbinary.game.tracking.TrackingEvent_Package;
package org.allbinary.game.tracking.TrackingEvent_Package_References is
   type TrackingEvent_Access is access all org.allbinary.game.tracking.TrackingEvent_Package.TrackingEvent'Class;
   type TrackingEvent_Access_Array is array (Natural range <>) of TrackingEvent_Access;
   type TrackingEvent_Access_Array_Access is access all TrackingEvent_Access_Array;
   type TrackingEvent_Access_Array_Access_Array is array (Natural range <>) of TrackingEvent_Access_Array_Access;
   type TrackingEvent_Access_Array_Access_Array_Access is access all TrackingEvent_Access_Array_Access_Array;
   type TrackingEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackingEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackingEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackingEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackingEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackingEvent_Access_Array_Access is (if Value /= null and then Value.all in TrackingEvent_Access_Array_Object'Class then TrackingEvent_Access_Array_Object'Class (Value.all).Value else null);
   type TrackingEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackingEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackingEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackingEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackingEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackingEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TrackingEvent_Access_Array_Access_Array_Object'Class then TrackingEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.tracking.TrackingEvent_Package_References;

with org.allbinary.game.tracking.TrackingEvent_Package_References;
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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.tracking.TrackingEvent_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype TrackingEvent_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access;
   function "=" (Left, Right : TrackingEvent_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   function Java_Box (Value : TrackingEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.tracking.TrackingEvent_Package_References.Java_Box;
   function Java_Unbox_TrackingEvent_Access_Array (Value : access Java_Object'Class) return TrackingEvent_Access_Array_Access renames org.allbinary.game.tracking.TrackingEvent_Package_References.Java_Unbox_TrackingEvent_Access_Array;
   subtype TrackingEvent_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   function Java_Box (Value : TrackingEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.tracking.TrackingEvent_Package_References.Java_Box;
   function Java_Unbox_TrackingEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return TrackingEvent_Access_Array_Access_Array_Access renames org.allbinary.game.tracking.TrackingEvent_Package_References.Java_Unbox_TrackingEvent_Access_Array_Access_Array;

   type TrackingEvent is new AllBinaryEventObject with record
      layerInterface : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out TrackingEvent'Class; allBinaryLayerInterface_Param : access Java_Object'Class);
   function Create (allBinaryLayerInterface_Param : access Java_Object'Class) return TrackingEvent_Access;
   procedure init (This : in out TrackingEvent; anyType_Param : access Java_Object'Class);
   function getLayerInterface (This : in out TrackingEvent) return AllBinaryLayer_Access;
   procedure setLayerInterface (This : in out TrackingEvent; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure setLayerInterfaceForCircularStaticPool (This : in out TrackingEvent; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function toString (This : in out TrackingEvent) return Unbounded_String;
   procedure init (This : in out TrackingEvent; Value : Unbounded_String);

end org.allbinary.game.tracking.TrackingEvent_Package;


