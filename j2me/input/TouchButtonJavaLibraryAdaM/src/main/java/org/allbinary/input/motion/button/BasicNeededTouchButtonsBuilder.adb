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


package body org.allbinary.input.motion.button.BasicNeededTouchButtonsBuilder_Package is

   procedure Initialize_Fields (This : in out BasicNeededTouchButtonsBuilder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicNeededTouchButtonsBuilder'Class) is
   begin
      BaseTouchInput_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicNeededTouchButtonsBuilder_Access is
      This : constant BasicNeededTouchButtonsBuilder_Access := new BasicNeededTouchButtonsBuilder;
   begin
      BasicNeededTouchButtonsBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function getList (This : in out BasicNeededTouchButtonsBuilder) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      touchButtonLocationHelper : TouchButtonLocationHelper_Access;
      basicTouchButtonCellPositionFactory : BasicTouchButtonCellPositionFactory_Access;
      commonButtons : CommonButtons_Access;
      animationInterface : Animation_Access;
      UP : TouchButton_Access;
      DOWN : TouchButton_Access;
      LEFT : TouchButton_Access;
      RIGHT : TouchButton_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
            list := BasicArrayListD_Package.Create;
            touchButtonLocationHelper := TouchButtonLocationHelper_Package.Create;
            basicTouchButtonCellPositionFactory := BasicTouchButtonCellPositionFactory_Package.Create;
            commonButtons := CommonButtons_Package.getInstance;
            animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
            UP := TouchButton_Package.Create (BasicTouchInputFactory_Package.getInstance.UP, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            DOWN := TouchButton_Package.Create (BasicTouchInputFactory_Package.getInstance.DOWN, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            LEFT := TouchButton_Package.Create (BasicTouchInputFactory_Package.getInstance.LEFT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            RIGHT := TouchButton_Package.Create (BasicTouchInputFactory_Package.getInstance.RIGHT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            list.add (UP);
            list.add (DOWN);
            list.add (LEFT);
            list.add (RIGHT);
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.GET_LIST, e);
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
                end;
        end;
   end getList;

end org.allbinary.input.motion.button.BasicNeededTouchButtonsBuilder_Package;


