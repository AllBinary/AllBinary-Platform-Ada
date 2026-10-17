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


package body org.allbinary.input.motion.button.UpgradeDowngradeTouchButtonsBuilder_Package is

   procedure Initialize_Fields (This : in out UpgradeDowngradeTouchButtonsBuilder'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out UpgradeDowngradeTouchButtonsBuilder'Class) is
   begin
      BaseTouchInput_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return UpgradeDowngradeTouchButtonsBuilder_Access is
      This : constant UpgradeDowngradeTouchButtonsBuilder_Access := new UpgradeDowngradeTouchButtonsBuilder;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getList (This : in out UpgradeDowngradeTouchButtonsBuilder) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      touchButtonLocationHelper : TouchButtonLocationHelper_Access;
      cellPositionFactory : CellPositionFactory_Access;
      basicTouchButtonCellPositionFactory : BasicTouchButtonCellPositionFactory_Access;
      commonButtons : CommonButtons_Access;
      UP : TouchButton_Access;
      DOWN : TouchButton_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
            list := BasicArrayListD_Package.Create;
            touchButtonLocationHelper := TouchButtonLocationHelper_Package.Create;
            cellPositionFactory := CellPositionFactory_Package.getInstance;
            basicTouchButtonCellPositionFactory := BasicTouchButtonCellPositionFactory_Package.Create;
            if ((basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_LEFT) /= (cellPositionFactory.NONE)) and then ((basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_RIGHT) /= (cellPositionFactory.NONE)) then
                commonButtons := CommonButtons_Package.getInstance;
                UP := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.SPECIAL_BUTTON_TWO, TouchButtonUpgradeResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
                DOWN := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.SPECIAL_BUTTON_ONE, TouchButtonDowngradeResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
                list.add (UP);
                list.add (DOWN);
            end if;
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
                end;
        end;
   end getList;

   procedure getList (This : in out UpgradeDowngradeTouchButtonsBuilder) is
      Java_Result : constant BasicArrayList_Access := UpgradeDowngradeTouchButtonsBuilder'Class (This).getList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getList;

end org.allbinary.input.motion.button.UpgradeDowngradeTouchButtonsBuilder_Package;


