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

package org.allbinary.media.graphics.geography.map.PathData_Package is


   type PathData is tagged;
   type PathData_Access is access all PathData'Class;
   type PathData_Access_Array is array (Natural range <>) of PathData_Access;
   type PathData_Access_Array_Access is access all PathData_Access_Array;

   type PathData is new Java_Object with record
      OFFSET : Integer;
   end record;
   instance : PathData_Access;

   procedure Initialize (This : in out PathData'Class);
   function Create return PathData_Access;
   function getInstance return PathData_Access;
   procedure getInstance;

end org.allbinary.media.graphics.geography.map.PathData_Package;


