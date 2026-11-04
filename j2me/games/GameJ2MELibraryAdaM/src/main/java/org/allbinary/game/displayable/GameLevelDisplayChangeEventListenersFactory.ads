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

limited with org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package;
package org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References is
   type GameLevelDisplayChangeEventListenersFactory_Access is access all org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package.GameLevelDisplayChangeEventListenersFactory'Class;
   type GameLevelDisplayChangeEventListenersFactory_Access_Array is array (Natural range <>) of GameLevelDisplayChangeEventListenersFactory_Access;
   type GameLevelDisplayChangeEventListenersFactory_Access_Array_Access is access all GameLevelDisplayChangeEventListenersFactory_Access_Array;
   type GameLevelDisplayChangeEventListenersFactory_Access_Array_Access_Array is array (Natural range <>) of GameLevelDisplayChangeEventListenersFactory_Access_Array_Access;
   type GameLevelDisplayChangeEventListenersFactory_Access_Array_Access_Array_Access is access all GameLevelDisplayChangeEventListenersFactory_Access_Array_Access_Array;
end org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References;

with org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package is

   package DisplayChangeEventListener_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype DisplayChangeEventListener_Access is org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References.DisplayChangeEventListener_Access;
   use type DisplayChangeEventListener_Access;
   subtype DisplayChangeEventListener_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References.DisplayChangeEventListener_Access_Array;
   use type DisplayChangeEventListener_Access_Array;
   subtype DisplayChangeEventListener_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References.DisplayChangeEventListener_Access_Array_Access;
   use type DisplayChangeEventListener_Access_Array_Access;
   subtype DisplayChangeEventListener_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References.DisplayChangeEventListener_Access_Array_Access_Array;
   use type DisplayChangeEventListener_Access_Array_Access_Array;
   subtype DisplayChangeEventListener_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package_References.DisplayChangeEventListener_Access_Array_Access_Array_Access;
   use type DisplayChangeEventListener_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameLevelDisplayChangeEventListenersFactory_Access is org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References.GameLevelDisplayChangeEventListenersFactory_Access;
   function "=" (Left, Right : GameLevelDisplayChangeEventListenersFactory_Access) return Boolean renames org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References."=";
   subtype GameLevelDisplayChangeEventListenersFactory_Access_Array is org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References.GameLevelDisplayChangeEventListenersFactory_Access_Array;
   function "=" (Left, Right : GameLevelDisplayChangeEventListenersFactory_Access_Array) return Boolean renames org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References."=";
   subtype GameLevelDisplayChangeEventListenersFactory_Access_Array_Access is org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References.GameLevelDisplayChangeEventListenersFactory_Access_Array_Access;
   function "=" (Left, Right : GameLevelDisplayChangeEventListenersFactory_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References."=";
   subtype GameLevelDisplayChangeEventListenersFactory_Access_Array_Access_Array is org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References.GameLevelDisplayChangeEventListenersFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameLevelDisplayChangeEventListenersFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References."=";
   subtype GameLevelDisplayChangeEventListenersFactory_Access_Array_Access_Array_Access is org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References.GameLevelDisplayChangeEventListenersFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameLevelDisplayChangeEventListenersFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package_References."=";

   type GameLevelDisplayChangeEventListenersFactory is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   instance : GameLevelDisplayChangeEventListenersFactory_Access;

   procedure Initialize (This : in out GameLevelDisplayChangeEventListenersFactory'Class);
   function Create return GameLevelDisplayChangeEventListenersFactory_Access;
   function getInstance return GameLevelDisplayChangeEventListenersFactory_Access;
   procedure add (This : in out GameLevelDisplayChangeEventListenersFactory; displayChangeEventListener_Param : access DisplayChangeEventListener_Package.DisplayChangeEventListener'Class);
   procedure clear (This : in out GameLevelDisplayChangeEventListenersFactory);

end org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory_Package;


