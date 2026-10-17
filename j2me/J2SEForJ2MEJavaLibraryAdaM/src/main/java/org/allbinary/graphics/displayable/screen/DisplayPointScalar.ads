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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;

package org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;

   type DisplayPointScalar is tagged;
   type DisplayPointScalar_Access is access all DisplayPointScalar'Class;
   type DisplayPointScalar_Access_Array is array (Natural range <>) of DisplayPointScalar_Access;
   type DisplayPointScalar_Access_Array_Access is access all DisplayPointScalar_Access_Array;

   type DisplayPointScalar is new Java_Object with null record;
   instance : DisplayPointScalar_Access;

   procedure Initialize (This : in out DisplayPointScalar'Class);
   function Create return DisplayPointScalar_Access;
   function getInstance return DisplayPointScalar_Access;
   function processX (This : in out DisplayPointScalar; value : Integer) return Integer;
   procedure processX (This : in out DisplayPointScalar; value : Integer);
   function processY (This : in out DisplayPointScalar; value : Integer) return Integer;
   procedure processY (This : in out DisplayPointScalar; value : Integer);
   function process (This : in out DisplayPointScalar; point : GPoint_Access) return GPoint_Access;
   procedure process (This : in out DisplayPointScalar; point : GPoint_Access);

end org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package;


