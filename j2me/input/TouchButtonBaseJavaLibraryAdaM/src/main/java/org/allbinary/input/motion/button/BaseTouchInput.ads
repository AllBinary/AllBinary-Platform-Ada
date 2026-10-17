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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package org.allbinary.input.motion.button.BaseTouchInput_Package is

   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames org.allbinary.util.BasicArrayListUtil_Package;

   type BaseTouchInput is tagged;
   type BaseTouchInput_Access is access all BaseTouchInput'Class;
   type BaseTouchInput_Access_Array is array (Natural range <>) of BaseTouchInput_Access;
   type BaseTouchInput_Access_Array_Access is access all BaseTouchInput_Access_Array;

   type BaseTouchInput is new Java_Object with record
      commonStrings : CommonStrings_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;

   procedure Initialize (This : in out BaseTouchInput'Class);
   function Create return BaseTouchInput_Access;
   function getList (This : in out BaseTouchInput) return BasicArrayList_Access;
   procedure getList (This : in out BaseTouchInput);
   function toString (This : in out BaseTouchInput) return Unbounded_String;
   procedure toString (This : in out BaseTouchInput);

end org.allbinary.input.motion.button.BaseTouchInput_Package;


