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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.data.tree.dom.ToDomHelper_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type ToDomHelper is tagged;
   type ToDomHelper_Access is access all ToDomHelper'Class;
   type ToDomHelper_Access_Array is array (Natural range <>) of ToDomHelper_Access;
   type ToDomHelper_Access_Array_Access is access all ToDomHelper_Access_Array;

   type ToDomHelper is new Java_Object with null record;

   procedure Initialize (This : in out ToDomHelper'Class);
   function Create return ToDomHelper_Access;
   function convertNull (value_Param : Unbounded_String) return Unbounded_String;
   procedure convertNull (value_Param : Unbounded_String);

end org.allbinary.data.tree.dom.ToDomHelper_Package;


