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


   procedure Initialize (This : in out MotionGestureToMotionGestureActionAssociation'Class; list : BasicArrayList_Access; commandAction : CompleteMotionGestureInputEvent_Access) is
   begin
      Initialize_Fields (This);
        This.list := list;
        This.motionGestureAction := commandAction;
   end Initialize;

   function Create (list : BasicArrayList_Access; commandAction : CompleteMotionGestureInputEvent_Access) return MotionGestureToMotionGestureActionAssociation_Access is
      This : constant MotionGestureToMotionGestureActionAssociation_Access := new MotionGestureToMotionGestureActionAssociation;
   begin
      Initialize (This.all, list, commandAction);
      return This;
   end Create;

   function getMotionGesture (This : in out MotionGestureToMotionGestureActionAssociation) return BasicArrayList_Access is
   begin
        return This.list;
   end getMotionGesture;

   procedure setMotionGestures (This : in out MotionGestureToMotionGestureActionAssociation; list : BasicArrayList_Access) is
   begin
        This.list := list;
   end setMotionGestures;

   function getCommandAction (This : in out MotionGestureToMotionGestureActionAssociation) return CompleteMotionGestureInputEvent_Access is
   begin
        return This.motionGestureAction;
   end getCommandAction;

   procedure setMotionGestureAction (This : in out MotionGestureToMotionGestureActionAssociation; commandAction : CompleteMotionGestureInputEvent_Access) is
   begin
        This.motionGestureAction := commandAction;
   end setMotionGestureAction;

   function isMotionGestureArrayEquals (This : in out MotionGestureToMotionGestureActionAssociation; aList : BasicArrayList_Access) return Boolean is
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

   procedure getMotionGesture (This : in out MotionGestureToMotionGestureActionAssociation) is
      Java_Result : constant BasicArrayList_Access := MotionGestureToMotionGestureActionAssociation'Class (This).getMotionGesture;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMotionGesture;

   procedure getCommandAction (This : in out MotionGestureToMotionGestureActionAssociation) is
      Java_Result : constant CompleteMotionGestureInputEvent_Access := MotionGestureToMotionGestureActionAssociation'Class (This).getCommandAction;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCommandAction;

   procedure isMotionGestureArrayEquals (This : in out MotionGestureToMotionGestureActionAssociation; aList : BasicArrayList_Access) is
      Java_Result : constant Boolean := MotionGestureToMotionGestureActionAssociation'Class (This).isMotionGestureArrayEquals (aList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMotionGestureArrayEquals;

end org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation_Package;


