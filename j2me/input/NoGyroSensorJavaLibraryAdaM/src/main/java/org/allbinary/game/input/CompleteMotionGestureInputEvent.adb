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


with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;

package body org.allbinary.game.input.CompleteMotionGestureInputEvent_Package is

   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   function "=" (Left, Right : MotionGestureInput_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   procedure Initialize_Fields (This : in out CompleteMotionGestureInputEvent'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
      This.motionGestureInput := MotionGestureInput_Access (TouchMotionGestureFactory_Package.getInstance.NO_MOTION);
   end Initialize_Fields;


   procedure Initialize (This : in out CompleteMotionGestureInputEvent'Class; name : Unbounded_String; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class) is
      motionGestureInput : constant MotionGestureInput_Access := MotionGestureInput_Access (motionGestureInput_Param);
      commonStrings : CommonStrings_Access;
   begin
        AllBinaryEventObject_Package.Initialize (This, motionGestureInput);
        Initialize_Fields (This);
        CompleteMotionGestureInputEvent'Class (This).setName (name);
        begin
            CompleteMotionGestureInputEvent'Class (This).setMotionGestureInput (motionGestureInput);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, CompleteMotionGestureInputEvent_Access'(This'Unchecked_Access), To_Unbounded_String ("InputToGameKeyEventAction"), e);
                end;
        end;
   end Initialize;

   function Create (name : Unbounded_String; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class) return CompleteMotionGestureInputEvent_Access is
      This : constant CompleteMotionGestureInputEvent_Access := new CompleteMotionGestureInputEvent;
   begin
      CompleteMotionGestureInputEvent_Package.Initialize (This.all, name, motionGestureInput_Param);
      return This;
   end Create;

   procedure setName (This : in out CompleteMotionGestureInputEvent; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getName (This : in out CompleteMotionGestureInputEvent) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setMotionGestureInput (This : in out CompleteMotionGestureInputEvent; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class) is
      motionGestureInput : constant MotionGestureInput_Access := MotionGestureInput_Access (motionGestureInput_Param);
   begin
        This.motionGestureInput := motionGestureInput;
   end setMotionGestureInput;

   function getMotionGestureInput (This : in out CompleteMotionGestureInputEvent) return MotionGestureInput_Access is
   begin
        return This.motionGestureInput;
   end getMotionGestureInput;

end org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;


