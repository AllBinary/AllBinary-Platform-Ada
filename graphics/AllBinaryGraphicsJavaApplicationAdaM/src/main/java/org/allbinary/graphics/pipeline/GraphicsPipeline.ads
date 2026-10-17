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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package; use org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;

package org.allbinary.graphics.pipeline.GraphicsPipeline_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type GraphicsPipeline is tagged;
   type GraphicsPipeline_Access is access all GraphicsPipeline'Class;
   type GraphicsPipeline_Access_Array is array (Natural range <>) of GraphicsPipeline_Access;
   type GraphicsPipeline_Access_Array_Access is access all GraphicsPipeline_Access_Array;

   type GraphicsPipeline is new BasicGraphicsPipeline with null record;

   procedure Initialize (This : in out GraphicsPipeline'Class; points_Param : access BasicArrayList'Class);
   function Create (points_Param : access BasicArrayList'Class) return GraphicsPipeline_Access;
   procedure rotateTheta (This : in out GraphicsPipeline; aTheta : Long_Float);

end org.allbinary.graphics.pipeline.GraphicsPipeline_Package;


