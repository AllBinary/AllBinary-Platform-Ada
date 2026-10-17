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
with org.allbinary.game.displayable.canvas.NullGameCanvas_Package; use org.allbinary.game.displayable.canvas.NullGameCanvas_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.combat.destroy.event.DestroyedEvent_Package is

   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package NullGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.NullGameCanvas_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type DestroyedEvent is tagged;
   type DestroyedEvent_Access is access all DestroyedEvent'Class;
   type DestroyedEvent_Access_Array is array (Natural range <>) of DestroyedEvent_Access;
   type DestroyedEvent_Access_Array_Access is access all DestroyedEvent_Access_Array;

   type DestroyedEvent is new AllBinaryEventObject with record
      allBinaryGameCanvas : AllBinaryGameCanvas_Access;
      allBinaryLayerInterface : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out DestroyedEvent'Class; combatGameCanvas : AllBinaryGameCanvas_Access);
   function Create (combatGameCanvas : AllBinaryGameCanvas_Access) return DestroyedEvent_Access;
   function getAllBinaryGameCanvas (This : in out DestroyedEvent) return AllBinaryGameCanvas_Access;
   procedure getAllBinaryGameCanvas (This : in out DestroyedEvent);
   function getLayerInterface (This : in out DestroyedEvent) return AllBinaryLayer_Access;
   procedure getLayerInterface (This : in out DestroyedEvent);
   procedure setAllBinaryGameCanvas (This : in out DestroyedEvent; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure setLayerInterfaceForCircularStaticPool (This : in out DestroyedEvent; allBinaryLayerInterface : AllBinaryLayer_Access);
   function toString (This : in out DestroyedEvent) return Unbounded_String;
   procedure toString (This : in out DestroyedEvent);

end org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;


