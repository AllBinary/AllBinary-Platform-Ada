--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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

limited with org.allbinary.android.input.motion.MotionEventProcessor_Package;
package org.allbinary.android.input.motion.MotionEventProcessor_Package_References is
   type MotionEventProcessor_Access is access all org.allbinary.android.input.motion.MotionEventProcessor_Package.MotionEventProcessor'Class;
   type MotionEventProcessor_Access_Array is array (Natural range <>) of MotionEventProcessor_Access;
   type MotionEventProcessor_Access_Array_Access is access all MotionEventProcessor_Access_Array;
   type MotionEventProcessor_Access_Array_Access_Array is array (Natural range <>) of MotionEventProcessor_Access_Array_Access;
   type MotionEventProcessor_Access_Array_Access_Array_Access is access all MotionEventProcessor_Access_Array_Access_Array;
end org.allbinary.android.input.motion.MotionEventProcessor_Package_References;

with org.allbinary.android.input.motion.MotionEventProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.view.MotionEvent_Package;
with android.view.MotionEvent_Package_References;

package org.allbinary.android.input.motion.MotionEventProcessor_Package is

   package MotionEvent_Package renames Standard.android.view.MotionEvent_Package;
   package Reference_Types is
   subtype MotionEvent_Access is android.view.MotionEvent_Package_References.MotionEvent_Access;
   use type MotionEvent_Access;
   subtype MotionEvent_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array;
   use type MotionEvent_Access_Array;
   subtype MotionEvent_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access;
   use type MotionEvent_Access_Array_Access;
   subtype MotionEvent_Access_Array_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array;
   use type MotionEvent_Access_Array_Access_Array;
   subtype MotionEvent_Access_Array_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array_Access;
   use type MotionEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MotionEventProcessor_Access is org.allbinary.android.input.motion.MotionEventProcessor_Package_References.MotionEventProcessor_Access;
   function "=" (Left, Right : MotionEventProcessor_Access) return Boolean renames org.allbinary.android.input.motion.MotionEventProcessor_Package_References."=";
   subtype MotionEventProcessor_Access_Array is org.allbinary.android.input.motion.MotionEventProcessor_Package_References.MotionEventProcessor_Access_Array;
   function "=" (Left, Right : MotionEventProcessor_Access_Array) return Boolean renames org.allbinary.android.input.motion.MotionEventProcessor_Package_References."=";
   subtype MotionEventProcessor_Access_Array_Access is org.allbinary.android.input.motion.MotionEventProcessor_Package_References.MotionEventProcessor_Access_Array_Access;
   function "=" (Left, Right : MotionEventProcessor_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.MotionEventProcessor_Package_References."=";
   subtype MotionEventProcessor_Access_Array_Access_Array is org.allbinary.android.input.motion.MotionEventProcessor_Package_References.MotionEventProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MotionEventProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.MotionEventProcessor_Package_References."=";
   subtype MotionEventProcessor_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.MotionEventProcessor_Package_References.MotionEventProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionEventProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.MotionEventProcessor_Package_References."=";

   type MotionEventProcessor is new Java_Object with null record;

   procedure Initialize (This : in out MotionEventProcessor'Class);
   function Create return MotionEventProcessor_Access;
   procedure process (This : in out MotionEventProcessor; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class);

end org.allbinary.android.input.motion.MotionEventProcessor_Package;


