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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.app.Activity_Package; use android.app.Activity_Package;

package org.allbinary.android.ActivityFractureUtil_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;

   type ActivityFractureUtil is tagged;
   type ActivityFractureUtil_Access is access all ActivityFractureUtil'Class;
   type ActivityFractureUtil_Access_Array is array (Natural range <>) of ActivityFractureUtil_Access;
   type ActivityFractureUtil_Access_Array_Access is access all ActivityFractureUtil_Access_Array;
   type ActivityFractureUtil_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureUtil_Access_Array_Access;
   type ActivityFractureUtil_Access_Array_Access_Array_Access is access all ActivityFractureUtil_Access_Array_Access_Array;

   type ActivityFractureUtil is new Java_Object with null record;

   procedure Initialize (This : in out ActivityFractureUtil'Class);
   function Create return ActivityFractureUtil_Access;
   procedure process (This : in out ActivityFractureUtil; activity_Param : access Activity_Package.Activity'Class);
   procedure setFullScreen (This : in out ActivityFractureUtil; activity_Param : access Activity_Package.Activity'Class);

end org.allbinary.android.ActivityFractureUtil_Package;


