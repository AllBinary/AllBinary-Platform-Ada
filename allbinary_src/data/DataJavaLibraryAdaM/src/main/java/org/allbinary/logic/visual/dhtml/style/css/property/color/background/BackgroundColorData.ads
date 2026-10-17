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

package org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package is


   type BackgroundColorData is tagged;
   type BackgroundColorData_Access is access all BackgroundColorData'Class;
   type BackgroundColorData_Access_Array is array (Natural range <>) of BackgroundColorData_Access;
   type BackgroundColorData_Access_Array_Access is access all BackgroundColorData_Access_Array;

   type BackgroundColorData is new Java_Object with record
      VALUE : Unbounded_String;
   end record;
   instance : BackgroundColorData_Access;

   procedure Initialize (This : in out BackgroundColorData'Class);
   function Create return BackgroundColorData_Access;
   function getInstance return BackgroundColorData_Access;
   procedure getInstance;

end org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package;


