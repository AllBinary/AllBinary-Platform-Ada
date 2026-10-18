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
with org.allbinary.android.api5.ActivityFractureUtilAPI5_Package; use org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;

package org.allbinary.android.api19.ActivityFractureUtilAPI19_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package ActivityFractureUtilAPI5_Package renames Standard.org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;

   type ActivityFractureUtilAPI19 is tagged;
   type ActivityFractureUtilAPI19_Access is access all ActivityFractureUtilAPI19'Class;
   type ActivityFractureUtilAPI19_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI19_Access;
   type ActivityFractureUtilAPI19_Access_Array_Access is access all ActivityFractureUtilAPI19_Access_Array;
   type ActivityFractureUtilAPI19_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI19_Access_Array_Access;
   type ActivityFractureUtilAPI19_Access_Array_Access_Array_Access is access all ActivityFractureUtilAPI19_Access_Array_Access_Array;

   type ActivityFractureUtilAPI19 is new ActivityFractureUtilAPI5 with null record;
   instance19 : ActivityFractureUtilAPI19_Access;

   procedure Initialize (This : in out ActivityFractureUtilAPI19'Class);
   function Create return ActivityFractureUtilAPI19_Access;
   function getInstance return ActivityFractureUtilAPI19_Access;
   procedure setFullScreen (This : in out ActivityFractureUtilAPI19; activity_Param : access Activity_Package.Activity'Class);

end org.allbinary.android.api19.ActivityFractureUtilAPI19_Package;


