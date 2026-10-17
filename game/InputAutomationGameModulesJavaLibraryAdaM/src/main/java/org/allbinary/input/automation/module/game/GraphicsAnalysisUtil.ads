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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.graphics.color.ColorCacheFactory_Package; use org.allbinary.graphics.color.ColorCacheFactory_Package;
with org.allbinary.graphics.color.ColorCacheable_Package; use org.allbinary.graphics.color.ColorCacheable_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.input.automation.module.game.Color_Package; use org.allbinary.input.automation.module.game.Color_Package;

package org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package is

   package ColorCacheFactory_Package renames Standard.org.allbinary.graphics.color.ColorCacheFactory_Package;
   package ColorCacheable_Package renames Standard.org.allbinary.graphics.color.ColorCacheable_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;

   type GraphicsAnalysisUtil is tagged;
   type GraphicsAnalysisUtil_Access is access all GraphicsAnalysisUtil'Class;
   type GraphicsAnalysisUtil_Access_Array is array (Natural range <>) of GraphicsAnalysisUtil_Access;
   type GraphicsAnalysisUtil_Access_Array_Access is access all GraphicsAnalysisUtil_Access_Array;

   type GraphicsAnalysisUtil is new Java_Object with null record;
   MAX : Integer;

   procedure Initialize (This : in out GraphicsAnalysisUtil'Class);
   function Create return GraphicsAnalysisUtil_Access;
   function getNominator (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; min_x : Integer; max_x : Integer; y : Integer) return Long_Float;
   procedure getNominator (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; min_x : Integer; max_x : Integer; y : Integer);

end org.allbinary.input.automation.module.game.GraphicsAnalysisUtil_Package;


