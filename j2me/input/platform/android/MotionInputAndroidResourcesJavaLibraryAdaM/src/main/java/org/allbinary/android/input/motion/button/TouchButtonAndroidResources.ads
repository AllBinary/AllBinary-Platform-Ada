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
with org.allbinary.AndroidResources_Package; use org.allbinary.AndroidResources_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.init.Init_Package; use org.allbinary.init.Init_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.input.motion.button.TouchButtonBlankResource_Package; use org.allbinary.input.motion.button.TouchButtonBlankResource_Package;
with org.allbinary.input.motion.button.TouchButtonDownResource_Package; use org.allbinary.input.motion.button.TouchButtonDownResource_Package;
with org.allbinary.input.motion.button.TouchButtonGenericActionResource_Package; use org.allbinary.input.motion.button.TouchButtonGenericActionResource_Package;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;
with org.allbinary.input.motion.button.TouchButtonStartResource_Package; use org.allbinary.input.motion.button.TouchButtonStartResource_Package;
with org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package; use org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package;
with org.allbinary.input.motion.button.TouchButtonStrafeRightResource_Package; use org.allbinary.input.motion.button.TouchButtonStrafeRightResource_Package;
with org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package; use org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package;
with org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package; use org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package;
with org.allbinary.input.motion.button.TouchButtonUpResource_Package; use org.allbinary.input.motion.button.TouchButtonUpResource_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;

package org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package is

   package AndroidResources_Package renames Standard.org.allbinary.AndroidResources_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package Init_Package renames Standard.org.allbinary.init.Init_Package;
   package CommonButtons_Package renames Standard.org.allbinary.input.motion.button.CommonButtons_Package;
   package TouchButtonBlankResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonBlankResource_Package;
   package TouchButtonDownResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonDownResource_Package;
   package TouchButtonGenericActionResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonGenericActionResource_Package;
   package TouchButtonResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonResource_Package;
   package TouchButtonStartResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonStartResource_Package;
   package TouchButtonStrafeLeftResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package;
   package TouchButtonStrafeRightResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonStrafeRightResource_Package;
   package TouchButtonTurnLeftResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package;
   package TouchButtonTurnRightResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package;
   package TouchButtonUpResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonUpResource_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;

   type TouchButtonAndroidResources is tagged;
   type TouchButtonAndroidResources_Access is access all TouchButtonAndroidResources'Class;
   type TouchButtonAndroidResources_Access_Array is array (Natural range <>) of TouchButtonAndroidResources_Access;
   type TouchButtonAndroidResources_Access_Array_Access is access all TouchButtonAndroidResources_Access_Array;

   type TouchButtonAndroidResources is new Init with null record;

   procedure Initialize (This : in out TouchButtonAndroidResources'Class);
   function Create return TouchButtonAndroidResources_Access;
   procedure init (This : in out TouchButtonAndroidResources);

end org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package;


