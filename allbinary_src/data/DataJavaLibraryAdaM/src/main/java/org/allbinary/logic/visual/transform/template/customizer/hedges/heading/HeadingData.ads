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

package org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingData_Package is


   type HeadingData is tagged;
   type HeadingData_Access is access all HeadingData'Class;
   type HeadingData_Access_Array is array (Natural range <>) of HeadingData_Access;
   type HeadingData_Access_Array_Access is access all HeadingData_Access_Array;
   type HeadingData_Access_Array_Access_Array is array (Natural range <>) of HeadingData_Access_Array_Access;
   type HeadingData_Access_Array_Access_Array_Access is access all HeadingData_Access_Array_Access_Array;

   type HeadingData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out HeadingData'Class);
   function Create return HeadingData_Access;

end org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingData_Package;


