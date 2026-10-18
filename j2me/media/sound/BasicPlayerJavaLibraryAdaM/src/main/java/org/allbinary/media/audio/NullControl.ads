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
with javax.microedition.media.Control_Package; use javax.microedition.media.Control_Package;

package org.allbinary.media.audio.NullControl_Package is

   package Control_Package renames Standard.javax.microedition.media.Control_Package;

   type NullControl is tagged;
   type NullControl_Access is access all NullControl'Class;
   type NullControl_Access_Array is array (Natural range <>) of NullControl_Access;
   type NullControl_Access_Array_Access is access all NullControl_Access_Array;

   type NullControl is new Control with null record;

   procedure Initialize (This : in out NullControl'Class);
   function Create return NullControl_Access;

end org.allbinary.media.audio.NullControl_Package;


