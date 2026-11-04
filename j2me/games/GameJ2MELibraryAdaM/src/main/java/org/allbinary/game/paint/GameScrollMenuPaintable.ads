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

limited with org.allbinary.game.paint.GameScrollMenuPaintable_Package;
package org.allbinary.game.paint.GameScrollMenuPaintable_Package_References is
   type GameScrollMenuPaintable_Access is access all org.allbinary.game.paint.GameScrollMenuPaintable_Package.GameScrollMenuPaintable'Class;
   type GameScrollMenuPaintable_Access_Array is array (Natural range <>) of GameScrollMenuPaintable_Access;
   type GameScrollMenuPaintable_Access_Array_Access is access all GameScrollMenuPaintable_Access_Array;
   type GameScrollMenuPaintable_Access_Array_Access_Array is array (Natural range <>) of GameScrollMenuPaintable_Access_Array_Access;
   type GameScrollMenuPaintable_Access_Array_Access_Array_Access is access all GameScrollMenuPaintable_Access_Array_Access_Array;
end org.allbinary.game.paint.GameScrollMenuPaintable_Package_References;

with org.allbinary.game.paint.GameScrollMenuPaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.ColorChangeListener_Package; use org.allbinary.graphics.color.ColorChangeListener_Package;
limited with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.game.paint.BasicGameDemoPaintable_Package; use org.allbinary.game.paint.BasicGameDemoPaintable_Package;

package org.allbinary.game.paint.GameScrollMenuPaintable_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorChangeListener_Package renames Standard.org.allbinary.graphics.color.ColorChangeListener_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   use type Paintable_Access;
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   use type Paintable_Access_Array;
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   use type Paintable_Access_Array_Access;
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   use type Paintable_Access_Array_Access_Array;
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   use type Paintable_Access_Array_Access_Array_Access;
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


   subtype GameScrollMenuPaintable_Access is org.allbinary.game.paint.GameScrollMenuPaintable_Package_References.GameScrollMenuPaintable_Access;
   function "=" (Left, Right : GameScrollMenuPaintable_Access) return Boolean renames org.allbinary.game.paint.GameScrollMenuPaintable_Package_References."=";
   subtype GameScrollMenuPaintable_Access_Array is org.allbinary.game.paint.GameScrollMenuPaintable_Package_References.GameScrollMenuPaintable_Access_Array;
   function "=" (Left, Right : GameScrollMenuPaintable_Access_Array) return Boolean renames org.allbinary.game.paint.GameScrollMenuPaintable_Package_References."=";
   subtype GameScrollMenuPaintable_Access_Array_Access is org.allbinary.game.paint.GameScrollMenuPaintable_Package_References.GameScrollMenuPaintable_Access_Array_Access;
   function "=" (Left, Right : GameScrollMenuPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.GameScrollMenuPaintable_Package_References."=";
   subtype GameScrollMenuPaintable_Access_Array_Access_Array is org.allbinary.game.paint.GameScrollMenuPaintable_Package_References.GameScrollMenuPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : GameScrollMenuPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.GameScrollMenuPaintable_Package_References."=";
   subtype GameScrollMenuPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.GameScrollMenuPaintable_Package_References.GameScrollMenuPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameScrollMenuPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.GameScrollMenuPaintable_Package_References."=";

   type GameScrollMenuPaintable is new BasicGameDemoPaintable and ColorChangeListener with null record;

   procedure Initialize (This : in out GameScrollMenuPaintable'Class; mainDemoStatePaintable_Param : access Paintable_Package.Paintable'Class; ownershipPaintable_Param : access Paintable_Package.Paintable'Class; helpPaintableInterface_Param : access Paintable_Package.Paintable'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (mainDemoStatePaintable_Param : access Paintable_Package.Paintable'Class; ownershipPaintable_Param : access Paintable_Package.Paintable'Class; helpPaintableInterface_Param : access Paintable_Package.Paintable'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) return GameScrollMenuPaintable_Access;
   procedure setState (This : in out GameScrollMenuPaintable; state : Integer);
   procedure onEvent (This : in out GameScrollMenuPaintable; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure setColor (This : in out GameScrollMenuPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.game.paint.GameScrollMenuPaintable_Package;


