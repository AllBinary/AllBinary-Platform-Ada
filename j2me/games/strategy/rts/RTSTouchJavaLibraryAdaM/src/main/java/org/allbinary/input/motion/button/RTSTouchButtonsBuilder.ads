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

package org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames org.allbinary.util.BasicArrayListUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;

   type RTSTouchButtonsBuilder is tagged;
   type RTSTouchButtonsBuilder_Access is access all RTSTouchButtonsBuilder'Class;
   type RTSTouchButtonsBuilder_Access_Array is array (Natural range <>) of RTSTouchButtonsBuilder_Access;
   type RTSTouchButtonsBuilder_Access_Array_Access is access all RTSTouchButtonsBuilder_Access_Array;

   type RTSTouchButtonsBuilder is new BaseTouchInput with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out RTSTouchButtonsBuilder'Class);
   function Create return RTSTouchButtonsBuilder_Access;
   function getList (This : in out RTSTouchButtonsBuilder) return BasicArrayList_Access;
   procedure getList (This : in out RTSTouchButtonsBuilder);

end org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package;


