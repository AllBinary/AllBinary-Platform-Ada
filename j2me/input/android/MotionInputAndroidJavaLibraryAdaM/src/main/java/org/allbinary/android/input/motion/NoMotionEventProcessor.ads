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

limited with org.allbinary.android.input.motion.NoMotionEventProcessor_Package;
package org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References is
   type NoMotionEventProcessor_Access is access all org.allbinary.android.input.motion.NoMotionEventProcessor_Package.NoMotionEventProcessor'Class;
   type NoMotionEventProcessor_Access_Array is array (Natural range <>) of NoMotionEventProcessor_Access;
   type NoMotionEventProcessor_Access_Array_Access is access all NoMotionEventProcessor_Access_Array;
   type NoMotionEventProcessor_Access_Array_Access_Array is array (Natural range <>) of NoMotionEventProcessor_Access_Array_Access;
   type NoMotionEventProcessor_Access_Array_Access_Array_Access is access all NoMotionEventProcessor_Access_Array_Access_Array;
end org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References;

with org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.android.input.motion.MotionEventProcessor_Package; use org.allbinary.android.input.motion.MotionEventProcessor_Package;

package org.allbinary.android.input.motion.NoMotionEventProcessor_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NoMotionEventProcessor_Access is org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References.NoMotionEventProcessor_Access;
   function "=" (Left, Right : NoMotionEventProcessor_Access) return Boolean renames org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References."=";
   subtype NoMotionEventProcessor_Access_Array is org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References.NoMotionEventProcessor_Access_Array;
   function "=" (Left, Right : NoMotionEventProcessor_Access_Array) return Boolean renames org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References."=";
   subtype NoMotionEventProcessor_Access_Array_Access is org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References.NoMotionEventProcessor_Access_Array_Access;
   function "=" (Left, Right : NoMotionEventProcessor_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References."=";
   subtype NoMotionEventProcessor_Access_Array_Access_Array is org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References.NoMotionEventProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : NoMotionEventProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References."=";
   subtype NoMotionEventProcessor_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References.NoMotionEventProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoMotionEventProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.NoMotionEventProcessor_Package_References."=";

   type NoMotionEventProcessor is new MotionEventProcessor with null record;
   SINGLETON : MotionEventProcessor_Access;

   procedure Initialize (This : in out NoMotionEventProcessor'Class);
   function Create return NoMotionEventProcessor_Access;
   function getInstance return MotionEventProcessor_Access;

end org.allbinary.android.input.motion.NoMotionEventProcessor_Package;


