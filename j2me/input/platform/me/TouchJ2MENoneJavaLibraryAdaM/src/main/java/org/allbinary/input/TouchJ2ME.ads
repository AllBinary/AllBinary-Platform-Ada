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

package org.allbinary.input.TouchJ2ME_Package is


   type TouchJ2ME is tagged;
   type TouchJ2ME_Access is access all TouchJ2ME'Class;
   type TouchJ2ME_Access_Array is array (Natural range <>) of TouchJ2ME_Access;
   type TouchJ2ME_Access_Array_Access is access all TouchJ2ME_Access_Array;

   type TouchJ2ME is new Java_Object with null record;

   procedure Initialize (This : in out TouchJ2ME'Class);
   function Create return TouchJ2ME_Access;
   procedure pointerDragged (This : in out TouchJ2ME; x : Integer; y : Integer);
   procedure pointerPressed (This : in out TouchJ2ME; x : Integer; y : Integer);
   procedure pointerReleased (This : in out TouchJ2ME; x : Integer; y : Integer);

end org.allbinary.input.TouchJ2ME_Package;


