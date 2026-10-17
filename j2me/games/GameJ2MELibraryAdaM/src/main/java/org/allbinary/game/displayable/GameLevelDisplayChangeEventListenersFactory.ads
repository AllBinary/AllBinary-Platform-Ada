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
with org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package is

   package DisplayChangeEventHandler_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
   package DisplayChangeEventListener_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type GameLevelDisplayChangeEventListenersFactory is tagged;
   type GameLevelDisplayChangeEventListenersFactory_Access is access all GameLevelDisplayChangeEventListenersFactory'Class;
   type GameLevelDisplayChangeEventListenersFactory_Access_Array is array (Natural range <>) of GameLevelDisplayChangeEventListenersFactory_Access;
   type GameLevelDisplayChangeEventListenersFactory_Access_Array_Access is access all GameLevelDisplayChangeEventListenersFactory_Access_Array;

   type GameLevelDisplayChangeEventListenersFactory is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   instance : GameLevelDisplayChangeEventListenersFactory_Access;

   procedure Initialize (This : in out GameLevelDisplayChangeEventListenersFactory'Class);
   function Create return GameLevelDisplayChangeEventListenersFactory_Access;
   function getInstance return GameLevelDisplayChangeEventListenersFactory_Access;
   procedure add (This : in out GameLevelDisplayChangeEventListenersFactory; displayChangeEventListener_Param : access DisplayChangeEventListener'Class);
   procedure clear (This : in out GameLevelDisplayChangeEventListenersFactory);

end org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package;


