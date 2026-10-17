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

package org.allbinary.data.tree.dom.DomData_Package is


   type DomData is tagged;
   type DomData_Access is access all DomData'Class;
   type DomData_Access_Array is array (Natural range <>) of DomData_Access;
   type DomData_Access_Array_Access is access all DomData_Access_Array;

   type DomData is new Java_Object with null record;
   ID : Unbounded_String;
   CHILD : Unbounded_String;
   NAME : Unbounded_String;
   VALUE : Unbounded_String;
   INDEX : Unbounded_String;

   procedure Initialize (This : in out DomData'Class);
   function Create return DomData_Access;

end org.allbinary.data.tree.dom.DomData_Package;


