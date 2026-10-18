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

package org.allbinary.input.motion.button.TouchButtonFireResource_Package is


   type TouchButtonFireResource is tagged;
   type TouchButtonFireResource_Access is access all TouchButtonFireResource'Class;
   type TouchButtonFireResource_Access_Array is array (Natural range <>) of TouchButtonFireResource_Access;
   type TouchButtonFireResource_Access_Array_Access is access all TouchButtonFireResource_Access_Array;
   type TouchButtonFireResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonFireResource_Access_Array_Access;
   type TouchButtonFireResource_Access_Array_Access_Array_Access is access all TouchButtonFireResource_Access_Array_Access_Array;

   type TouchButtonFireResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonFireResource'Class);
   function Create return TouchButtonFireResource_Access;
   function getInstance return TouchButtonResource_Access;

end org.allbinary.input.motion.button.TouchButtonFireResource_Package;


