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


with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPosition_Package_References;
with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
with org.allbinary.graph.V_Package;

package body org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package is

   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
   subtype CellPosition_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access;
   function "=" (Left, Right : CellPosition_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array;
   function "=" (Left, Right : CellPosition_Access_Array) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access;
   function "=" (Left, Right : CellPosition_Access_Array_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : CellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype CellPosition_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.CellPosition_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
            This.SECOND_FROM_TOP_LEFT := CellPosition_Access (cellPositionFactory.NONE);
            This.SECOND_FROM_TOP_RIGHT := CellPosition_Access (cellPositionFactory.NONE);
        end if;
        if (touchButtonLocationHelper.getTotalRows) >= (4) then
            This.THIRD_FROM_BOTTOM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (1), (touchButtonLocationHelper.getTotalRows) - (3));
            This.FOURTH_FROM_BOTTOM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (1), (touchButtonLocationHelper.getTotalRows) - (4));
            This.THIRD_FROM_BOTTOM_LEFT := cellPositionFactory.getInstanceColRow (0, (touchButtonLocationHelper.getTotalRows) - (3));
        else
            This.THIRD_FROM_BOTTOM_RIGHT := CellPosition_Access (cellPositionFactory.NONE);
            This.FOURTH_FROM_BOTTOM_RIGHT := CellPosition_Access (cellPositionFactory.NONE);
            This.THIRD_FROM_BOTTOM_LEFT := CellPosition_Access (cellPositionFactory.NONE);
        end if;
        if (touchButtonLocationHelper.getTotalColumns) >= (4) then
            This.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (3), (touchButtonLocationHelper.getTotalRows) - (2));
            This.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (4), (touchButtonLocationHelper.getTotalRows) - (2));
            This.BOTTOM_THIRD_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (3), (touchButtonLocationHelper.getTotalRows) - (1));
            This.BOTTOM_FOURTH_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (4), (touchButtonLocationHelper.getTotalRows) - (1));
            This.TOP_SECOND_FROM_LEFT := cellPositionFactory.getInstanceColRow (1, 0);
            This.TOP_SECOND_FROM_RIGHT := cellPositionFactory.getInstanceColRow ((touchButtonLocationHelper.getTotalColumns) - (2), 0);
        else
            This.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT := CellPosition_Access (cellPositionFactory.NONE);
            This.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT := CellPosition_Access (cellPositionFactory.NONE);
            This.BOTTOM_THIRD_FROM_RIGHT := CellPosition_Access (cellPositionFactory.NONE);
            This.BOTTOM_FOURTH_FROM_RIGHT := CellPosition_Access (cellPositionFactory.NONE);
            This.TOP_SECOND_FROM_LEFT := CellPosition_Access (cellPositionFactory.NONE);
            This.TOP_SECOND_FROM_RIGHT := CellPosition_Access (cellPositionFactory.NONE);
        end if;
   end Initialize;

   function Create return BasicTouchButtonCellPositionFactory_Access is
      This : constant BasicTouchButtonCellPositionFactory_Access := new BasicTouchButtonCellPositionFactory;
   begin
      BasicTouchButtonCellPositionFactory_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package;


