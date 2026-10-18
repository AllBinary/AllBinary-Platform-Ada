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


with org.allbinary.AndroidResources_Package; use org.allbinary.AndroidResources_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
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

package body org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package is

   package AndroidResources_Package renames Standard.org.allbinary.AndroidResources_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
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
   procedure Initialize_Fields (This : in out TouchButtonAndroidResources'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TouchButtonAndroidResources'Class) is
   begin
      Init_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return TouchButtonAndroidResources_Access is
      This : constant TouchButtonAndroidResources_Access := new TouchButtonAndroidResources;
   begin
      TouchButtonAndroidResources_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (This : in out TouchButtonAndroidResources) is
      resourceUtil : ResourceUtil_Access;
      androidResources : AndroidResources_Access;
      RESOURCE_STRING_ARRAY : TouchButtonResource_Access_Array_Access;
      RESOURCE_ARRAY : Integer_Array_Access;
      index : Integer;
   begin
        resourceUtil := ResourceUtil_Package.getInstance;
        androidResources := AndroidResources_Package.getInstance;
        RESOURCE_STRING_ARRAY := new TouchButtonResource_Access_Array'(TouchButtonBlankResource_Package.getInstance, TouchButtonGenericActionResource_Package.getInstance, TouchButtonStartResource_Package.getInstance, TouchButtonUpResource_Package.getInstance, TouchButtonDownResource_Package.getInstance, TouchButtonTurnLeftResource_Package.getInstance, TouchButtonTurnRightResource_Package.getInstance, TouchButtonStrafeLeftResource_Package.getInstance, TouchButtonStrafeRightResource_Package.getInstance);
        RESOURCE_ARRAY := new Integer_Array'(0 .. (RESOURCE_STRING_ARRAY'Length) - 1 => 0);
        if (CommonButtons_Package.getInstance.STANDARD_BUTTON_SIZE) = (128) then
            RESOURCE_ARRAY (0) := androidResources.raw.touch_button_128_by_128;
            RESOURCE_ARRAY (1) := androidResources.raw.touch_button_generic_action_128_by_128;
            RESOURCE_ARRAY (2) := androidResources.raw.touch_button_start_128_by_128;
            RESOURCE_ARRAY (3) := androidResources.raw.touch_button_up_arrow_128_by_128;
            RESOURCE_ARRAY (4) := androidResources.raw.touch_button_down_arrow_128_by_128;
            RESOURCE_ARRAY (5) := androidResources.raw.touch_button_turn_left_arrow_128_by_128;
            RESOURCE_ARRAY (6) := androidResources.raw.touch_button_turn_right_arrow_128_by_128;
            RESOURCE_ARRAY (7) := androidResources.raw.touch_button_strafe_left_arrow_128_by_128;
            RESOURCE_ARRAY (8) := androidResources.raw.touch_button_strafe_right_arrow_128_by_128;
            if OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance.isOverScan then
                resourceUtil.addResource (RESOURCE_STRING_ARRAY (2).HINT, To_Unbounded_String (Java_Image (androidResources.raw.ouya_o)));
            end if;
        else
            RESOURCE_ARRAY (0) := androidResources.raw.touch_button_64_by_64;
            RESOURCE_ARRAY (1) := androidResources.raw.touch_button_generic_action_64_by_64;
            RESOURCE_ARRAY (2) := androidResources.raw.touch_button_start_64_by_64;
            RESOURCE_ARRAY (3) := androidResources.raw.touch_button_up_arrow_64_by_64;
            RESOURCE_ARRAY (4) := androidResources.raw.touch_button_down_arrow_64_by_64;
            RESOURCE_ARRAY (5) := androidResources.raw.touch_button_turn_left_arrow_64_by_64;
            RESOURCE_ARRAY (6) := androidResources.raw.touch_button_turn_right_arrow_64_by_64;
            RESOURCE_ARRAY (7) := androidResources.raw.touch_button_strafe_left_arrow_64_by_64;
            RESOURCE_ARRAY (8) := androidResources.raw.touch_button_strafe_right_arrow_64_by_64;
        end if;
        for index in 0 .. (RESOURCE_ARRAY'Length) - 1 loop
            resourceUtil.addResource (RESOURCE_STRING_ARRAY (index).RESOURCE, To_Unbounded_String (Java_Image (RESOURCE_ARRAY (index))));
        end loop;
   end init;

end org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package;


