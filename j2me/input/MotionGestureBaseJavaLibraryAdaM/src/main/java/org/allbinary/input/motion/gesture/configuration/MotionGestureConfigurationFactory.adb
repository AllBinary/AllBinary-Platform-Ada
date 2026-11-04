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


with org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;

package body org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package is

   subtype MotionGestureConfiguration_Access is org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References.MotionGestureConfiguration_Access;
   function "=" (Left, Right : MotionGestureConfiguration_Access) return Boolean renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References."=";
   subtype MotionGestureConfiguration_Access_Array is org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References.MotionGestureConfiguration_Access_Array;
   function "=" (Left, Right : MotionGestureConfiguration_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References."=";
   subtype MotionGestureConfiguration_Access_Array_Access is org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References.MotionGestureConfiguration_Access_Array_Access;
   function "=" (Left, Right : MotionGestureConfiguration_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References."=";
   subtype MotionGestureConfiguration_Access_Array_Access_Array is org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References.MotionGestureConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References."=";
   subtype MotionGestureConfiguration_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References.MotionGestureConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package_References."=";
   procedure Initialize_Fields (This : in out MotionGestureConfigurationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionGestureConfigurationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MotionGestureConfigurationFactory_Access is
      This : constant MotionGestureConfigurationFactory_Access := new MotionGestureConfigurationFactory;
   begin
      MotionGestureConfigurationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return MotionGestureConfiguration_Access is
   begin
        return MotionGestureConfiguration_Access (MotionGestureConfigurationFactory_Package.config);
   end getInstance;

begin
   null;
   config := MotionGestureConfiguration_Package.Create;

end org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;


