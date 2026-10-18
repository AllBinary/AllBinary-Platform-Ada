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

package org.allbinary.game.layer.SWTUtil_Package is


   type SWTUtil is tagged;
   type SWTUtil_Access is access all SWTUtil'Class;
   type SWTUtil_Access_Array is array (Natural range <>) of SWTUtil_Access;
   type SWTUtil_Access_Array_Access is access all SWTUtil_Access_Array;
   type SWTUtil_Access_Array_Access_Array is array (Natural range <>) of SWTUtil_Access_Array_Access;
   type SWTUtil_Access_Array_Access_Array_Access is access all SWTUtil_Access_Array_Access_Array;

   type SWTUtil is new Java_Object with null record;
   isSWT : Boolean;
   SWT : Unbounded_String;

   procedure Initialize (This : in out SWTUtil'Class);
   function Create return SWTUtil_Access;

end org.allbinary.game.layer.SWTUtil_Package;


