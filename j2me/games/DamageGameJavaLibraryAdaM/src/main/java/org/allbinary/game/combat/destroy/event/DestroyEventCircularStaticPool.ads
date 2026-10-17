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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package; use org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;

package org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package is

   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryEventCircularPool_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;

   type DestroyEventCircularStaticPool is tagged;
   type DestroyEventCircularStaticPool_Access is access all DestroyEventCircularStaticPool'Class;
   type DestroyEventCircularStaticPool_Access_Array is array (Natural range <>) of DestroyEventCircularStaticPool_Access;
   type DestroyEventCircularStaticPool_Access_Array_Access is access all DestroyEventCircularStaticPool_Access_Array;

   type DestroyEventCircularStaticPool is new Java_Object with record
      EVENT_POOL : AllBinaryEventCircularPool_Access;
   end record;
   instance : DestroyEventCircularStaticPool_Access;

   procedure Initialize (This : in out DestroyEventCircularStaticPool'Class);
   function Create return DestroyEventCircularStaticPool_Access;
   function getInstance return DestroyEventCircularStaticPool_Access;
   procedure getInstance;
   procedure init (This : in out DestroyEventCircularStaticPool; combatGameCanvas : AllBinaryGameCanvas_Access);
   function getInstanceForLayer (This : in out DestroyEventCircularStaticPool; layerInterface : AllBinaryLayer_Access) return DestroyedEvent_Access;
   procedure getInstanceForLayer (This : in out DestroyEventCircularStaticPool; layerInterface : AllBinaryLayer_Access);

end org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;


