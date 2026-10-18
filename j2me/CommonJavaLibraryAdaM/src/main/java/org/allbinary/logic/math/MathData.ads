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

package org.allbinary.logic.math.MathData_Package is


   type MathData is tagged;
   type MathData_Access is access all MathData'Class;
   type MathData_Access_Array is array (Natural range <>) of MathData_Access;
   type MathData_Access_Array_Access is access all MathData_Access_Array;
   type MathData_Access_Array_Access_Array is array (Natural range <>) of MathData_Access_Array_Access;
   type MathData_Access_Array_Access_Array_Access is access all MathData_Access_Array_Access_Array;

   type MathData is new Java_Object with record
      EQUALS : Unbounded_String;
      PLUS : Unbounded_String;
      GREATER_THAN : Unbounded_String;
      MINUS : Unbounded_String;
      DIVIDE : Unbounded_String;
      MULTIPLY : Unbounded_String;
   end record;
   instance : MathData_Access;

   procedure Initialize (This : in out MathData'Class);
   function Create return MathData_Access;
   function getInstance return MathData_Access;

end org.allbinary.logic.math.MathData_Package;


