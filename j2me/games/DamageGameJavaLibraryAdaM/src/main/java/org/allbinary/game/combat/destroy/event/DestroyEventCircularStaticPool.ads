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

limited with org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;
package org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References is
   type DestroyEventCircularStaticPool_Access is access all org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package.DestroyEventCircularStaticPool'Class;
   type DestroyEventCircularStaticPool_Access_Array is array (Natural range <>) of DestroyEventCircularStaticPool_Access;
   type DestroyEventCircularStaticPool_Access_Array_Access is access all DestroyEventCircularStaticPool_Access_Array;
   type DestroyEventCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of DestroyEventCircularStaticPool_Access_Array_Access;
   type DestroyEventCircularStaticPool_Access_Array_Access_Array_Access is access all DestroyEventCircularStaticPool_Access_Array_Access_Array;
end org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References;

with org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References;
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
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References;
limited with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References;

package org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package is

   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryEventCircularPool_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
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
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype AllBinaryEventCircularPool_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access;
   use type AllBinaryEventCircularPool_Access;
   subtype AllBinaryEventCircularPool_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array;
   use type AllBinaryEventCircularPool_Access_Array;
   subtype AllBinaryEventCircularPool_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access;
   use type AllBinaryEventCircularPool_Access_Array_Access;
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array;
   use type AllBinaryEventCircularPool_Access_Array_Access_Array;
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   use type AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   subtype DestroyedEvent_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access;
   use type DestroyedEvent_Access;
   subtype DestroyedEvent_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array;
   use type DestroyedEvent_Access_Array;
   subtype DestroyedEvent_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access;
   use type DestroyedEvent_Access_Array_Access;
   subtype DestroyedEvent_Access_Array_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array;
   use type DestroyedEvent_Access_Array_Access_Array;
   subtype DestroyedEvent_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array_Access;
   use type DestroyedEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DestroyEventCircularStaticPool_Access is org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References.DestroyEventCircularStaticPool_Access;
   function "=" (Left, Right : DestroyEventCircularStaticPool_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References."=";
   subtype DestroyEventCircularStaticPool_Access_Array is org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References.DestroyEventCircularStaticPool_Access_Array;
   function "=" (Left, Right : DestroyEventCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References."=";
   subtype DestroyEventCircularStaticPool_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References.DestroyEventCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : DestroyEventCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References."=";
   subtype DestroyEventCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References.DestroyEventCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : DestroyEventCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References."=";
   subtype DestroyEventCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References.DestroyEventCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DestroyEventCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package_References."=";

   type DestroyEventCircularStaticPool is new Java_Object with record
      EVENT_POOL : AllBinaryEventCircularPool_Access;
   end record;
   instance : DestroyEventCircularStaticPool_Access;

   procedure Initialize (This : in out DestroyEventCircularStaticPool'Class);
   function Create return DestroyEventCircularStaticPool_Access;
   function getInstance return DestroyEventCircularStaticPool_Access;
   procedure init (This : in out DestroyEventCircularStaticPool; combatGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function getInstanceForLayer (This : in out DestroyEventCircularStaticPool; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return DestroyedEvent_Access;
   procedure getInstanceForLayer (This : in out DestroyEventCircularStaticPool; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;


