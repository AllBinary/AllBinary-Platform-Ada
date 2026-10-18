-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package org.allbinary.animation.text.TextChangeListener_Package is


   type TextChangeListener is tagged;
   type TextChangeListener_Access is access all TextChangeListener'Class;
   type TextChangeListener_Access_Array is array (Natural range <>) of TextChangeListener_Access;
   type TextChangeListener_Access_Array_Access is access all TextChangeListener_Access_Array;
   type TextChangeListener_Access_Array_Access_Array is array (Natural range <>) of TextChangeListener_Access_Array_Access;
   type TextChangeListener_Access_Array_Access_Array_Access is access all TextChangeListener_Access_Array_Access_Array;

   type TextChangeListener is new Java_Object with null record;
   instance : TextChangeListener_Access;

   procedure Initialize (This : in out TextChangeListener'Class);
   function Create return TextChangeListener_Access;
   function getInstance return TextChangeListener_Access;
   procedure onMeasure (This : in out TextChangeListener);

end org.allbinary.animation.text.TextChangeListener_Package;


