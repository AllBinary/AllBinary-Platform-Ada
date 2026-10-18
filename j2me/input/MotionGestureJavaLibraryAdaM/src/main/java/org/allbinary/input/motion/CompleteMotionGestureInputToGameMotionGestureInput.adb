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


with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
with org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package is

   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package MotionGestureConfiguration_Package renames Standard.org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
   package MotionGestureConfigurationFactory_Package renames Standard.org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
   package DiagonalDownLeftTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package;
   package DiagonalDownRightTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package;
   package DiagonalUpLeftTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package;
   package DiagonalUpRightTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package;
   package DownTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction_Package;
   package LeftTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package;
   package ReleaseTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package;
   package RightTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction_Package;
   package UpTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out CompleteMotionGestureInputToGameMotionGestureInput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CompleteMotionGestureInputToGameMotionGestureInput'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CompleteMotionGestureInputToGameMotionGestureInput_Access is
      This : constant CompleteMotionGestureInputToGameMotionGestureInput_Access := new CompleteMotionGestureInputToGameMotionGestureInput;
   begin
      CompleteMotionGestureInputToGameMotionGestureInput_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CompleteMotionGestureInputToGameMotionGestureInput_Access is
   begin
        return CompleteMotionGestureInputToGameMotionGestureInput_Package.instance;
   end getInstance;

   procedure init (This : in out CompleteMotionGestureInputToGameMotionGestureInput) is
      commonStrings : CommonStrings_Access;
      motionGestureConfiguration : MotionGestureConfiguration_Access;
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      list : BasicArrayList_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            PreLogUtil_Package.put (To_Unbounded_String ("Compound Motion Gestures"), CompleteMotionGestureInputToGameMotionGestureInput_Access'(This'Unchecked_Access), commonStrings.INIT);
            motionGestureConfiguration := MotionGestureConfigurationFactory_Package.getInstance;
            touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.DIAGONAL_DOWN_LEFT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalDownLeftTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalDownRightTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.DIAGONAL_UP_LEFT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalUpLeftTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.DIAGONAL_UP_RIGHT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalUpRightTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.LEFT);
            motionGestureConfiguration.addMotionGestureAction (list, LeftTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.RIGHT);
            motionGestureConfiguration.addMotionGestureAction (list, RightTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.DOWN);
            motionGestureConfiguration.addMotionGestureAction (list, DownTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.UP);
            motionGestureConfiguration.addMotionGestureAction (list, UpTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.RELEASED);
            motionGestureConfiguration.addMotionGestureAction (list, ReleaseTouchInputToGameKeyEventAction_Package.getInstance);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (commonStrings.EXCEPTION_Id, CompleteMotionGestureInputToGameMotionGestureInput_Access'(This'Unchecked_Access), commonStrings.INIT, e);
                end;
        end;
   end init;

begin
   null;
   instance := CompleteMotionGestureInputToGameMotionGestureInput_Package.Create;

end org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package;


