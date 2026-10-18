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
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package; use org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

package org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package is

   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package AllBinaryEventObjectFactoryInterface_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

   type DestroyEventFactory is tagged;
   type DestroyEventFactory_Access is access all DestroyEventFactory'Class;
   type DestroyEventFactory_Access_Array is array (Natural range <>) of DestroyEventFactory_Access;
   type DestroyEventFactory_Access_Array_Access is access all DestroyEventFactory_Access_Array;
   type DestroyEventFactory_Access_Array_Access_Array is array (Natural range <>) of DestroyEventFactory_Access_Array_Access;
   type DestroyEventFactory_Access_Array_Access_Array_Access is access all DestroyEventFactory_Access_Array_Access_Array;

   type DestroyEventFactory is new Java_Object and AllBinaryEventObjectFactoryInterface with record
      combatGameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out DestroyEventFactory'Class; combatGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (combatGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return DestroyEventFactory_Access;
   function getInstance (This : in out DestroyEventFactory) return AllBinaryEventObject_Access;

end org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package;


