-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
package org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References is
   type BaseMenuBehavior_Access is access all org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package.BaseMenuBehavior'Class;
   type BaseMenuBehavior_Access_Array is array (Natural range <>) of BaseMenuBehavior_Access;
   type BaseMenuBehavior_Access_Array_Access is access all BaseMenuBehavior_Access_Array;
   type BaseMenuBehavior_Access_Array_Access_Array is array (Natural range <>) of BaseMenuBehavior_Access_Array_Access;
   type BaseMenuBehavior_Access_Array_Access_Array_Access is access all BaseMenuBehavior_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References;

with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package is

   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package Reference_Types is
   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   use type DisplayChangeEvent_Access;
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   use type DisplayChangeEvent_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access;
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   use type DisplayChangeEvent_Access_Array_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BaseMenuBehavior_Access is org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References.BaseMenuBehavior_Access;
   function "=" (Left, Right : BaseMenuBehavior_Access) return Boolean renames org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References."=";
   subtype BaseMenuBehavior_Access_Array is org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References.BaseMenuBehavior_Access_Array;
   function "=" (Left, Right : BaseMenuBehavior_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References."=";
   subtype BaseMenuBehavior_Access_Array_Access is org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References.BaseMenuBehavior_Access_Array_Access;
   function "=" (Left, Right : BaseMenuBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References."=";
   subtype BaseMenuBehavior_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References.BaseMenuBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : BaseMenuBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References."=";
   subtype BaseMenuBehavior_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References.BaseMenuBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseMenuBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package_References."=";

   type BaseMenuBehavior is new Java_Object with null record;
   instance : BaseMenuBehavior_Access;

   procedure Initialize (This : in out BaseMenuBehavior'Class);
   function Create return BaseMenuBehavior_Access;
   function getInstance return BaseMenuBehavior_Access;
   procedure onDisplayChangeEvent (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class);
   procedure initSpecialPaint (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure initMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure updateMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure popupMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure closeMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);

end org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;


