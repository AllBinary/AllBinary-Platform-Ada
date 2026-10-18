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
--  with javax.sound.sampled.Control_Package; use javax.sound.sampled.Control_Package;
with org.allbinary.media.audio.Type_Package; use org.allbinary.media.audio.Type_Package;

package org.allbinary.media.audio.NullJ2SEControl_Package is


   type NullJ2SEControl is tagged;
   type NullJ2SEControl_Access is access all NullJ2SEControl'Class;
   type NullJ2SEControl_Access_Array is array (Natural range <>) of NullJ2SEControl_Access;
   type NullJ2SEControl_Access_Array_Access is access all NullJ2SEControl_Access_Array;
   type NullJ2SEControl_Access_Array_Access_Array is array (Natural range <>) of NullJ2SEControl_Access_Array_Access;
   type NullJ2SEControl_Access_Array_Access_Array_Access is access all NullJ2SEControl_Access_Array_Access_Array;

   type NullJ2SEControl is new Control with null record;

   procedure Initialize (This : in out NullJ2SEControl'Class; type_Id_Param : access Type_Package.Type'Class);
   function Create (type_Id_Param : access Type_Package.Type'Class) return NullJ2SEControl_Access;

end org.allbinary.media.audio.NullJ2SEControl_Package;


