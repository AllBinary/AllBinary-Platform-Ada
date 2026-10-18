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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.android.ActivityFractureUtil_Package; use org.allbinary.android.ActivityFractureUtil_Package;

package org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package is

   package ActivityFractureUtil_Package renames Standard.org.allbinary.android.ActivityFractureUtil_Package;

   type ActivityFractureInputUtilFactory is tagged;
   type ActivityFractureInputUtilFactory_Access is access all ActivityFractureInputUtilFactory'Class;
   type ActivityFractureInputUtilFactory_Access_Array is array (Natural range <>) of ActivityFractureInputUtilFactory_Access;
   type ActivityFractureInputUtilFactory_Access_Array_Access is access all ActivityFractureInputUtilFactory_Access_Array;
   type ActivityFractureInputUtilFactory_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureInputUtilFactory_Access_Array_Access;
   type ActivityFractureInputUtilFactory_Access_Array_Access_Array_Access is access all ActivityFractureInputUtilFactory_Access_Array_Access_Array;

   type ActivityFractureInputUtilFactory is new Java_Object with null record;

   procedure Initialize (This : in out ActivityFractureInputUtilFactory'Class);
   function Create return ActivityFractureInputUtilFactory_Access;
   function getInstance return ActivityFractureUtil_Access;

end org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package;


