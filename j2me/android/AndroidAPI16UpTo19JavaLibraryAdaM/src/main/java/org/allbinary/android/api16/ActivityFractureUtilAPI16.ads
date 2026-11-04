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

limited with org.allbinary.android.api16.ActivityFractureUtilAPI16_Package;
package org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References is
   type ActivityFractureUtilAPI16_Access is access all org.allbinary.android.api16.ActivityFractureUtilAPI16_Package.ActivityFractureUtilAPI16'Class;
   type ActivityFractureUtilAPI16_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI16_Access;
   type ActivityFractureUtilAPI16_Access_Array_Access is access all ActivityFractureUtilAPI16_Access_Array;
   type ActivityFractureUtilAPI16_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI16_Access_Array_Access;
   type ActivityFractureUtilAPI16_Access_Array_Access_Array_Access is access all ActivityFractureUtilAPI16_Access_Array_Access_Array;
end org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References;

with org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;
with org.allbinary.android.api5.ActivityFractureUtilAPI5_Package; use org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;

package org.allbinary.android.api16.ActivityFractureUtilAPI16_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package ActivityFractureUtilAPI5_Package renames Standard.org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;
   package Reference_Types is
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   use type Activity_Access;
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   use type Activity_Access_Array;
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   use type Activity_Access_Array_Access;
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   use type Activity_Access_Array_Access_Array;
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   use type Activity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ActivityFractureUtilAPI16_Access is org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References.ActivityFractureUtilAPI16_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI16_Access) return Boolean renames org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References."=";
   subtype ActivityFractureUtilAPI16_Access_Array is org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References.ActivityFractureUtilAPI16_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI16_Access_Array) return Boolean renames org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References."=";
   subtype ActivityFractureUtilAPI16_Access_Array_Access is org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References.ActivityFractureUtilAPI16_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI16_Access_Array_Access) return Boolean renames org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References."=";
   subtype ActivityFractureUtilAPI16_Access_Array_Access_Array is org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References.ActivityFractureUtilAPI16_Access_Array_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI16_Access_Array_Access_Array) return Boolean renames org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References."=";
   subtype ActivityFractureUtilAPI16_Access_Array_Access_Array_Access is org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References.ActivityFractureUtilAPI16_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI16_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.api16.ActivityFractureUtilAPI16_Package_References."=";

   type ActivityFractureUtilAPI16 is new ActivityFractureUtilAPI5 with null record;
   instance16 : ActivityFractureUtilAPI16_Access;

   procedure Initialize (This : in out ActivityFractureUtilAPI16'Class);
   function Create return ActivityFractureUtilAPI16_Access;
   function getInstance return ActivityFractureUtilAPI16_Access;
   procedure setFullScreen (This : in out ActivityFractureUtilAPI16; activity_Param : access Activity_Package.Activity'Class);

end org.allbinary.android.api16.ActivityFractureUtilAPI16_Package;


