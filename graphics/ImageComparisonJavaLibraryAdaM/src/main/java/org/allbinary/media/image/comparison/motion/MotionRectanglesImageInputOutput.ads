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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.automation.ImageOutputData_Package; use org.allbinary.input.automation.ImageOutputData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.number.LongUtil_Package; use org.allbinary.logic.java.number.LongUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.logic.util.cache.PoolInterface_Package; use org.allbinary.logic.util.cache.PoolInterface_Package;
with org.allbinary.logic.visual.media.MediaDataFactory_Package; use org.allbinary.logic.visual.media.MediaDataFactory_Package;
with org.allbinary.media.image.ImagePersistanceUtil_Package; use org.allbinary.media.image.ImagePersistanceUtil_Package;
with org.allbinary.media.image.cache.BufferedImageCacheable_Package; use org.allbinary.media.image.cache.BufferedImageCacheable_Package;
with org.allbinary.media.image.cache.BufferedImageInfo_Package; use org.allbinary.media.image.cache.BufferedImageInfo_Package;
with org.allbinary.media.image.cache.BufferedImageInfoFactory_Package; use org.allbinary.media.image.cache.BufferedImageInfoFactory_Package;
with org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package; use org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.io.ImageIOInterface_Package; use org.allbinary.media.image.io.ImageIOInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.image.comparison.motion.AllMotionRectanglesResultsCacheSingleton_Package; use org.allbinary.media.image.comparison.motion.AllMotionRectanglesResultsCacheSingleton_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package; use org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package;
with org.allbinary.media.image.comparison.motion.ConstrainedMotionRectanglesResultsCacheSingleton_Package; use org.allbinary.media.image.comparison.motion.ConstrainedMotionRectanglesResultsCacheSingleton_Package;
with org.allbinary.media.image.comparison.motion.Graphics_Package; use org.allbinary.media.image.comparison.motion.Graphics_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangle_Package; use org.allbinary.media.image.comparison.motion.MotionRectangle_Package;
with org.allbinary.media.image.comparison.motion.Rectangle_Package; use org.allbinary.media.image.comparison.motion.Rectangle_Package;
with org.allbinary.media.image.comparison.motion.Color_Package; use org.allbinary.media.image.comparison.motion.Color_Package;

package org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ImageOutputData_Package renames Standard.org.allbinary.input.automation.ImageOutputData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LongUtil_Package renames Standard.org.allbinary.logic.java.number.LongUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
   package PoolInterface_Package renames Standard.org.allbinary.logic.util.cache.PoolInterface_Package;
   package MediaDataFactory_Package renames Standard.org.allbinary.logic.visual.media.MediaDataFactory_Package;
   package ImagePersistanceUtil_Package renames Standard.org.allbinary.media.image.ImagePersistanceUtil_Package;
   package BufferedImageCacheable_Package renames Standard.org.allbinary.media.image.cache.BufferedImageCacheable_Package;
   package BufferedImageInfo_Package renames Standard.org.allbinary.media.image.cache.BufferedImageInfo_Package;
   package BufferedImageInfoFactory_Package renames Standard.org.allbinary.media.image.cache.BufferedImageInfoFactory_Package;
   package BufferedImagePoolSingleton_Package renames Standard.org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package;
   package ImageComparisonResult_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResult_Package;
   package ImageIOInterface_Package renames Standard.org.allbinary.media.image.io.ImageIOInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type MotionRectanglesImageInputOutput is tagged;
   type MotionRectanglesImageInputOutput_Access is access all MotionRectanglesImageInputOutput'Class;
   type MotionRectanglesImageInputOutput_Access_Array is array (Natural range <>) of MotionRectanglesImageInputOutput_Access;
   type MotionRectanglesImageInputOutput_Access_Array_Access is access all MotionRectanglesImageInputOutput_Access_Array;

   type MotionRectanglesImageInputOutput is new ImageIOInterface with record
      logUtil : LogUtil_Access;
      NUMBER_OF_IMAGES : Integer;
   end record;

   procedure Initialize (This : in out MotionRectanglesImageInputOutput'Class);
   function Create return MotionRectanglesImageInputOutput_Access;
   procedure save (This : in out MotionRectanglesImageInputOutput; frame : Long_Long_Integer);
   procedure save (This : in out MotionRectanglesImageInputOutput; motionRectangles_Param : access MotionRectangles'Class; frame : Long_Long_Integer);

end org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package;


