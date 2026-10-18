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


with org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package; use org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package;
with org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package; use org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
with org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package; use org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;

package body org.allbinary.input.motion.button.UpgradeDowngradeTouchButtonsBuilder_Package is

   package TouchButtonDowngradeResource_Package renames Standard.org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package;
   package TouchButtonUpgradeResource_Package renames Standard.org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
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
      UpgradeDowngradeTouchButtonsBuilder_Package.Initialize (This.all);
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
            This.logUtil.putF (This.commonStrings.START, UpgradeDowngradeTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            touchButtonLocationHelper := TouchButtonLocationHelper_Package.Create;
            cellPositionFactory := CellPositionFactory_Package.getInstance;
            basicTouchButtonCellPositionFactory := BasicTouchButtonCellPositionFactory_Package.Create;
            if ((basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_LEFT) /= (cellPositionFactory.NONE)) and then ((basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_RIGHT) /= (cellPositionFactory.NONE)) then
                commonButtons := CommonButtons_Package.getInstance;
                UP := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.SPECIAL_BUTTON_TWO, TouchButtonUpgradeResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
                DOWN := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.SPECIAL_BUTTON_ONE, TouchButtonDowngradeResource_Package.getInstance, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf, touchButtonLocationHelper.getRowsRemainderHalf);
                list.add (Java_Object_Access (UP));
                list.add (Java_Object_Access (DOWN));
            end if;
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, UpgradeDowngradeTouchButtonsBuilder_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
                end;
        end;
   end getList;

end org.allbinary.input.motion.button.UpgradeDowngradeTouchButtonsBuilder_Package;


