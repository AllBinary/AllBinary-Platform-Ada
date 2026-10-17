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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;

package org.allbinary.game.layer.special.AnalogInputBuilder_Package is

   package GameInputProcessor_Package renames org.allbinary.game.input.GameInputProcessor_Package;

   type AnalogInputBuilder is tagged;
   type AnalogInputBuilder_Access is access all AnalogInputBuilder'Class;
   type AnalogInputBuilder_Access_Array is array (Natural range <>) of AnalogInputBuilder_Access;
   type AnalogInputBuilder_Access_Array_Access is access all AnalogInputBuilder_Access_Array;

   type AnalogInputBuilder is new Java_Object with null record;
   instance : AnalogInputBuilder_Access;

   procedure Initialize (This : in out AnalogInputBuilder'Class);
   function Create return AnalogInputBuilder_Access;
   function getInstance return AnalogInputBuilder_Access;
   procedure getInstance;
   procedure disable (This : in out AnalogInputBuilder; inputProcessorArray : GameInputProcessor_Access_Array_Access; collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access);
   procedure enable (This : in out AnalogInputBuilder; inputProcessorArray : GameInputProcessor_Access_Array_Access; collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access);

end org.allbinary.game.layer.special.AnalogInputBuilder_Package;


