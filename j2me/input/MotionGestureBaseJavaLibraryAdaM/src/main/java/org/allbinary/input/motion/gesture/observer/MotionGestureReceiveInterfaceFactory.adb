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
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
with org.allbinary.input.motion.gesture.observer.ResolveCompleteMotionGestureListener_Package; use org.allbinary.input.motion.gesture.observer.ResolveCompleteMotionGestureListener_Package;
with org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package; use org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package;
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package; use org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package;
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.input.motion.gesture.observer.ResolveCompleteMotionGestureListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package is

   package MotionGestureConfiguration_Package renames Standard.org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
   package MotionGestureConfigurationFactory_Package renames Standard.org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
   subtype CompleteMotionGestureListenerInterface_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access;
   function "=" (Left, Right : CompleteMotionGestureListenerInterface_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References."=";
   subtype CompleteMotionGestureListenerInterface_Access_Array is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureListenerInterface_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References."=";
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References."=";
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References."=";
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References."=";
   procedure Initialize_Fields (This : in out MotionGestureReceiveInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MotionGestureReceiveInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MotionGestureReceiveInterfaceFactory_Access is
      This : constant MotionGestureReceiveInterfaceFactory_Access := new MotionGestureReceiveInterfaceFactory;
   begin
      MotionGestureReceiveInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CompleteMotionGestureListenerInterface_Access is
      configuration : MotionGestureConfiguration_Access;
   begin
        configuration := MotionGestureConfigurationFactory_Package.getInstance;
        if not (configuration.isExecutingActionsAllowed) then
            return CompleteMotionGestureListenerInterface_Access (NullCompleteMotionGestureReceiver_Package.Create);
        else
            return CompleteMotionGestureListenerInterface_Access (ResolveCompleteMotionGestureListener_Package.Create);
        end if;
   end getInstance;

end org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;


