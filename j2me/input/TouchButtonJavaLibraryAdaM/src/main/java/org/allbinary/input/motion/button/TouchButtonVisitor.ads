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
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;

package org.allbinary.input.motion.button.TouchButtonVisitor_Package is


   type TouchButtonVisitor is tagged;
   type TouchButtonVisitor_Access is access all TouchButtonVisitor'Class;
   type TouchButtonVisitor_Access_Array is array (Natural range <>) of TouchButtonVisitor_Access;
   type TouchButtonVisitor_Access_Array_Access is access all TouchButtonVisitor_Access_Array;

   type TouchButtonVisitor is new Java_Object with null record;

   procedure Initialize (This : in out TouchButtonVisitor'Class);
   function Create return TouchButtonVisitor_Access;
   procedure process (This : in out TouchButtonVisitor; touchButtonInput_Param : access TouchButtonInput'Class; string_Id : Unbounded_String);

end org.allbinary.input.motion.button.TouchButtonVisitor_Package;


