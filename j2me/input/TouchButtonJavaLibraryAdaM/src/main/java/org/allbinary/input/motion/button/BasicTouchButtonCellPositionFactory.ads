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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;

package org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package is

   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type BasicTouchButtonCellPositionFactory is tagged;
   type BasicTouchButtonCellPositionFactory_Access is access all BasicTouchButtonCellPositionFactory'Class;
   type BasicTouchButtonCellPositionFactory_Access_Array is array (Natural range <>) of BasicTouchButtonCellPositionFactory_Access;
   type BasicTouchButtonCellPositionFactory_Access_Array_Access is access all BasicTouchButtonCellPositionFactory_Access_Array;

   type BasicTouchButtonCellPositionFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      TOP_RIGHT : CellPosition_Access;
      TOP_LEFT : CellPosition_Access;
      SECOND_FROM_TOP_LEFT : CellPosition_Access;
      SECOND_FROM_TOP_RIGHT : CellPosition_Access;
      TOP_SECOND_FROM_LEFT : CellPosition_Access;
      TOP_SECOND_FROM_RIGHT : CellPosition_Access;
      BOTTOM_RIGHT : CellPosition_Access;
      BOTTOM_SECOND_FROM_RIGHT : CellPosition_Access;
      SECOND_FROM_BOTTOM_RIGHT : CellPosition_Access;
      THIRD_FROM_BOTTOM_RIGHT : CellPosition_Access;
      FOURTH_FROM_BOTTOM_RIGHT : CellPosition_Access;
      SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT : CellPosition_Access;
      SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT : CellPosition_Access;
      SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT : CellPosition_Access;
      BOTTOM_THIRD_FROM_RIGHT : CellPosition_Access;
      BOTTOM_FOURTH_FROM_RIGHT : CellPosition_Access;
      BOTTOM_SECOND_FROM_LEFT : CellPosition_Access;
      SECOND_FROM_BOTTOM_LEFT : CellPosition_Access;
      THIRD_FROM_BOTTOM_LEFT : CellPosition_Access;
      BOTTOM_LEFT : CellPosition_Access;
      SECOND_FROM_BOTTOM_SECOND_FROM_LEFT : CellPosition_Access;
   end record;

   procedure Initialize (This : in out BasicTouchButtonCellPositionFactory'Class);
   function Create return BasicTouchButtonCellPositionFactory_Access;

end org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package;


