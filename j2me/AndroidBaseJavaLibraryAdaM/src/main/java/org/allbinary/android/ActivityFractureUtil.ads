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

limited with org.allbinary.android.ActivityFractureUtil_Package;
package org.allbinary.android.ActivityFractureUtil_Package_References is
   type ActivityFractureUtil_Access is access all org.allbinary.android.ActivityFractureUtil_Package.ActivityFractureUtil'Class;
   type ActivityFractureUtil_Access_Array is array (Natural range <>) of ActivityFractureUtil_Access;
   type ActivityFractureUtil_Access_Array_Access is access all ActivityFractureUtil_Access_Array;
   type ActivityFractureUtil_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureUtil_Access_Array_Access;
   type ActivityFractureUtil_Access_Array_Access_Array_Access is access all ActivityFractureUtil_Access_Array_Access_Array;
end org.allbinary.android.ActivityFractureUtil_Package_References;

with org.allbinary.android.ActivityFractureUtil_Package_References;
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

package org.allbinary.android.ActivityFractureUtil_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
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


   subtype ActivityFractureUtil_Access is org.allbinary.android.ActivityFractureUtil_Package_References.ActivityFractureUtil_Access;
   function "=" (Left, Right : ActivityFractureUtil_Access) return Boolean renames org.allbinary.android.ActivityFractureUtil_Package_References."=";
   subtype ActivityFractureUtil_Access_Array is org.allbinary.android.ActivityFractureUtil_Package_References.ActivityFractureUtil_Access_Array;
   function "=" (Left, Right : ActivityFractureUtil_Access_Array) return Boolean renames org.allbinary.android.ActivityFractureUtil_Package_References."=";
   subtype ActivityFractureUtil_Access_Array_Access is org.allbinary.android.ActivityFractureUtil_Package_References.ActivityFractureUtil_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtil_Access_Array_Access) return Boolean renames org.allbinary.android.ActivityFractureUtil_Package_References."=";
   subtype ActivityFractureUtil_Access_Array_Access_Array is org.allbinary.android.ActivityFractureUtil_Package_References.ActivityFractureUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ActivityFractureUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.android.ActivityFractureUtil_Package_References."=";
   subtype ActivityFractureUtil_Access_Array_Access_Array_Access is org.allbinary.android.ActivityFractureUtil_Package_References.ActivityFractureUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.ActivityFractureUtil_Package_References."=";

   type ActivityFractureUtil is new Java_Object with null record;

   procedure Initialize (This : in out ActivityFractureUtil'Class);
   function Create return ActivityFractureUtil_Access;
   procedure process (This : in out ActivityFractureUtil; activity_Param : access Activity_Package.Activity'Class);
   procedure setFullScreen (This : in out ActivityFractureUtil; activity_Param : access Activity_Package.Activity'Class);

end org.allbinary.android.ActivityFractureUtil_Package;


