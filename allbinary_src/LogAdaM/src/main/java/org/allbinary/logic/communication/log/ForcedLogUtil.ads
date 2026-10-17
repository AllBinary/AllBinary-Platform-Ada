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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;

package org.allbinary.logic.communication.log.ForcedLogUtil_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;

   type ForcedLogUtil is tagged;
   type ForcedLogUtil_Access is access all ForcedLogUtil'Class;
   type ForcedLogUtil_Access_Array is array (Natural range <>) of ForcedLogUtil_Access;
   type ForcedLogUtil_Access_Array_Access is access all ForcedLogUtil_Access_Array;

   type ForcedLogUtil is new Java_Object with null record;

   procedure Initialize (This : in out ForcedLogUtil'Class);
   function Create return ForcedLogUtil_Access;
   procedure log (message : Unbounded_String; anyType_Param : access Java_Object'Class);

end org.allbinary.logic.communication.log.ForcedLogUtil_Package;


