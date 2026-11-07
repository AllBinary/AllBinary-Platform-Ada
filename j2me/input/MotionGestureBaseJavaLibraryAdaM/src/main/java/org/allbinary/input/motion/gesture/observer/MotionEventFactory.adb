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


with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package; use org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;

package body org.allbinary.input.motion.gesture.observer.MotionEventFactory_Package is

   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   procedure Initialize_Fields (This : in out MotionEventFactory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MotionEventFactory'Class; source_Param : access Java_Object'Class; id : Integer) is
      source : constant Java_Object_Access := Java_Object_Access (source_Param);
   begin
      Initialize_Fields (This);
        This.source := source;
        This.id := id;
        MotionEventFactory_Package.index := TouchMotionGestureFactory_Package.getInstance.LAST_MOTION.getId;
   end Initialize;

   function Create (source_Param : access Java_Object'Class; id : Integer) return MotionEventFactory_Access is
      This : constant MotionEventFactory_Access := new MotionEventFactory;
   begin
      MotionEventFactory_Package.Initialize (This.all, source_Param, id);
      return This;
   end Create;

   function getInstance (This : in out MotionEventFactory) return AllBinaryEventObject_Access is
      inputFactory : InputFactory_Access;
      input : Input_Access;
   begin
        inputFactory := InputFactory_Package.getInstance;
        input := inputFactory.getInstanceById (Java_Post_Increment (MotionEventFactory_Package.index));
        if (Java_Object_Access (input)) = (Java_Object_Access (inputFactory.NO_INPUT)) then
            return AllBinaryEventObject_Access (MotionGestureEvent_Package.Create (This.source, This.id, MotionGestureInput_Access (TouchMotionGestureFactory_Package.getInstance.NO_MOTION)));
        else
            return AllBinaryEventObject_Access (MotionGestureEvent_Package.Create (This.source, This.id, MotionGestureInput_Access (input)));
        end if;
   end getInstance;

begin
   null;
   index := 0;

end org.allbinary.input.motion.gesture.observer.MotionEventFactory_Package;


