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

package org.allbinary.logic.visual.dhtml.style.StyleData_Package is


   type StyleData is tagged;
   type StyleData_Access is access all StyleData'Class;
   type StyleData_Access_Array is array (Natural range <>) of StyleData_Access;
   type StyleData_Access_Array_Access is access all StyleData_Access_Array;

   type StyleData is new Java_Object with record
      NAME : Unbounded_String;
      NAMEMAXLEN : Integer;
   end record;
   instance : StyleData_Access;

   procedure Initialize (This : in out StyleData'Class);
   function Create return StyleData_Access;
   function getInstance return StyleData_Access;
   procedure getInstance;

end org.allbinary.logic.visual.dhtml.style.StyleData_Package;


