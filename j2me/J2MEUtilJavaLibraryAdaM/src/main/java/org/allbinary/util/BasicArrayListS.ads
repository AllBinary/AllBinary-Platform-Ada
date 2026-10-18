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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.util.BasicArrayListS_Package is


   type BasicArrayListS is tagged;
   type BasicArrayListS_Access is access all BasicArrayListS'Class;
   type BasicArrayListS_Access_Array is array (Natural range <>) of BasicArrayListS_Access;
   type BasicArrayListS_Access_Array_Access is access all BasicArrayListS_Access_Array;
   type BasicArrayListS_Access_Array_Access_Array is array (Natural range <>) of BasicArrayListS_Access_Array_Access;
   type BasicArrayListS_Access_Array_Access_Array_Access is access all BasicArrayListS_Access_Array_Access_Array;

   type BasicArrayListS is new BasicArrayList with null record;

   procedure Initialize (This : in out BasicArrayListS'Class; size : Integer);
   function Create (size : Integer) return BasicArrayListS_Access;

end org.allbinary.util.BasicArrayListS_Package;


