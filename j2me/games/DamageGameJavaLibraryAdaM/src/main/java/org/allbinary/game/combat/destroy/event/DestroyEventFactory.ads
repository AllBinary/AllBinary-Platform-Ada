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

limited with org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package;
package org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References is
   type DestroyEventFactory_Access is access all org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package.DestroyEventFactory'Class;
   type DestroyEventFactory_Access_Array is array (Natural range <>) of DestroyEventFactory_Access;
   type DestroyEventFactory_Access_Array_Access is access all DestroyEventFactory_Access_Array;
   type DestroyEventFactory_Access_Array_Access_Array is array (Natural range <>) of DestroyEventFactory_Access_Array_Access;
   type DestroyEventFactory_Access_Array_Access_Array_Access is access all DestroyEventFactory_Access_Array_Access_Array;
end org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References;

with org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package; use org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

package org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package is

   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package AllBinaryEventObjectFactoryInterface_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;
   package Reference_Types is
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DestroyEventFactory_Access is org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References.DestroyEventFactory_Access;
   function "=" (Left, Right : DestroyEventFactory_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References."=";
   subtype DestroyEventFactory_Access_Array is org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References.DestroyEventFactory_Access_Array;
   function "=" (Left, Right : DestroyEventFactory_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References."=";
   subtype DestroyEventFactory_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References.DestroyEventFactory_Access_Array_Access;
   function "=" (Left, Right : DestroyEventFactory_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References."=";
   subtype DestroyEventFactory_Access_Array_Access_Array is org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References.DestroyEventFactory_Access_Array_Access_Array;
   function "=" (Left, Right : DestroyEventFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References."=";
   subtype DestroyEventFactory_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References.DestroyEventFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DestroyEventFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package_References."=";

   type DestroyEventFactory is new Java_Object and AllBinaryEventObjectFactoryInterface with record
      combatGameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out DestroyEventFactory'Class; combatGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (combatGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return DestroyEventFactory_Access;
   function getInstance (This : in out DestroyEventFactory) return AllBinaryEventObject_Access;

end org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package;


