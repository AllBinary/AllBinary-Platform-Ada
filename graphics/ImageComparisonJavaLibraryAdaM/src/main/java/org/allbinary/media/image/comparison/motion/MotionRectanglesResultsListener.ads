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
limited with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package;
package org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References is
   type MotionRectanglesResultsListener_Access is access all org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package.MotionRectanglesResultsListener'Class;
   type MotionRectanglesResultsListener_Access_Array is array (Natural range <>) of MotionRectanglesResultsListener_Access;
   type MotionRectanglesResultsListener_Access_Array_Access is access all MotionRectanglesResultsListener_Access_Array;
   type MotionRectanglesResultsListener_Access_Array_Access_Array is array (Natural range <>) of MotionRectanglesResultsListener_Access_Array_Access;
   type MotionRectanglesResultsListener_Access_Array_Access_Array_Access is access all MotionRectanglesResultsListener_Access_Array_Access_Array;
   type MotionRectanglesResultsListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionRectanglesResultsListener_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionRectanglesResultsListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionRectanglesResultsListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionRectanglesResultsListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionRectanglesResultsListener_Access_Array_Access is (if Value /= null and then Value.all in MotionRectanglesResultsListener_Access_Array_Object'Class then MotionRectanglesResultsListener_Access_Array_Object'Class (Value.all).Value else null);
   type MotionRectanglesResultsListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionRectanglesResultsListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionRectanglesResultsListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionRectanglesResultsListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionRectanglesResultsListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionRectanglesResultsListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MotionRectanglesResultsListener_Access_Array_Access_Array_Object'Class then MotionRectanglesResultsListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References;

with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.BasicEventListenerInterface_Package; use org.allbinary.logic.util.event.BasicEventListenerInterface_Package;
limited with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References;

package org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package is

   package BasicEventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.BasicEventListenerInterface_Package;
   package Reference_Types is
   subtype MotionRectanglesResultsEvent_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access;
   use type MotionRectanglesResultsEvent_Access;
   subtype MotionRectanglesResultsEvent_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array;
   use type MotionRectanglesResultsEvent_Access_Array;
   subtype MotionRectanglesResultsEvent_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access;
   use type MotionRectanglesResultsEvent_Access_Array_Access;
   subtype MotionRectanglesResultsEvent_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access_Array;
   use type MotionRectanglesResultsEvent_Access_Array_Access_Array;
   subtype MotionRectanglesResultsEvent_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access_Array_Access;
   use type MotionRectanglesResultsEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type MotionRectanglesResultsListener is interface and BasicEventListenerInterface;
   subtype MotionRectanglesResultsListener_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References.MotionRectanglesResultsListener_Access;
   function "=" (Left, Right : MotionRectanglesResultsListener_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References."=";
   subtype MotionRectanglesResultsListener_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References.MotionRectanglesResultsListener_Access_Array;
   function "=" (Left, Right : MotionRectanglesResultsListener_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References."=";
   subtype MotionRectanglesResultsListener_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References.MotionRectanglesResultsListener_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesResultsListener_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References."=";
   function Java_Box (Value : MotionRectanglesResultsListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References.Java_Box;
   function Java_Unbox_MotionRectanglesResultsListener_Access_Array (Value : access Java_Object'Class) return MotionRectanglesResultsListener_Access_Array_Access renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References.Java_Unbox_MotionRectanglesResultsListener_Access_Array;
   subtype MotionRectanglesResultsListener_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References.MotionRectanglesResultsListener_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectanglesResultsListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References."=";
   subtype MotionRectanglesResultsListener_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References.MotionRectanglesResultsListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesResultsListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References."=";
   function Java_Box (Value : MotionRectanglesResultsListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References.Java_Box;
   function Java_Unbox_MotionRectanglesResultsListener_Access_Array_Access_Array (Value : access Java_Object'Class) return MotionRectanglesResultsListener_Access_Array_Access_Array_Access renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package_References.Java_Unbox_MotionRectanglesResultsListener_Access_Array_Access_Array;
   function Java_Object_Access_From_MotionRectanglesResultsListener (Value : MotionRectanglesResultsListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onMotionRectanglesImageComparisonResultsEvent (This : in out MotionRectanglesResultsListener; motionRectanglesImageComparisonResultsEvent_Param : access MotionRectanglesResultsEvent_Package.MotionRectanglesResultsEvent'Class) is abstract;

end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package;


