-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

package org.eclipse.swt.widgets.Display_Package is


   type Display is tagged;
   type Display_Access is access all Display'Class;
   type Display_Access_Array is array (Natural range <>) of Display_Access;
   type Display_Access_Array_Access is access all Display_Access_Array;
   type Display_Access_Array_Access_Array is array (Natural range <>) of Display_Access_Array_Access;
   type Display_Access_Array_Access_Array_Access is access all Display_Access_Array_Access_Array;

   type Display is new Java_Object with null record;

   procedure Initialize (This : in out Display'Class);
   function Create return Display_Access;
   procedure sleep (This : in out Display);

end org.eclipse.swt.widgets.Display_Package;


