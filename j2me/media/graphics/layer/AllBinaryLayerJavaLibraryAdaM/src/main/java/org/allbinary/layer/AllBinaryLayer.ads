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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package; use org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package; use org.allbinary.layer.LayerInterface_Package;

package org.allbinary.layer.AllBinaryLayer_Package is

   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package OpenGLFeatureUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package ViewPositionEvent_Package renames Standard.org.allbinary.view.event.ViewPositionEvent_Package;

   type AllBinaryLayer is tagged;
   type AllBinaryLayer_Access is access all AllBinaryLayer'Class;
   type AllBinaryLayer_Access_Array is array (Natural range <>) of AllBinaryLayer_Access;
   type AllBinaryLayer_Access_Array_Access is access all AllBinaryLayer_Access_Array;

   type AllBinaryLayer is new Layer and LayerInterface with record
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


