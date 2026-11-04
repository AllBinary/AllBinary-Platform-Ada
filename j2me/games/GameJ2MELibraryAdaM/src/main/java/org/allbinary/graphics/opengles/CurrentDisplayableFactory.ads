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

limited with org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package;
package org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References is
   type CurrentDisplayableFactory_Access is access all org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package.CurrentDisplayableFactory'Class;
   type CurrentDisplayableFactory_Access_Array is array (Natural range <>) of CurrentDisplayableFactory_Access;
   type CurrentDisplayableFactory_Access_Array_Access is access all CurrentDisplayableFactory_Access_Array;
   type CurrentDisplayableFactory_Access_Array_Access_Array is array (Natural range <>) of CurrentDisplayableFactory_Access_Array_Access;
   type CurrentDisplayableFactory_Access_Array_Access_Array_Access is access all CurrentDisplayableFactory_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References;

with org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
limited with org.allbinary.game.displayable.canvas.GameRunnable_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package_References;
limited with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package_References;
limited with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package is

   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package GameRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.GameRunnable_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   use type Displayable_Access;
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   use type Displayable_Access_Array;
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   use type Displayable_Access_Array_Access;
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   use type Displayable_Access_Array_Access_Array;
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   use type Displayable_Access_Array_Access_Array_Access;
   subtype GameRunnable_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access;
   use type GameRunnable_Access;
   subtype GameRunnable_Access_Array is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array;
   use type GameRunnable_Access_Array;
   subtype GameRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access;
   use type GameRunnable_Access_Array_Access;
   subtype GameRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access_Array;
   use type GameRunnable_Access_Array_Access_Array;
   subtype GameRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access_Array_Access;
   use type GameRunnable_Access_Array_Access_Array_Access;
   subtype CanvasStrings_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access;
   use type CanvasStrings_Access;
   subtype CanvasStrings_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array;
   use type CanvasStrings_Access_Array;
   subtype CanvasStrings_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access;
   use type CanvasStrings_Access_Array_Access;
   subtype CanvasStrings_Access_Array_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array;
   use type CanvasStrings_Access_Array_Access_Array;
   subtype CanvasStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array_Access;
   use type CanvasStrings_Access_Array_Access_Array_Access;
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   use type MyCanvas_Access;
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   use type MyCanvas_Access_Array;
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   use type MyCanvas_Access_Array_Access;
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   use type MyCanvas_Access_Array_Access_Array;
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   use type MyCanvas_Access_Array_Access_Array_Access;
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype CurrentDisplayableFactory_Access is org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References.CurrentDisplayableFactory_Access;
   function "=" (Left, Right : CurrentDisplayableFactory_Access) return Boolean renames org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References."=";
   subtype CurrentDisplayableFactory_Access_Array is org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References.CurrentDisplayableFactory_Access_Array;
   function "=" (Left, Right : CurrentDisplayableFactory_Access_Array) return Boolean renames org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References."=";
   subtype CurrentDisplayableFactory_Access_Array_Access is org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References.CurrentDisplayableFactory_Access_Array_Access;
   function "=" (Left, Right : CurrentDisplayableFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References."=";
   subtype CurrentDisplayableFactory_Access_Array_Access_Array is org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References.CurrentDisplayableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CurrentDisplayableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References."=";
   subtype CurrentDisplayableFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References.CurrentDisplayableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CurrentDisplayableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package_References."=";

   type CurrentDisplayableFactory is new Java_Object with record
      commonStrings : CommonStrings_Access;
      canvasStrings : CanvasStrings_Access;
      stringUtil : StringUtil_Access;
      SET_DISPLAYABLE : Unbounded_String;
      SET_RUNNABLE : Unbounded_String;
      CLEAR_RUNNABLE : Unbounded_String;
      SET_USED_RUNNABLE : Unbounded_String;
      RUNNABLE : Unbounded_String;
      RUNNABLE_WAS_ALREADY_IN_USE : Unbounded_String;
      DEFAULT_CHILD_NAME_LIST : BasicArrayList_Access;
      displayable : Displayable_Access;
      openGlReadydisplayable : Displayable_Access;
      runnable_Case : GameRunnable_Access;
      usedRunnable : GameRunnable_Access;
   end record;
   instance : CurrentDisplayableFactory_Access;

   procedure Initialize (This : in out CurrentDisplayableFactory'Class);
   function Create return CurrentDisplayableFactory_Access;
   function getInstance return CurrentDisplayableFactory_Access;
   procedure setMyCanvas (This : in out CurrentDisplayableFactory; displayable_Param : access MyCanvas_Package.MyCanvas'Class);
   procedure setDisplayable (This : in out CurrentDisplayableFactory; displayable_Param : access Displayable_Package.Displayable'Class);
   procedure setOpenGlReadydisplayable (This : in out CurrentDisplayableFactory; openGlReadydisplayable_Param : access Displayable_Package.Displayable'Class);
   function getOpenGlReadydisplayable (This : in out CurrentDisplayableFactory) return Displayable_Access;
   procedure setRunnable (This : in out CurrentDisplayableFactory; runnable_Param : access GameRunnable_Package.GameRunnable'Class);
   procedure clearRunnable (This : in out CurrentDisplayableFactory);
   procedure update (This : in out CurrentDisplayableFactory);
   function getDisplayable (This : in out CurrentDisplayableFactory) return Displayable_Access;
   function getUsedRunnable (This : in out CurrentDisplayableFactory) return GameRunnable_Access;
   procedure setUsedRunnable (This : in out CurrentDisplayableFactory; usedRunnable_Param : access GameRunnable_Package.GameRunnable'Class);

end org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package;


