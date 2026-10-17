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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.input.motion.button.BaseTouchInput_Package; use org.allbinary.input.motion.button.BaseTouchInput_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package; use org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package; use org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package;
with org.allbinary.input.motion.button.TouchButtonStrafeRightResource_Package; use org.allbinary.input.motion.button.TouchButtonStrafeRightResource_Package;
with org.allbinary.input.motion.button.TouchButtonStartResource_Package; use org.allbinary.input.motion.button.TouchButtonStartResource_Package;

package org.allbinary.input.motion.button.PreGameScrollSelectionTouchButtonsBuilder_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type PreGameScrollSelectionTouchButtonsBuilder is tagged;
   type PreGameScrollSelectionTouchButtonsBuilder_Access is access all PreGameScrollSelectionTouchButtonsBuilder'Class;
   type PreGameScrollSelectionTouchButtonsBuilder_Access_Array is array (Natural range <>) of PreGameScrollSelectionTouchButtonsBuilder_Access;
   type PreGameScrollSelectionTouchButtonsBuilder_Access_Array_Access is access all PreGameScrollSelectionTouchButtonsBuilder_Access_Array;

   type PreGameScrollSelectionTouchButtonsBuilder is new BaseTouchInput with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PreGameScrollSelectionTouchButtonsBuilder'Class);
   function Create return PreGameScrollSelectionTouchButtonsBuilder_Access;
   function getList (This : in out PreGameScrollSelectionTouchButtonsBuilder) return BasicArrayList_Access;

end org.allbinary.input.motion.button.PreGameScrollSelectionTouchButtonsBuilder_Package;


