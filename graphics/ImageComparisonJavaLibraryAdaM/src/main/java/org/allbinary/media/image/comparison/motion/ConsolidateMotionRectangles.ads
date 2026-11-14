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
limited with org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package;
package org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References is
   type ConsolidateMotionRectangles_Access is access all org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package.ConsolidateMotionRectangles'Class;
   type ConsolidateMotionRectangles_Access_Array is array (Natural range <>) of ConsolidateMotionRectangles_Access;
   type ConsolidateMotionRectangles_Access_Array_Access is access all ConsolidateMotionRectangles_Access_Array;
   type ConsolidateMotionRectangles_Access_Array_Access_Array is array (Natural range <>) of ConsolidateMotionRectangles_Access_Array_Access;
   type ConsolidateMotionRectangles_Access_Array_Access_Array_Access is access all ConsolidateMotionRectangles_Access_Array_Access_Array;
   type ConsolidateMotionRectangles_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ConsolidateMotionRectangles_Access_Array_Access;
   end record;
   function Java_Box (Value : ConsolidateMotionRectangles_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ConsolidateMotionRectangles_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ConsolidateMotionRectangles_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ConsolidateMotionRectangles_Access_Array_Access is (if Value /= null and then Value.all in ConsolidateMotionRectangles_Access_Array_Object'Class then ConsolidateMotionRectangles_Access_Array_Object'Class (Value.all).Value else null);
   type ConsolidateMotionRectangles_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ConsolidateMotionRectangles_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ConsolidateMotionRectangles_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ConsolidateMotionRectangles_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ConsolidateMotionRectangles_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ConsolidateMotionRectangles_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ConsolidateMotionRectangles_Access_Array_Access_Array_Object'Class then ConsolidateMotionRectangles_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References;

with org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;

package org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ConsolidateMotionRectangles_Access is org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References.ConsolidateMotionRectangles_Access;
   function "=" (Left, Right : ConsolidateMotionRectangles_Access) return Boolean renames org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References."=";
   subtype ConsolidateMotionRectangles_Access_Array is org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References.ConsolidateMotionRectangles_Access_Array;
   function "=" (Left, Right : ConsolidateMotionRectangles_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References."=";
   subtype ConsolidateMotionRectangles_Access_Array_Access is org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References.ConsolidateMotionRectangles_Access_Array_Access;
   function "=" (Left, Right : ConsolidateMotionRectangles_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References."=";
   function Java_Box (Value : ConsolidateMotionRectangles_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References.Java_Box;
   function Java_Unbox_ConsolidateMotionRectangles_Access_Array (Value : access Java_Object'Class) return ConsolidateMotionRectangles_Access_Array_Access renames org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References.Java_Unbox_ConsolidateMotionRectangles_Access_Array;
   subtype ConsolidateMotionRectangles_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References.ConsolidateMotionRectangles_Access_Array_Access_Array;
   function "=" (Left, Right : ConsolidateMotionRectangles_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References."=";
   subtype ConsolidateMotionRectangles_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References.ConsolidateMotionRectangles_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ConsolidateMotionRectangles_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References."=";
   function Java_Box (Value : ConsolidateMotionRectangles_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References.Java_Box;
   function Java_Unbox_ConsolidateMotionRectangles_Access_Array_Access_Array (Value : access Java_Object'Class) return ConsolidateMotionRectangles_Access_Array_Access_Array_Access renames org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package_References.Java_Unbox_ConsolidateMotionRectangles_Access_Array_Access_Array;

   type ConsolidateMotionRectangles is new MotionRectangles with record
      logUtil : LogUtil_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out ConsolidateMotionRectangles'Class; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class);
   function Create (motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class) return ConsolidateMotionRectangles_Access;
   procedure consolidateMotionRectangles_Method (This : in out ConsolidateMotionRectangles);
   procedure remove (This : in out ConsolidateMotionRectangles; removeVector_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package;


