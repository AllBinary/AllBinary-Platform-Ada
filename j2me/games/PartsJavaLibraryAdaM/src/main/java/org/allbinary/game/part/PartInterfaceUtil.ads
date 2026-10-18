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
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;

package org.allbinary.game.part.PartInterfaceUtil_Package is


   type PartInterfaceUtil is tagged;
   type PartInterfaceUtil_Access is access all PartInterfaceUtil'Class;
   type PartInterfaceUtil_Access_Array is array (Natural range <>) of PartInterfaceUtil_Access;
   type PartInterfaceUtil_Access_Array_Access is access all PartInterfaceUtil_Access_Array;
   type PartInterfaceUtil_Access_Array_Access_Array is array (Natural range <>) of PartInterfaceUtil_Access_Array_Access;
   type PartInterfaceUtil_Access_Array_Access_Array_Access is access all PartInterfaceUtil_Access_Array_Access_Array;

   type PartInterfaceUtil is new Java_Object with null record;
   SINGLETON : PartInterface_Access_Array_Access;

   procedure Initialize (This : in out PartInterfaceUtil'Class);
   function Create return PartInterfaceUtil_Access;
   function getZeroArray return PartInterface_Access_Array_Access;

end org.allbinary.game.part.PartInterfaceUtil_Package;


