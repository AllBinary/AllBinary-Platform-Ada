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


package body org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package is

   procedure Initialize_Fields (This : in out BasicTouchButtonCellPositionFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      This.SECOND_FROM_TOP_LEFT := null;
      This.SECOND_FROM_TOP_RIGHT := null;
      This.TOP_SECOND_FROM_LEFT := null;
      This.TOP_SECOND_FROM_RIGHT := null;
      
      
      
      This.THIRD_FROM_BOTTOM_RIGHT := null;
      This.FOURTH_FROM_BOTTOM_RIGHT := null;
      
      This.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT := null;
      This.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT := null;
      This.BOTTOM_THIRD_FROM_RIGHT := null;
      This.BOTTOM_FOURTH_FROM_RIGHT := null;
      
      
      This.THIRD_FROM_BOTTOM_LEFT := null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicTouchButtonCellPositionFactory'Class) is
      touchButtonLocationHelper : TouchButtonLocationHelper_Access;
      cellPositionFactory : CellPositionFactory_Access;
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, BasicTouchButtonCellPositionFactory_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        touchButtonLocationHelper := TouchButtonLocationHelper_Package.Create;
        cellPositionFactory := CellPositionFactory_Package.getInstance;
        cellPositionFactory.init (touchButtonLocationHelper.getTotalColumns, touchButtonLocationHelper.getTotalRows);
        This.TOP_LEFT := cellPositionFactory.getInstanceColRow (0, 0);
        This.TOP_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (1), 0);
        This.BOTTOM_LEFT := cellPositionFactory.getInstanceColRow (0, (touchButtonLocationHelper.getTotalRows) - (1));
        This.BOTTOM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (1), (touchButtonLocationHelper.getTotalRows) - (1));
        This.BOTTOM_SECOND_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (2), (touchButtonLocationHelper.getTotalRows) - (1));
        This.SECOND_FROM_BOTTOM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (1), (touchButtonLocationHelper.getTotalRows) - (2));
        This.SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (2), (touchButtonLocationHelper.getTotalRows) - (2));
        This.BOTTOM_SECOND_FROM_LEFT := cellPositionFactory.getInstanceColRow (1, (touchButtonLocationHelper.getTotalRows) - (1));
        This.SECOND_FROM_BOTTOM_LEFT := cellPositionFactory.getInstanceColRow (0, (touchButtonLocationHelper.getTotalRows) - (2));
        This.SECOND_FROM_BOTTOM_SECOND_FROM_LEFT := cellPositionFactory.getInstanceColRow (1, (touchButtonLocationHelper.getTotalRows) - (2));
        if (touchButtonLocationHelper.getTotalRows) > (2) then
            This.SECOND_FROM_TOP_LEFT := cellPositionFactory.getInstanceColRow (0, 1);
            This.SECOND_FROM_TOP_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (1), 1);
        else
            This.SECOND_FROM_TOP_LEFT := cellPositionFactory.NONE;
            This.SECOND_FROM_TOP_RIGHT := cellPositionFactory.NONE;
        end if;
        if (touchButtonLocationHelper.getTotalRows) >= (4) then
            This.THIRD_FROM_BOTTOM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (1), (touchButtonLocationHelper.getTotalRows) - (3));
            This.FOURTH_FROM_BOTTOM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (1), (touchButtonLocationHelper.getTotalRows) - (4));
            This.THIRD_FROM_BOTTOM_LEFT := cellPositionFactory.getInstanceColRow (0, (touchButtonLocationHelper.getTotalRows) - (3));
        else
            This.THIRD_FROM_BOTTOM_RIGHT := cellPositionFactory.NONE;
            This.FOURTH_FROM_BOTTOM_RIGHT := cellPositionFactory.NONE;
            This.THIRD_FROM_BOTTOM_LEFT := cellPositionFactory.NONE;
        end if;
        if (touchButtonLocationHelper.getTotalColumns) >= (4) then
            This.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (3), (touchButtonLocationHelper.getTotalRows) - (2));
            This.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (4), (touchButtonLocationHelper.getTotalRows) - (2));
            This.BOTTOM_THIRD_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (3), (touchButtonLocationHelper.getTotalRows) - (1));
            This.BOTTOM_FOURTH_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (4), (touchButtonLocationHelper.getTotalRows) - (1));
            This.TOP_SECOND_FROM_LEFT := cellPositionFactory.getInstanceColRow (1, 0);
            This.TOP_SECOND_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (2), 0);
        else
            This.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT := cellPositionFactory.NONE;
            This.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT := cellPositionFactory.NONE;
            This.BOTTOM_THIRD_FROM_RIGHT := cellPositionFactory.NONE;
            This.BOTTOM_FOURTH_FROM_RIGHT := cellPositionFactory.NONE;
            This.TOP_SECOND_FROM_LEFT := cellPositionFactory.NONE;
            This.TOP_SECOND_FROM_RIGHT := cellPositionFactory.NONE;
        end if;
   end Initialize;

   function Create return BasicTouchButtonCellPositionFactory_Access is
      This : constant BasicTouchButtonCellPositionFactory_Access := new BasicTouchButtonCellPositionFactory;
   begin
      BasicTouchButtonCellPositionFactory_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package;


