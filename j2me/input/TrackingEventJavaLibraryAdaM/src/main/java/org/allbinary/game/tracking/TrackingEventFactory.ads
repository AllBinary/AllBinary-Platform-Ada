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
limited with org.allbinary.game.tracking.TrackingEventFactory_Package;
package org.allbinary.game.tracking.TrackingEventFactory_Package_References is
   type TrackingEventFactory_Access is access all org.allbinary.game.tracking.TrackingEventFactory_Package.TrackingEventFactory'Class;
   type TrackingEventFactory_Access_Array is array (Natural range <>) of TrackingEventFactory_Access;
   type TrackingEventFactory_Access_Array_Access is access all TrackingEventFactory_Access_Array;
   type TrackingEventFactory_Access_Array_Access_Array is array (Natural range <>) of TrackingEventFactory_Access_Array_Access;
   type TrackingEventFactory_Access_Array_Access_Array_Access is access all TrackingEventFactory_Access_Array_Access_Array;
   type TrackingEventFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackingEventFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackingEventFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackingEventFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackingEventFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackingEventFactory_Access_Array_Access is (if Value /= null and then Value.all in TrackingEventFactory_Access_Array_Object'Class then TrackingEventFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TrackingEventFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackingEventFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackingEventFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackingEventFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackingEventFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackingEventFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TrackingEventFactory_Access_Array_Access_Array_Object'Class then TrackingEventFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.tracking.TrackingEventFactory_Package_References;

with org.allbinary.game.tracking.TrackingEventFactory_Package_References;
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
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package; use org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

package org.allbinary.game.tracking.TrackingEventFactory_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package AllBinaryEventObjectFactoryInterface_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype TrackingEventFactory_Access is org.allbinary.game.tracking.TrackingEventFactory_Package_References.TrackingEventFactory_Access;
   function "=" (Left, Right : TrackingEventFactory_Access) return Boolean renames org.allbinary.game.tracking.TrackingEventFactory_Package_References."=";
   subtype TrackingEventFactory_Access_Array is org.allbinary.game.tracking.TrackingEventFactory_Package_References.TrackingEventFactory_Access_Array;
   function "=" (Left, Right : TrackingEventFactory_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEventFactory_Package_References."=";
   subtype TrackingEventFactory_Access_Array_Access is org.allbinary.game.tracking.TrackingEventFactory_Package_References.TrackingEventFactory_Access_Array_Access;
   function "=" (Left, Right : TrackingEventFactory_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEventFactory_Package_References."=";
   function Java_Box (Value : TrackingEventFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.tracking.TrackingEventFactory_Package_References.Java_Box;
   function Java_Unbox_TrackingEventFactory_Access_Array (Value : access Java_Object'Class) return TrackingEventFactory_Access_Array_Access renames org.allbinary.game.tracking.TrackingEventFactory_Package_References.Java_Unbox_TrackingEventFactory_Access_Array;
   subtype TrackingEventFactory_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEventFactory_Package_References.TrackingEventFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TrackingEventFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEventFactory_Package_References."=";
   subtype TrackingEventFactory_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEventFactory_Package_References.TrackingEventFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackingEventFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEventFactory_Package_References."=";
   function Java_Box (Value : TrackingEventFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.tracking.TrackingEventFactory_Package_References.Java_Box;
   function Java_Unbox_TrackingEventFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TrackingEventFactory_Access_Array_Access_Array_Access renames org.allbinary.game.tracking.TrackingEventFactory_Package_References.Java_Unbox_TrackingEventFactory_Access_Array_Access_Array;

   type TrackingEventFactory is new Java_Object and AllBinaryEventObjectFactoryInterface with null record;

   procedure Initialize (This : in out TrackingEventFactory'Class);
   function Create return TrackingEventFactory_Access;
   function getInstance (This : in out TrackingEventFactory) return AllBinaryEventObject_Access;

end org.allbinary.game.tracking.TrackingEventFactory_Package;


