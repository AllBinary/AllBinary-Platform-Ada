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

package org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package is


   type BodyData is tagged;
   type BodyData_Access is access all BodyData'Class;
   type BodyData_Access_Array is array (Natural range <>) of BodyData_Access;
   type BodyData_Access_Array_Access is access all BodyData_Access_Array;

   type BodyData is new Java_Object with record
      NAME : Unbounded_String;
      VIEWNAMEKEY : Unbounded_String;
      MIN : Integer;
   end record;
   instance : BodyData_Access;

   procedure Initialize (This : in out BodyData'Class);
   function Create return BodyData_Access;
   function getInstance return BodyData_Access;
   procedure getInstance;

end org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;


