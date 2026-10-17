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
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;

package org.allbinary.graphics.form.InputProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package PlayerGameInputCompositeInterface_Package renames Standard.org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;

   type InputProcessor is tagged;
   type InputProcessor_Access is access all InputProcessor'Class;
   type InputProcessor_Access_Array is array (Natural range <>) of InputProcessor_Access;
   type InputProcessor_Access_Array_Access is access all InputProcessor_Access_Array;

   type InputProcessor is new Processor with record
      playerGameInputCompositeInterface : PlayerGameInputCompositeInterface_Access;
   end record;

   procedure Initialize (This : in out InputProcessor'Class; playerGameInputCompositeInterface : PlayerGameInputCompositeInterface_Access);
   function Create (playerGameInputCompositeInterface : PlayerGameInputCompositeInterface_Access) return InputProcessor_Access;
   procedure process (This : in out InputProcessor);

end org.allbinary.graphics.form.InputProcessor_Package;


