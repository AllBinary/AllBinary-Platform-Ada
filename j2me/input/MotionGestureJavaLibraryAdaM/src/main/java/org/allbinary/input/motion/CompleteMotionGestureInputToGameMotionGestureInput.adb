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


package body org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package is

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
      Initialize (This.all);
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
            PreLogUtil_Package.put (To_Unbounded_String ("Compound Motion Gestures"), This'Unchecked_Access, commonStrings.INIT);
            motionGestureConfiguration := MotionGestureConfigurationFactory_Package.getInstance;
            touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
            list := BasicArrayListD_Package.Create;
            list.add (touchMotionGestureFactory.DIAGONAL_DOWN_LEFT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalDownLeftTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayListD_Package.Create;
            list.add (touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalDownRightTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayListD_Package.Create;
            list.add (touchMotionGestureFactory.DIAGONAL_UP_LEFT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalUpLeftTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayListD_Package.Create;
            list.add (touchMotionGestureFactory.DIAGONAL_UP_RIGHT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalUpRightTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayListD_Package.Create;
            list.add (touchMotionGestureFactory.LEFT);
            motionGestureConfiguration.addMotionGestureAction (list, LeftTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayListD_Package.Create;
            list.add (touchMotionGestureFactory.RIGHT);
            motionGestureConfiguration.addMotionGestureAction (list, RightTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayListD_Package.Create;
            list.add (touchMotionGestureFactory.DOWN);
            motionGestureConfiguration.addMotionGestureAction (list, DownTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayListD_Package.Create;
            list.add (touchMotionGestureFactory.UP);
            motionGestureConfiguration.addMotionGestureAction (list, UpTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayListD_Package.Create;
            list.add (touchMotionGestureFactory.RELEASED);
            motionGestureConfiguration.addMotionGestureAction (list, ReleaseTouchInputToGameKeyEventAction_Package.getInstance);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.INIT, e);
                end;
        end;
   end init;

   procedure getInstance is
      Java_Result : constant CompleteMotionGestureInputToGameMotionGestureInput_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := CompleteMotionGestureInputToGameMotionGestureInput_Package.Create;

end org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package;


