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

package org.allbinary.game.input.Input_Package is


   type Input is tagged;
   type Input_Access is access all Input'Class;
   type Input_Access_Array is array (Natural range <>) of Input_Access;
   type Input_Access_Array_Access is access all Input_Access_Array;
   type Input_Access_Array_Access_Array is array (Natural range <>) of Input_Access_Array_Access;
   type Input_Access_Array_Access_Array_Access is access all Input_Access_Array_Access_Array;

   type Input is new Java_Object with record
      id : Integer;
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out Input'Class; id : Integer; name : Unbounded_String);
   function Create (id : Integer; name : Unbounded_String) return Input_Access;
   function getId (This : in out Input) return Integer;
   procedure setId (This : in out Input; key : Integer);
   function getName (This : in out Input) return Unbounded_String;
   procedure setName (This : in out Input; keyName : Unbounded_String);
   function toString (This : in out Input) return Unbounded_String;

end org.allbinary.game.input.Input_Package;


