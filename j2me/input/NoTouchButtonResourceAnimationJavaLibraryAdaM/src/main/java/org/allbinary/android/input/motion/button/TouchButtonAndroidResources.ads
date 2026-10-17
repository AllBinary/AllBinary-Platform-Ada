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
with org.allbinary.init.Init_Package; use org.allbinary.init.Init_Package;

package org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package is

   package Init_Package renames Standard.org.allbinary.init.Init_Package;

   type TouchButtonAndroidResources is tagged;
   type TouchButtonAndroidResources_Access is access all TouchButtonAndroidResources'Class;
   type TouchButtonAndroidResources_Access_Array is array (Natural range <>) of TouchButtonAndroidResources_Access;
   type TouchButtonAndroidResources_Access_Array_Access is access all TouchButtonAndroidResources_Access_Array;

   type TouchButtonAndroidResources is new Init with null record;

   procedure Initialize (This : in out TouchButtonAndroidResources'Class);
   function Create return TouchButtonAndroidResources_Access;
   procedure init (This : in out TouchButtonAndroidResources);

end org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package;


