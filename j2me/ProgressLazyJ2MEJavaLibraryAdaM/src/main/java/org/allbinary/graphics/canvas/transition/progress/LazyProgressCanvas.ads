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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;

   type LazyProgressCanvas is tagged;
   type LazyProgressCanvas_Access is access all LazyProgressCanvas'Class;
   type LazyProgressCanvas_Access_Array is array (Natural range <>) of LazyProgressCanvas_Access;
   type LazyProgressCanvas_Access_Array_Access is access all LazyProgressCanvas_Access_Array;

   type LazyProgressCanvas is new ProgressCanvas with null record;

   procedure Initialize (This : in out LazyProgressCanvas'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return LazyProgressCanvas_Access;
   procedure start (This : in out LazyProgressCanvas);
   procedure end_Id (This : in out LazyProgressCanvas);
   procedure inGame (This : in out LazyProgressCanvas);
   procedure endFromInitialLazyLoadingComplete (This : in out LazyProgressCanvas);
   procedure endIfPaintedSinceStart (This : in out LazyProgressCanvas);

end org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package;


