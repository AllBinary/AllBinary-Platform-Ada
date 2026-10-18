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
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;

package org.allbinary.game.input.mapping.InputMapping_Package is

   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type InputMapping is tagged;
   type InputMapping_Access is access all InputMapping'Class;
   type InputMapping_Access_Array is array (Natural range <>) of InputMapping_Access;
   type InputMapping_Access_Array_Access is access all InputMapping_Access_Array;
   type InputMapping_Access_Array_Access_Array is array (Natural range <>) of InputMapping_Access_Array_Access;
   type InputMapping_Access_Array_Access_Array_Access is access all InputMapping_Access_Array_Access_Array;

   type InputMapping is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      hashtable : ABHashtable_Access;
      mappedList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out InputMapping'Class);
   function Create return InputMapping_Access;
   function getTotalMapped (This : in out InputMapping) return Integer;
   function isDefaultNew (This : in out InputMapping) return Boolean;
   function getDefault (This : in out InputMapping) return InputToGameKeyMapping_Access;
   procedure removeAll (This : in out InputMapping);
   procedure remove (This : in out InputMapping; input_Param : access Input_Package.Input'Class; mappedToInput_Param : access Input_Package.Input'Class);
   procedure addMapping (This : in out InputMapping; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
   procedure add (This : in out InputMapping; input_Param : access Input_Package.Input'Class; mappedToInput_Param : access Input_Package.Input'Class);
   function isMapped (This : in out InputMapping; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isMapped (This : in out InputMapping; input_Param : access Input_Package.Input'Class);
   function getMappedInput (This : in out InputMapping; id_Param : access Input_Package.Input'Class) return BasicArrayList_Access;
   procedure getMappedInput (This : in out InputMapping; id_Param : access Input_Package.Input'Class);
   function getHashtable (This : in out InputMapping) return ABHashtable_Access;

end org.allbinary.game.input.mapping.InputMapping_Package;


