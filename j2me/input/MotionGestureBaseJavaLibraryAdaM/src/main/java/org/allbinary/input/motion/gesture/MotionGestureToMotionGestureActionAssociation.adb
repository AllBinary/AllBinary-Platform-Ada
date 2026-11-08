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


with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package is

   subtype CompleteMotionGestureInputEvent_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out MotionGestureToMotionGestureActionAssociation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MotionGestureToMotionGestureActionAssociation'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class; commandAction_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      commandAction : constant CompleteMotionGestureInputEvent_Access := CompleteMotionGestureInputEvent_Access (commandAction_Param);
   begin
      Initialize_Fields (This);
        This.list := list;
        This.motionGestureAction := commandAction;
   end Initialize;

   function Create (list_Param : access BasicArrayList_Package.BasicArrayList'Class; commandAction_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class) return MotionGestureToMotionGestureActionAssociation_Access is
      This : constant MotionGestureToMotionGestureActionAssociation_Access := new MotionGestureToMotionGestureActionAssociation;
   begin
      MotionGestureToMotionGestureActionAssociation_Package.Initialize (This.all, list_Param, commandAction_Param);
      return This;
   end Create;

   function getMotionGesture (This : in out MotionGestureToMotionGestureActionAssociation) return BasicArrayList_Access is
   begin
        return This.list;
   end getMotionGesture;

   procedure setMotionGestures (This : in out MotionGestureToMotionGestureActionAssociation; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
   begin
        This.list := list;
   end setMotionGestures;

   function getCommandAction (This : in out MotionGestureToMotionGestureActionAssociation) return CompleteMotionGestureInputEvent_Access is
   begin
        return This.motionGestureAction;
   end getCommandAction;

   procedure setMotionGestureAction (This : in out MotionGestureToMotionGestureActionAssociation; commandAction_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class) is
      commandAction : constant CompleteMotionGestureInputEvent_Access := CompleteMotionGestureInputEvent_Access (commandAction_Param);
   begin
        This.motionGestureAction := commandAction;
   end setMotionGestureAction;

   function isMotionGestureArrayEquals (This : in out MotionGestureToMotionGestureActionAssociation; aList_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean is
      aList : constant BasicArrayList_Access := BasicArrayList_Access (aList_Param);
      size : Integer;
      i : Integer;
   begin
        size := aList.size;
        if (This.list.size) /= (size) then
            return False;
        end if;
        for i in reverse 0 .. (size) - (1) loop
            if (aList.objectArray (i)) /= (This.list.objectArray (i)) then
                return False;
            end if;
        end loop;
        return True;
   end isMotionGestureArrayEquals;

   procedure isMotionGestureArrayEquals (This : in out MotionGestureToMotionGestureActionAssociation; aList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Boolean := MotionGestureToMotionGestureActionAssociation'Class (This).isMotionGestureArrayEquals (aList_Param => aList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMotionGestureArrayEquals;

end org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package;


