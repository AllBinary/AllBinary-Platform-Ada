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

limited with org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package;
package org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References is
   type BasicTouchButtonCellPositionFactory_Access is access all org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package.BasicTouchButtonCellPositionFactory'Class;
   type BasicTouchButtonCellPositionFactory_Access_Array is array (Natural range <>) of BasicTouchButtonCellPositionFactory_Access;
   type BasicTouchButtonCellPositionFactory_Access_Array_Access is access all BasicTouchButtonCellPositionFactory_Access_Array;
   type BasicTouchButtonCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of BasicTouchButtonCellPositionFactory_Access_Array_Access;
   type BasicTouchButtonCellPositionFactory_Access_Array_Access_Array_Access is access all BasicTouchButtonCellPositionFactory_Access_Array_Access_Array;
end org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References;

with org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPosition_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package is

   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CellPosition_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access;
   use type CellPosition_Access;
   subtype CellPosition_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array;
   use type CellPosition_Access_Array;
   subtype CellPosition_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access;
   use type CellPosition_Access_Array_Access;
   subtype CellPosition_Access_Array_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array;
   use type CellPosition_Access_Array_Access_Array;
   subtype CellPosition_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array_Access;
   use type CellPosition_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicTouchButtonCellPositionFactory_Access is org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References.BasicTouchButtonCellPositionFactory_Access;
   function "=" (Left, Right : BasicTouchButtonCellPositionFactory_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References."=";
   subtype BasicTouchButtonCellPositionFactory_Access_Array is org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References.BasicTouchButtonCellPositionFactory_Access_Array;
   function "=" (Left, Right : BasicTouchButtonCellPositionFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References."=";
   subtype BasicTouchButtonCellPositionFactory_Access_Array_Access is org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References.BasicTouchButtonCellPositionFactory_Access_Array_Access;
   function "=" (Left, Right : BasicTouchButtonCellPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References."=";
   subtype BasicTouchButtonCellPositionFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References.BasicTouchButtonCellPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTouchButtonCellPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References."=";
   subtype BasicTouchButtonCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References.BasicTouchButtonCellPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTouchButtonCellPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package_References."=";

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


