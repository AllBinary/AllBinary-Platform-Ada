-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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


package body org.allbinary.input.motion.button.PreGameScrollSelectionTouchButtonsBuilder_Package is

   procedure Initialize_Fields (This : in out PreGameScrollSelectionTouchButtonsBuilder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out PreGameScrollSelectionTouchButtonsBuilder'Class) is
   begin
      BaseTouchInput_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return PreGameScrollSelectionTouchButtonsBuilder_Access is
      This : constant PreGameScrollSelectionTouchButtonsBuilder_Access := new PreGameScrollSelectionTouchButtonsBuilder;
   begin
      PreGameScrollSelectionTouchButtonsBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function getList (This : in out PreGameScrollSelectionTouchButtonsBuilder) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      touchButtonLocationHelper : TouchButtonLocationHelper_Access;
      commonButtons : CommonButtons_Access;
      basicTouchButtonCellPositionFactory : BasicTouchButtonCellPositionFactory_Access;
      LEFT : TouchButton_Access;
      RIGHT : TouchButton_Access;
      START : TouchButton_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, PreGameScrollSelectionTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.GET_LIST);
            list := BasicArrayListD_Package.Create;
            touchButtonLocationHelper := TouchButtonLocationHelper_Package.Create;
            commonButtons := CommonButtons_Package.getInstance;
            basicTouchButtonCellPositionFactory := BasicTouchButtonCellPositionFactory_Package.Create;
            LEFT := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.LEFT, TouchButtonStrafeLeftResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.TOP_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            RIGHT := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.RIGHT, TouchButtonStrafeRightResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.TOP_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            START := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.SPECIAL_BUTTON_FIVE, TouchButtonStartResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
            list.add (LEFT);
            list.add (RIGHT);
            list.add (START);
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, PreGameScrollSelectionTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.GET_LIST, e);
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
                end;
        end;
   end getList;

end org.allbinary.input.motion.button.PreGameScrollSelectionTouchButtonsBuilder_Package;


