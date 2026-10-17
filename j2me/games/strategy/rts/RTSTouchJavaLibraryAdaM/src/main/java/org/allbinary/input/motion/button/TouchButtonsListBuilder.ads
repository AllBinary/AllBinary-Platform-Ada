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
with org.allbinary.input.motion.button.BaseTouchInput_Package; use org.allbinary.input.motion.button.BaseTouchInput_Package;

package org.allbinary.input.motion.button.TouchButtonsListBuilder_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type TouchButtonsListBuilder is tagged;
   type TouchButtonsListBuilder_Access is access all TouchButtonsListBuilder'Class;
   type TouchButtonsListBuilder_Access_Array is array (Natural range <>) of TouchButtonsListBuilder_Access;
   type TouchButtonsListBuilder_Access_Array_Access is access all TouchButtonsListBuilder_Access_Array;

   type TouchButtonsListBuilder is new BaseTouchInput with record
      baseTouchInputList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out TouchButtonsListBuilder'Class);
   function Create return TouchButtonsListBuilder_Access;
   procedure addList (This : in out TouchButtonsListBuilder; list_Param : access BasicArrayList'Class);
   procedure add (This : in out TouchButtonsListBuilder; baseTouchInput_Param : access BaseTouchInput'Class);

end org.allbinary.input.motion.button.TouchButtonsListBuilder_Package;


