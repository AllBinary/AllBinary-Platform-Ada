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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.input.motion.button.BaseTouchInput_Package; use org.allbinary.input.motion.button.BaseTouchInput_Package;

package org.allbinary.input.motion.button.NoBuildingSelectedTouchButtonsBuilder_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type NoBuildingSelectedTouchButtonsBuilder is tagged;
   type NoBuildingSelectedTouchButtonsBuilder_Access is access all NoBuildingSelectedTouchButtonsBuilder'Class;
   type NoBuildingSelectedTouchButtonsBuilder_Access_Array is array (Natural range <>) of NoBuildingSelectedTouchButtonsBuilder_Access;
   type NoBuildingSelectedTouchButtonsBuilder_Access_Array_Access is access all NoBuildingSelectedTouchButtonsBuilder_Access_Array;
   type NoBuildingSelectedTouchButtonsBuilder_Access_Array_Access_Array is array (Natural range <>) of NoBuildingSelectedTouchButtonsBuilder_Access_Array_Access;
   type NoBuildingSelectedTouchButtonsBuilder_Access_Array_Access_Array_Access is access all NoBuildingSelectedTouchButtonsBuilder_Access_Array_Access_Array;

   type NoBuildingSelectedTouchButtonsBuilder is new BaseTouchInput with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NoBuildingSelectedTouchButtonsBuilder'Class);
   function Create return NoBuildingSelectedTouchButtonsBuilder_Access;
   function getList (This : in out NoBuildingSelectedTouchButtonsBuilder) return BasicArrayList_Access;

end org.allbinary.input.motion.button.NoBuildingSelectedTouchButtonsBuilder_Package;


