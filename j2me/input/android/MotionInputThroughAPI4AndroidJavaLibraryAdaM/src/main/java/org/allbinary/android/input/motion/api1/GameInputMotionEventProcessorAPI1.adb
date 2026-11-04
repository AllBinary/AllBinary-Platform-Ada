--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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


with android.view.MotionEvent_Package; use android.view.MotionEvent_Package;
with org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package; use org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;
with org.allbinary.input.motion.AllMotionRecognizer_Package; use org.allbinary.input.motion.AllMotionRecognizer_Package;
with org.allbinary.input.motion.MotionRecognizer_Package; use org.allbinary.input.motion.MotionRecognizer_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package body org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package is

   package AllMotionRecognizer_Package renames Standard.org.allbinary.input.motion.AllMotionRecognizer_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   subtype MotionEvent_Access is android.view.MotionEvent_Package_References.MotionEvent_Access;
   function "=" (Left, Right : MotionEvent_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array;
   function "=" (Left, Right : MotionEvent_Access_Array) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access;
   function "=" (Left, Right : MotionEvent_Access_Array_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionEvent_Access_Array_Access_Array) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionEvent_Access_Array_Access_Array_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionRecognizer_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access;
   function "=" (Left, Right : MotionRecognizer_Access) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array;
   function "=" (Left, Right : MotionRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access;
   function "=" (Left, Right : MotionRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
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
   procedure Initialize_Fields (This : in out GameInputMotionEventProcessorAPI1'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.motionRecognizer := MotionRecognizer_Access (AllMotionRecognizer_Package.Create);
   end Initialize_Fields;


   function getInstance return GameInputMotionEventProcessorAPI1_Access is
   begin
        if (GameInputMotionEventProcessorAPI1_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            GameInputMotionEventProcessorAPI1_Package.instance := GameInputMotionEventProcessorAPI1_Package.Create;
        end if;
        return GameInputMotionEventProcessorAPI1_Access (GameInputMotionEventProcessorAPI1_Package.instance);
   end getInstance;

   procedure Initialize (This : in out GameInputMotionEventProcessorAPI1'Class) is
   begin
      BaseGameInputMotionEventProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameInputMotionEventProcessorAPI1_Access is
      This : constant GameInputMotionEventProcessorAPI1_Access := new GameInputMotionEventProcessorAPI1;
   begin
      GameInputMotionEventProcessorAPI1_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out GameInputMotionEventProcessorAPI1; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class) is
      motionEvent : constant MotionEvent_Access := MotionEvent_Access (motionEvent_Param);
      x : Integer;
      y : Integer;
      action : Integer;
   begin
        begin
            x := Integer (motionEvent.getX);
            y := Integer (motionEvent.getY);
            action := motionEvent.getAction;
            if (action) = (MotionEvent_Package.ACTION_DOWN) then
                This.motionRecognizer.processStartMotionEvent (x, y, motionEvent.getDeviceId, 0);
            elsif ((action) = (MotionEvent_Package.ACTION_UP)) or else ((action) = (MotionEvent_Package.ACTION_CANCEL)) then
                This.motionRecognizer.processEndMotionEvent (x, y, motionEvent.getDeviceId, 0);
            elsif (action) = (MotionEvent_Package.ACTION_MOVE) then
                This.motionRecognizer.processDraggedMotionEvent (x, y, motionEvent.getDeviceId, 0);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GameInputMotionEventProcessorAPI1_Access'(This'Unchecked_Access), This.commonStrings.PROCESS, e);
                end;
        end;
   end process;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.android.input.motion.api1.GameInputMotionEventProcessorAPI1_Package;


