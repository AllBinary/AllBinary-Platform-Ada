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

limited with org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package;
package org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References is
   type TouchButtonAndroidResources_Access is access all org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package.TouchButtonAndroidResources'Class;
   type TouchButtonAndroidResources_Access_Array is array (Natural range <>) of TouchButtonAndroidResources_Access;
   type TouchButtonAndroidResources_Access_Array_Access is access all TouchButtonAndroidResources_Access_Array;
   type TouchButtonAndroidResources_Access_Array_Access_Array is array (Natural range <>) of TouchButtonAndroidResources_Access_Array_Access;
   type TouchButtonAndroidResources_Access_Array_Access_Array_Access is access all TouchButtonAndroidResources_Access_Array_Access_Array;
end org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References;

with org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.init.Init_Package; use org.allbinary.init.Init_Package;

package org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package is

   package Init_Package renames Standard.org.allbinary.init.Init_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonAndroidResources_Access is org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References.TouchButtonAndroidResources_Access;
   function "=" (Left, Right : TouchButtonAndroidResources_Access) return Boolean renames org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References."=";
   subtype TouchButtonAndroidResources_Access_Array is org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References.TouchButtonAndroidResources_Access_Array;
   function "=" (Left, Right : TouchButtonAndroidResources_Access_Array) return Boolean renames org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References."=";
   subtype TouchButtonAndroidResources_Access_Array_Access is org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References.TouchButtonAndroidResources_Access_Array_Access;
   function "=" (Left, Right : TouchButtonAndroidResources_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References."=";
   subtype TouchButtonAndroidResources_Access_Array_Access_Array is org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References.TouchButtonAndroidResources_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonAndroidResources_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References."=";
   subtype TouchButtonAndroidResources_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References.TouchButtonAndroidResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonAndroidResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package_References."=";

   type TouchButtonAndroidResources is new Init_Package.Init with null record;

   procedure Initialize (This : in out TouchButtonAndroidResources'Class);
   function Create return TouchButtonAndroidResources_Access;
   procedure init (This : in out TouchButtonAndroidResources);

end org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package;


