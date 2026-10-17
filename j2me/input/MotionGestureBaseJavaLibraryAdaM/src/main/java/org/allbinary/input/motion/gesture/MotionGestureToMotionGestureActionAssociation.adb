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


package body org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package is

   procedure Initialize_Fields (This : in out MotionGestureToMotionGestureActionAssociation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MotionGestureToMotionGestureActionAssociation'Class; list_Param : access BasicArrayList'Class; commandAction_Param : access CompleteMotionGestureInputEvent'Class) is
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
      commandAction : CompleteMotionGestureInputEvent_Access := CompleteMotionGestureInputEvent_Access (commandAction_Param);
   begin
      Initialize_Fields (This);
        This.list := list;
        This.motionGestureAction := commandAction;
   end Initialize;

   function Create (list_Param : access BasicArrayList'Class; commandAction_Param : access CompleteMotionGestureInputEvent'Class) return MotionGestureToMotionGestureActionAssociation_Access is
      This : constant MotionGestureToMotionGestureActionAssociation_Access := new MotionGestureToMotionGestureActionAssociation;
   begin
      MotionGestureToMotionGestureActionAssociation_Package.Initialize (This.all, list_Param, commandAction_Param);
      return This;
   end Create;

   function getMotionGesture (This : in out MotionGestureToMotionGestureActionAssociation) return BasicArrayList_Access is
   begin
        return This.list;
   end getMotionGesture;

   procedure setMotionGestures (This : in out MotionGestureToMotionGestureActionAssociation; list_Param : access BasicArrayList'Class) is
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
   begin
        This.list := list;
   end setMotionGestures;

   function getCommandAction (This : in out MotionGestureToMotionGestureActionAssociation) return CompleteMotionGestureInputEvent_Access is
   begin
        return This.motionGestureAction;
   end getCommandAction;

   procedure setMotionGestureAction (This : in out MotionGestureToMotionGestureActionAssociation; commandAction_Param : access CompleteMotionGestureInputEvent'Class) is
      commandAction : CompleteMotionGestureInputEvent_Access := CompleteMotionGestureInputEvent_Access (commandAction_Param);
   begin
        This.motionGestureAction := commandAction;
   end setMotionGestureAction;

   function isMotionGestureArrayEquals (This : in out MotionGestureToMotionGestureActionAssociation; aList_Param : access BasicArrayList'Class) return Boolean is
      aList : BasicArrayList_Access := BasicArrayList_Access (aList_Param);
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

   procedure isMotionGestureArrayEquals (This : in out MotionGestureToMotionGestureActionAssociation; aList_Param : access BasicArrayList'Class) is
      Java_Result : constant Boolean := MotionGestureToMotionGestureActionAssociation'Class (This).isMotionGestureArrayEquals (aList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMotionGestureArrayEquals;

end org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package;


