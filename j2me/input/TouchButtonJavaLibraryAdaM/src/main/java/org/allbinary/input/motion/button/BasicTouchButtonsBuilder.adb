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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
with org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package; use org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.TouchButtonUpResource_Package; use org.allbinary.input.motion.button.TouchButtonUpResource_Package;
with org.allbinary.input.motion.button.TouchButtonDownResource_Package; use org.allbinary.input.motion.button.TouchButtonDownResource_Package;
with org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package; use org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package;
with org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package; use org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package;

package body org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   procedure Initialize_Fields (This : in out BasicTouchButtonsBuilder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicTouchButtonsBuilder'Class) is
   begin
      BaseTouchInput_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicTouchButtonsBuilder_Access is
      This : constant BasicTouchButtonsBuilder_Access := new BasicTouchButtonsBuilder;
   begin
      BasicTouchButtonsBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function getList (This : in out BasicTouchButtonsBuilder) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      commonButtons : CommonButtons_Access;
      touchButtonLocationHelper : TouchButtonLocationHelper_Access;
      basicTouchButtonCellPositionFactory : BasicTouchButtonCellPositionFactory_Access;
      UP : TouchButton_Access;
      DOWN : TouchButton_Access;
      LEFT : TouchButton_Access;
      RIGHT : TouchButton_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, BasicTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            commonButtons := CommonButtons_Package.getInstance;
            touchButtonLocationHelper := TouchButtonLocationHelper_Package.Create;
            basicTouchButtonCellPositionFactory := BasicTouchButtonCellPositionFactory_Package.Create;
            UP := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.UP, TouchButtonUpResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            DOWN := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.DOWN, TouchButtonDownResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            LEFT := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.SPECIAL_BUTTON_FOUR, TouchButtonTurnLeftResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            RIGHT := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.SPECIAL_BUTTON_THREE, TouchButtonTurnRightResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            list.add (Java_Object_Access (UP));
            list.add (Java_Object_Access (LEFT));
            list.add (Java_Object_Access (RIGHT));
            list.add (Java_Object_Access (DOWN));
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.GET_LIST, e);
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
                end;
        end;
   end getList;

end org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package;


