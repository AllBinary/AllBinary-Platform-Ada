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

limited with org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;
package org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References is
   type ActivityFractureUtilAPI1_Access is access all org.allbinary.android.api1.ActivityFractureUtilAPI1_Package.ActivityFractureUtilAPI1'Class;
   type ActivityFractureUtilAPI1_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI1_Access;
   type ActivityFractureUtilAPI1_Access_Array_Access is access all ActivityFractureUtilAPI1_Access_Array;
   type ActivityFractureUtilAPI1_Access_Array_Access_Array is array (Natural range <>) of ActivityFractureUtilAPI1_Access_Array_Access;
   type ActivityFractureUtilAPI1_Access_Array_Access_Array_Access is access all ActivityFractureUtilAPI1_Access_Array_Access_Array;
end org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References;

with org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.android.ActivityFractureUtil_Package; use org.allbinary.android.ActivityFractureUtil_Package;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;

package org.allbinary.android.api1.ActivityFractureUtilAPI1_Package is

   package ActivityFractureUtil_Package renames Standard.org.allbinary.android.ActivityFractureUtil_Package;
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


   subtype ActivityFractureUtilAPI1_Access is org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.ActivityFractureUtilAPI1_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI1_Access) return Boolean renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References."=";
   subtype ActivityFractureUtilAPI1_Access_Array is org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.ActivityFractureUtilAPI1_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI1_Access_Array) return Boolean renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References."=";
   subtype ActivityFractureUtilAPI1_Access_Array_Access is org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.ActivityFractureUtilAPI1_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI1_Access_Array_Access) return Boolean renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References."=";
   subtype ActivityFractureUtilAPI1_Access_Array_Access_Array is org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.ActivityFractureUtilAPI1_Access_Array_Access_Array;
   function "=" (Left, Right : ActivityFractureUtilAPI1_Access_Array_Access_Array) return Boolean renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References."=";
   subtype ActivityFractureUtilAPI1_Access_Array_Access_Array_Access is org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References.ActivityFractureUtilAPI1_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActivityFractureUtilAPI1_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.api1.ActivityFractureUtilAPI1_Package_References."=";

   type ActivityFractureUtilAPI1 is new ActivityFractureUtil with null record;
   instance : ActivityFractureUtilAPI1_Access;

   procedure Initialize (This : in out ActivityFractureUtilAPI1'Class);
   function Create return ActivityFractureUtilAPI1_Access;
   function getInstance return ActivityFractureUtilAPI1_Access;
   procedure process (This : in out ActivityFractureUtilAPI1; activity_Param : access Activity_Package.Activity'Class);
   procedure setFullScreen (This : in out ActivityFractureUtilAPI1; activity_Param : access Activity_Package.Activity'Class);

end org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;


