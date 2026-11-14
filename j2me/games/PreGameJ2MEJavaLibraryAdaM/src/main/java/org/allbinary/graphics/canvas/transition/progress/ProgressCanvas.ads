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

with AllBinary_Java;
limited with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
package org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References is
   type ProgressCanvas_Access is access all org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package.ProgressCanvas'Class;
   type ProgressCanvas_Access_Array is array (Natural range <>) of ProgressCanvas_Access;
   type ProgressCanvas_Access_Array_Access is access all ProgressCanvas_Access_Array;
   type ProgressCanvas_Access_Array_Access_Array is array (Natural range <>) of ProgressCanvas_Access_Array_Access;
   type ProgressCanvas_Access_Array_Access_Array_Access is access all ProgressCanvas_Access_Array_Access_Array;
   type ProgressCanvas_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProgressCanvas_Access_Array_Access;
   end record;
   function Java_Box (Value : ProgressCanvas_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProgressCanvas_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProgressCanvas_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProgressCanvas_Access_Array_Access is (if Value /= null and then Value.all in ProgressCanvas_Access_Array_Object'Class then ProgressCanvas_Access_Array_Object'Class (Value.all).Value else null);
   type ProgressCanvas_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProgressCanvas_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProgressCanvas_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProgressCanvas_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProgressCanvas_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProgressCanvas_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProgressCanvas_Access_Array_Access_Array_Object'Class then ProgressCanvas_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References;

with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
limited with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References;
limited with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
limited with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package_References;
limited with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References;

package org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package ABCustomGaugeItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package AllBinaryMidlet_Package renames Standard.org.allbinary.midlet.AllBinaryMidlet_Package;
   package Reference_Types is
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
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
   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   use type Processor_Access;
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   use type Processor_Access_Array;
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   use type Processor_Access_Array_Access;
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   use type Processor_Access_Array_Access_Array;
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   use type Processor_Access_Array_Access_Array_Access;
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
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
   subtype ABCustomGaugeItem_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access;
   use type ABCustomGaugeItem_Access;
   subtype ABCustomGaugeItem_Access_Array is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array;
   use type ABCustomGaugeItem_Access_Array;
   subtype ABCustomGaugeItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access;
   use type ABCustomGaugeItem_Access_Array_Access;
   subtype ABCustomGaugeItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access_Array;
   use type ABCustomGaugeItem_Access_Array_Access_Array;
   subtype ABCustomGaugeItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access_Array_Access;
   use type ABCustomGaugeItem_Access_Array_Access_Array_Access;
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
   subtype AllBinaryMidlet_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access;
   use type AllBinaryMidlet_Access;
   subtype AllBinaryMidlet_Access_Array is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array;
   use type AllBinaryMidlet_Access_Array;
   subtype AllBinaryMidlet_Access_Array_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access;
   use type AllBinaryMidlet_Access_Array_Access;
   subtype AllBinaryMidlet_Access_Array_Access_Array is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access_Array;
   use type AllBinaryMidlet_Access_Array_Access_Array;
   subtype AllBinaryMidlet_Access_Array_Access_Array_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access_Array_Access;
   use type AllBinaryMidlet_Access_Array_Access_Array_Access;
   subtype ProgressEndListener_Access is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access;
   use type ProgressEndListener_Access;
   subtype ProgressEndListener_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array;
   use type ProgressEndListener_Access_Array;
   subtype ProgressEndListener_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array_Access;
   use type ProgressEndListener_Access_Array_Access;
   subtype ProgressEndListener_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array_Access_Array;
   use type ProgressEndListener_Access_Array_Access_Array;
   subtype ProgressEndListener_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array_Access_Array_Access;
   use type ProgressEndListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ProgressCanvas_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access;
   function "=" (Left, Right : ProgressCanvas_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array;
   function "=" (Left, Right : ProgressCanvas_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access;
   function "=" (Left, Right : ProgressCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   function Java_Box (Value : ProgressCanvas_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.Java_Box;
   function Java_Unbox_ProgressCanvas_Access_Array (Value : access Java_Object'Class) return ProgressCanvas_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.Java_Unbox_ProgressCanvas_Access_Array;
   subtype ProgressCanvas_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   function Java_Box (Value : ProgressCanvas_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.Java_Box;
   function Java_Unbox_ProgressCanvas_Access_Array_Access_Array (Value : access Java_Object'Class) return ProgressCanvas_Access_Array_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.Java_Unbox_ProgressCanvas_Access_Array_Access_Array;

   type ProgressCanvas is new RunnableCanvas and PaintableInterface and UpdateMyFontInterface with record
      hasPainted : Boolean;
      backgroundBasicColor : BasicColor_Access;
      GAUGE_PAINTABLE : Paintable_Access;
      maxValue : Float;
      gauge : ABCustomGaugeItem_Access;
      TEXT : Unbounded_String;
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      allbinaryMidlet : AllBinaryMidlet_Access;
      value : Float;
      text_Case : Unbounded_String;
      background : Boolean;
      paintable : PaintableInterface_Access;
      inProgress : Boolean;
      IN_GAME_PROCESSOR : Processor_Access;
      inGameProcessor : Processor_Access;
      progressEndListener : ProgressEndListener_Access;
      backgroundLabel : Unbounded_String;
      START_BACKGROUND : Unbounded_String;
      ADD_PORTION : Unbounded_String;
      ADD_EARLY_PORTION : Unbounded_String;
   end record;

   procedure Initialize (This : in out ProgressCanvas'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ProgressCanvas_Access;
   procedure updateMeasurement (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure init (This : in out ProgressCanvas; gameMidlet_Param : access AllBinaryMidlet_Package.AllBinaryMidlet'Class);
   procedure update (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure initCommands (This : in out ProgressCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   function getMaxValue (This : in out ProgressCanvas) return Float;
   procedure start (This : in out ProgressCanvas);
   procedure startBackground (This : in out ProgressCanvas; background : Boolean);
   procedure endActual (This : in out ProgressCanvas);
   procedure inGame (This : in out ProgressCanvas);
   procedure end_Id (This : in out ProgressCanvas);
   procedure endFromInitialLazyLoadingComplete (This : in out ProgressCanvas);
   function isInGame (This : in out ProgressCanvas) return Boolean;
   procedure endIfPaintedSinceStart (This : in out ProgressCanvas);
   procedure addEarlyPortion (This : in out ProgressCanvas; value : Integer; text : Unbounded_String; index : Integer);
   procedure addPortion (This : in out ProgressCanvas; value : Integer; text : Unbounded_String; index : Integer);
   procedure addNormalPortion (This : in out ProgressCanvas; value : Integer; text : Unbounded_String);
   procedure setValue (This : in out ProgressCanvas; value : Integer);
   procedure paint (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint2 (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   function getValue (This : in out ProgressCanvas) return Float;
   procedure setText (This : in out ProgressCanvas; text : Unbounded_String);
   function getText (This : in out ProgressCanvas) return Unbounded_String;
   procedure setBackground (This : in out ProgressCanvas; background : Boolean);
   function isBackground (This : in out ProgressCanvas) return Boolean;

end org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;


