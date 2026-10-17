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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package; use org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package; use org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package; use org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.animation.vector.VectorCenterGenerator_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package GraphicItemInterface_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
   package LinesGraphicItem_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;
   package Points_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.Points_Package;
   package BasicGraphicsPipeline_Package renames Standard.org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type VectorCenterGenerator is tagged;
   type VectorCenterGenerator_Access is access all VectorCenterGenerator'Class;
   type VectorCenterGenerator_Access_Array is array (Natural range <>) of VectorCenterGenerator_Access;
   type VectorCenterGenerator_Access_Array_Access is access all VectorCenterGenerator_Access_Array;

   type VectorCenterGenerator is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      minX : Integer;
      minY : Integer;
      maxX : Integer;
      maxY : Integer;
      dx : Integer;
      dy : Integer;
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out VectorCenterGenerator'Class);
   function Create return VectorCenterGenerator_Access;
   procedure calculate (This : in out VectorCenterGenerator; hashMap_Param : access HashMap'Class);
   procedure transform (This : in out VectorCenterGenerator; hashMap_Param : access HashMap'Class);
   procedure getInstance (This : in out VectorCenterGenerator; pointVector_Param : access BasicArrayList'Class);
   function translate (list_Param : access BasicArrayList'Class; x : Integer; y : Integer) return BasicArrayList_Access;
   procedure translate (list_Param : access BasicArrayList'Class; x : Integer; y : Integer);
   function getWidth (This : in out VectorCenterGenerator) return Integer;
   procedure setWidth (This : in out VectorCenterGenerator; width : Integer);
   function getHeight (This : in out VectorCenterGenerator) return Integer;
   procedure setHeight (This : in out VectorCenterGenerator; height : Integer);

end org.allbinary.animation.vector.VectorCenterGenerator_Package;


