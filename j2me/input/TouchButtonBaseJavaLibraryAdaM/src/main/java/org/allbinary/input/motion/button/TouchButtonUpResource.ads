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
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.input.motion.button.TouchButtonUpResource_Package is


   type TouchButtonUpResource is tagged;
   type TouchButtonUpResource_Access is access all TouchButtonUpResource'Class;
   type TouchButtonUpResource_Access_Array is array (Natural range <>) of TouchButtonUpResource_Access;
   type TouchButtonUpResource_Access_Array_Access is access all TouchButtonUpResource_Access_Array;
   type TouchButtonUpResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonUpResource_Access_Array_Access;
   type TouchButtonUpResource_Access_Array_Access_Array_Access is access all TouchButtonUpResource_Access_Array_Access_Array;

   type TouchButtonUpResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonUpResource'Class);
   function Create return TouchButtonUpResource_Access;
   function getInstance return TouchButtonResource_Access;

end org.allbinary.input.motion.button.TouchButtonUpResource_Package;


