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
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.animation.AnimationEventHandler_Package is

   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type AnimationEventHandler is tagged;
   type AnimationEventHandler_Access is access all AnimationEventHandler'Class;
   type AnimationEventHandler_Access_Array is array (Natural range <>) of AnimationEventHandler_Access;
   type AnimationEventHandler_Access_Array_Access is access all AnimationEventHandler_Access_Array;
   type AnimationEventHandler_Access_Array_Access_Array is array (Natural range <>) of AnimationEventHandler_Access_Array_Access;
   type AnimationEventHandler_Access_Array_Access_Array_Access is access all AnimationEventHandler_Access_Array_Access_Array;

   type AnimationEventHandler is new BasicEventHandler with null record;
   eventHandler : AnimationEventHandler_Access;

   procedure Initialize (This : in out AnimationEventHandler'Class);
   function Create return AnimationEventHandler_Access;
   function getInstance return AnimationEventHandler_Access;

end org.allbinary.animation.AnimationEventHandler_Package;


