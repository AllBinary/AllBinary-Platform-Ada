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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.input.motion.button.BaseTouchInput_Package; use org.allbinary.input.motion.button.BaseTouchInput_Package;

package org.allbinary.input.motion.button.NoButtonsBuilder_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type NoButtonsBuilder is tagged;
   type NoButtonsBuilder_Access is access all NoButtonsBuilder'Class;
   type NoButtonsBuilder_Access_Array is array (Natural range <>) of NoButtonsBuilder_Access;
   type NoButtonsBuilder_Access_Array_Access is access all NoButtonsBuilder_Access_Array;

   type NoButtonsBuilder is new BaseTouchInput with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NoButtonsBuilder'Class);
   function Create return NoButtonsBuilder_Access;
   function getList (This : in out NoButtonsBuilder) return BasicArrayList_Access;

end org.allbinary.input.motion.button.NoButtonsBuilder_Package;


