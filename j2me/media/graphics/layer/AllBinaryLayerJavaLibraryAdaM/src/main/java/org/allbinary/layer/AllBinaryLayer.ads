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
limited with org.allbinary.layer.AllBinaryLayer_Package;
package org.allbinary.layer.AllBinaryLayer_Package_References is
   type AllBinaryLayer_Access is access all org.allbinary.layer.AllBinaryLayer_Package.AllBinaryLayer'Class;
   type AllBinaryLayer_Access_Array is array (Natural range <>) of AllBinaryLayer_Access;
   type AllBinaryLayer_Access_Array_Access is access all AllBinaryLayer_Access_Array;
   type AllBinaryLayer_Access_Array_Access_Array is array (Natural range <>) of AllBinaryLayer_Access_Array_Access;
   type AllBinaryLayer_Access_Array_Access_Array_Access is access all AllBinaryLayer_Access_Array_Access_Array;
   type AllBinaryLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryLayer_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryLayer_Access_Array_Object'Class then AllBinaryLayer_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryLayer_Access_Array_Access_Array_Object'Class then AllBinaryLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.AllBinaryLayer_Package_References;

with org.allbinary.layer.AllBinaryLayer_Package_References;
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
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
limited with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.view.event.ViewPositionEvent_Package_References;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package; use org.allbinary.layer.LayerInterface_Package;

package org.allbinary.layer.AllBinaryLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package ViewPositionEvent_Package renames Standard.org.allbinary.view.event.ViewPositionEvent_Package;
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
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   use type ViewPositionBase_Access;
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   use type ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   use type ViewPositionBase_Access_Array_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access_Array_Access;
   subtype ViewPositionEvent_Access is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access;
   use type ViewPositionEvent_Access;
   subtype ViewPositionEvent_Access_Array is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array;
   use type ViewPositionEvent_Access_Array;
   subtype ViewPositionEvent_Access_Array_Access is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array_Access;
   use type ViewPositionEvent_Access_Array_Access;
   subtype ViewPositionEvent_Access_Array_Access_Array is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array_Access_Array;
   use type ViewPositionEvent_Access_Array_Access_Array;
   subtype ViewPositionEvent_Access_Array_Access_Array_Access is org.allbinary.view.event.ViewPositionEvent_Package_References.ViewPositionEvent_Access_Array_Access_Array_Access;
   use type ViewPositionEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   function Java_Box (Value : AllBinaryLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.AllBinaryLayer_Package_References.Java_Box;
   function Java_Unbox_AllBinaryLayer_Access_Array (Value : access Java_Object'Class) return AllBinaryLayer_Access_Array_Access renames org.allbinary.layer.AllBinaryLayer_Package_References.Java_Unbox_AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   function Java_Box (Value : AllBinaryLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.AllBinaryLayer_Package_References.Java_Box;
   function Java_Unbox_AllBinaryLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryLayer_Access_Array_Access_Array_Access renames org.allbinary.layer.AllBinaryLayer_Package_References.Java_Unbox_AllBinaryLayer_Access_Array_Access_Array;

   type AllBinaryLayer is new Layer_Package.Layer and LayerInterface with record
      viewPositionEvent : ViewPositionEvent_Access;
      halfWidth : Integer;
      halfHeight : Integer;
      name : Unbounded_String;
      viewPosition : ViewPositionBase_Access;
   end record;
   NULL_ALLBINARY_LAYER : AllBinaryLayer_Access;
   TYPE_Id : Unbounded_String;

   procedure Initialize (This : in out AllBinaryLayer'Class; name : Unbounded_String; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (name : Unbounded_String; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return AllBinaryLayer_Access;
   procedure setPosition (This : in out AllBinaryLayer; x : Integer; y : Integer; z : Integer);
   procedure moveDXYZ (This : in out AllBinaryLayer; dx : Integer; dy : Integer; dz : Integer);
   function getXP (This : in out AllBinaryLayer) return Integer;
   function getYP (This : in out AllBinaryLayer) return Integer;
   function getZP (This : in out AllBinaryLayer) return Integer;
   function getWidth (This : in out AllBinaryLayer) return Integer;
   function getHeight (This : in out AllBinaryLayer) return Integer;
   procedure setVisible (This : in out AllBinaryLayer; visible : Boolean);
   function isVisible (This : in out AllBinaryLayer) return Boolean;
   procedure paint (This : in out AllBinaryLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure onChangeEvent (This : in out AllBinaryLayer; layerManagerEvent_Param : access ViewPositionEvent_Package.ViewPositionEvent'Class);
   procedure paintThreed (This : in out AllBinaryLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   function getX2 (This : in out AllBinaryLayer) return Integer;
   function getY2 (This : in out AllBinaryLayer) return Integer;
   function getZ2 (This : in out AllBinaryLayer) return Integer;
   function getName (This : in out AllBinaryLayer) return Unbounded_String;
   procedure setHalfWidth (This : in out AllBinaryLayer; halfWidth : Integer);
   function getHalfWidth (This : in out AllBinaryLayer) return Integer;
   procedure setHalfHeight (This : in out AllBinaryLayer; halfHeight : Integer);
   function getHalfHeight (This : in out AllBinaryLayer) return Integer;
   function getHalfDepth (This : in out AllBinaryLayer) return Integer;
   function getViewPosition (This : in out AllBinaryLayer) return ViewPositionBase_Access;
   procedure setViewPosition (This : in out AllBinaryLayer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function getGroupInterface (This : in out AllBinaryLayer) return Group_Access_Array_Access;
   function implmentsTickableInterface (This : in out AllBinaryLayer) return Boolean;
   function implmentsGameInputInterface (This : in out AllBinaryLayer) return Boolean;
   function implmentsArtificialIntelligenceCompositeInterface (This : in out AllBinaryLayer) return Boolean;
   function implmentsCollidableInterface (This : in out AllBinaryLayer) return Boolean;
   function implementsThreedInterface (This : in out AllBinaryLayer) return Boolean;
   function getType (This : in out AllBinaryLayer) return Integer;
   function getMultiPlayerType (This : in out AllBinaryLayer) return Integer;
   procedure toStringAppend (This : in out AllBinaryLayer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);
   function toString (This : in out AllBinaryLayer) return Unbounded_String;

end org.allbinary.layer.AllBinaryLayer_Package;


