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

limited with org.allbinary.game.input.TestingInputSingleton_Package;
package org.allbinary.game.input.TestingInputSingleton_Package_References is
   type TestingInputSingleton_Access is access all org.allbinary.game.input.TestingInputSingleton_Package.TestingInputSingleton'Class;
   type TestingInputSingleton_Access_Array is array (Natural range <>) of TestingInputSingleton_Access;
   type TestingInputSingleton_Access_Array_Access is access all TestingInputSingleton_Access_Array;
   type TestingInputSingleton_Access_Array_Access_Array is array (Natural range <>) of TestingInputSingleton_Access_Array_Access;
   type TestingInputSingleton_Access_Array_Access_Array_Access is access all TestingInputSingleton_Access_Array_Access_Array;
end org.allbinary.game.input.TestingInputSingleton_Package_References;

with org.allbinary.game.input.TestingInputSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
limited with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.input.GameInputInterface_Package; use org.allbinary.game.input.GameInputInterface_Package;
limited with org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package_References;
limited with org.allbinary.game.input.TestInputInterface_Package;
with org.allbinary.game.input.TestInputInterface_Package_References;

package org.allbinary.game.input.TestingInputSingleton_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype PaintableInterface_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access;
   use type PaintableInterface_Access;
   subtype PaintableInterface_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array;
   use type PaintableInterface_Access_Array;
   subtype PaintableInterface_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access;
   use type PaintableInterface_Access_Array_Access;
   subtype PaintableInterface_Access_Array_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array;
   use type PaintableInterface_Access_Array_Access_Array;
   subtype PaintableInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array_Access;
   use type PaintableInterface_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
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
   subtype GameInputProcessor_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access;
   use type GameInputProcessor_Access;
   subtype GameInputProcessor_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array;
   use type GameInputProcessor_Access_Array;
   subtype GameInputProcessor_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access;
   use type GameInputProcessor_Access_Array_Access;
   subtype GameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array;
   use type GameInputProcessor_Access_Array_Access_Array;
   subtype GameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array_Access;
   use type GameInputProcessor_Access_Array_Access_Array_Access;
   subtype TestInputInterface_Access is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access;
   use type TestInputInterface_Access;
   subtype TestInputInterface_Access_Array is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array;
   use type TestInputInterface_Access_Array;
   subtype TestInputInterface_Access_Array_Access is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array_Access;
   use type TestInputInterface_Access_Array_Access;
   subtype TestInputInterface_Access_Array_Access_Array is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array_Access_Array;
   use type TestInputInterface_Access_Array_Access_Array;
   subtype TestInputInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array_Access_Array_Access;
   use type TestInputInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TestingInputSingleton_Access is org.allbinary.game.input.TestingInputSingleton_Package_References.TestingInputSingleton_Access;
   function "=" (Left, Right : TestingInputSingleton_Access) return Boolean renames org.allbinary.game.input.TestingInputSingleton_Package_References."=";
   subtype TestingInputSingleton_Access_Array is org.allbinary.game.input.TestingInputSingleton_Package_References.TestingInputSingleton_Access_Array;
   function "=" (Left, Right : TestingInputSingleton_Access_Array) return Boolean renames org.allbinary.game.input.TestingInputSingleton_Package_References."=";
   subtype TestingInputSingleton_Access_Array_Access is org.allbinary.game.input.TestingInputSingleton_Package_References.TestingInputSingleton_Access_Array_Access;
   function "=" (Left, Right : TestingInputSingleton_Access_Array_Access) return Boolean renames org.allbinary.game.input.TestingInputSingleton_Package_References."=";
   subtype TestingInputSingleton_Access_Array_Access_Array is org.allbinary.game.input.TestingInputSingleton_Package_References.TestingInputSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : TestingInputSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.TestingInputSingleton_Package_References."=";
   subtype TestingInputSingleton_Access_Array_Access_Array_Access is org.allbinary.game.input.TestingInputSingleton_Package_References.TestingInputSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestingInputSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.TestingInputSingleton_Package_References."=";

   type TestingInputSingleton is new AllBinaryGameLayer and GameInputInterface with record
      inputProcessorArray : GameInputProcessor_Access_Array_Access;
      TestingInputSingleton_Field_paintable : PaintableInterface_Access;
   end record;
   instance : TestingInputSingleton_Access;

   procedure Initialize (This : in out TestingInputSingleton'Class);
   function Create return TestingInputSingleton_Access;
   function getInstance return TestingInputSingleton_Access;
   procedure initInputProcessors (This : in out TestingInputSingleton);
   procedure initInputProcessorsForTestInput (This : in out TestingInputSingleton; aTestInputInterface_Param : access TestInputInterface_Package.TestInputInterface'Class);
   procedure processInputList (This : in out TestingInputSingleton; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure processInput (This : in out TestingInputSingleton; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure paint (This : in out TestingInputSingleton; graphics_Param : access Graphics_Package.Graphics'Class);
   function implmentsGameInputInterface (This : in out TestingInputSingleton) return Boolean;

end org.allbinary.game.input.TestingInputSingleton_Package;


