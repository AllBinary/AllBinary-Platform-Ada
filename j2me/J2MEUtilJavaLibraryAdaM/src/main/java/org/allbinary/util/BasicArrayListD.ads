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
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.util.BasicArrayListD_Package is


   type BasicArrayListD is tagged;
   type BasicArrayListD_Access is access all BasicArrayListD'Class;
   type BasicArrayListD_Access_Array is array (Natural range <>) of BasicArrayListD_Access;
   type BasicArrayListD_Access_Array_Access is access all BasicArrayListD_Access_Array;
   type BasicArrayListD_Access_Array_Access_Array is array (Natural range <>) of BasicArrayListD_Access_Array_Access;
   type BasicArrayListD_Access_Array_Access_Array_Access is access all BasicArrayListD_Access_Array_Access_Array;

   type BasicArrayListD is new BasicArrayListS with null record;

   procedure Initialize (This : in out BasicArrayListD'Class);
   function Create return BasicArrayListD_Access;

end org.allbinary.util.BasicArrayListD_Package;


