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
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package; use org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.canvas.ABToGBUtil_Package; use org.allbinary.game.canvas.ABToGBUtil_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.gd.resource.GDLazyResources_Package; use org.allbinary.game.gd.resource.GDLazyResources_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.ConcurrentImageLoadingProcessor_Package; use org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.ImageCache_Package is

   package J2MEUtil_Package renames org.allbinary.J2MEUtil_Package;
   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package LazyImageRotationAnimation_Package renames org.allbinary.animation.image.LazyImageRotationAnimation_Package;
   package GameGlobalsFactory_Package renames org.allbinary.canvas.GameGlobalsFactory_Package;
   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package ResourceUtil_Package renames org.allbinary.data.resource.ResourceUtil_Package;
   package ABToGBUtil_Package renames org.allbinary.game.canvas.ABToGBUtil_Package;
   package AllBinaryGameCanvas_Package renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package GDLazyResources_Package renames org.allbinary.game.gd.resource.GDLazyResources_Package;
   package GDResources_Package renames org.allbinary.game.gd.resource.GDResources_Package;
   package ProgressCanvas_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package Memory_Package renames org.allbinary.system.Memory_Package;
   package BaseImageLoadingProcessor_Package renames org.allbinary.thread.BaseImageLoadingProcessor_Package;
   package ConcurrentImageLoadingProcessor_Package renames org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
   package SynchObject_Package renames org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package ABSystemWrapper_Package renames org.allbinary.logic.ABSystemWrapper_Package;

   type ImageCache is tagged;
   type ImageCache_Access is access all ImageCache'Class;
   type ImageCache_Access_Array is array (Natural range <>) of ImageCache_Access;
   type ImageCache_Access_Array_Access is access all ImageCache_Access_Array;

   type ImageCache is new ImageCacheBase with record
      tsUtil : TsUtil_Access;
      concurrentImageLoadingProcessor : BaseImageLoadingProcessor_Access;
      commonStrings : CommonStrings_Access;
      commonSeps : CommonSeps_Access;
      resourceUtil : ResourceUtil_Access;
      gameGlobalsFactory : GameGlobalsFactory_Access;
      gdResources : GDResources_Access;
      loadNowList : BasicArrayList_Access;
      loadSoonList : BasicArrayList_Access;
      loadList : BasicArrayList_Access;
      loadAfterList : BasicArrayList_Access;
      lock : SynchObject_Access;
      firstTime : Boolean;
      totalLoaded : Integer;
      progressEnded : Boolean;
      hasAnyLazyAnimationFactories : Boolean;
      processor : Processor_Access;
      endProcessor : Processor_Access;
      LOAD_IMAGE_FOR_ANIMATION : Unbounded_String;
   end record;
   NULL_IMAGE_CACHE : ImageCache_Access;

   procedure Initialize (This : in out ImageCache'Class);
   function Create return ImageCache_Access;
   procedure firstProcess (This : in out ImageCache);
   procedure addListener (This : in out ImageCache; renderer : Java_Object_Access);
   procedure waitForLoadNow (This : in out ImageCache);
   procedure loadImageForAnimation (This : in out ImageCache);
   procedure loadImages (This : in out ImageCache);
   procedure loadImageForAnimations (This : in out ImageCache);
   procedure loadRemainingAnimations (This : in out ImageCache);
   function loadImageForLazyAnimation (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access) return Boolean;
   procedure loadImageForLazyAnimation (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access);
   procedure loadNextImage (This : in out ImageCache);
   function loadImage (This : in out ImageCache; image : Image_Access) return Boolean;
   procedure loadImage (This : in out ImageCache; image : Image_Access);
   procedure init (This : in out ImageCache; image : Image_Access; image2 : Image_Access);
   function creatImage (This : in out ImageCache; key : Unbounded_String) return Image_Access;
   procedure creatImage (This : in out ImageCache; key : Unbounded_String);
   function get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer);
   function getWithKey (This : in out ImageCache; key : Java_Object_Access) return Image_Access;
   procedure getWithKey (This : in out ImageCache; key : Java_Object_Access);
   function getIndex (This : in out ImageCache; key : Java_Object_Access) return Integer;
   procedure getIndex (This : in out ImageCache; key : Java_Object_Access);
   function createImageFromInputStream (This : in out ImageCache; key : Java_Object_Access; inputStream : InputStream_Access) return Image_Access;
   procedure createImageFromInputStream (This : in out ImageCache; key : Java_Object_Access; inputStream : InputStream_Access);
   function createImageLater (This : in out ImageCache; key : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure createImageLater (This : in out ImageCache; key : Unbounded_String; width : Integer; height : Integer);
   function getAssociated (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access) return BasicArrayList_Access;
   procedure getAssociated (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access);
   procedure add (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access);
   procedure insertFirst (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access);
   procedure progressEnded (This : in out ImageCache);
   procedure runTask (This : in out ImageCache);
   procedure initProgress (This : in out ImageCache);
   function isLazy (This : in out ImageCache) return Boolean;
   procedure isLazy (This : in out ImageCache);

end org.allbinary.image.ImageCache_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package; use org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.canvas.ABToGBUtil_Package; use org.allbinary.game.canvas.ABToGBUtil_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.gd.resource.GDLazyResources_Package; use org.allbinary.game.gd.resource.GDLazyResources_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.ConcurrentImageLoadingProcessor_Package; use org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.NotHTMLProcessor_Package is

   package J2MEUtil_Package renames org.allbinary.J2MEUtil_Package;
   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package LazyImageRotationAnimation_Package renames org.allbinary.animation.image.LazyImageRotationAnimation_Package;
   package GameGlobalsFactory_Package renames org.allbinary.canvas.GameGlobalsFactory_Package;
   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package ResourceUtil_Package renames org.allbinary.data.resource.ResourceUtil_Package;
   package ABToGBUtil_Package renames org.allbinary.game.canvas.ABToGBUtil_Package;
   package AllBinaryGameCanvas_Package renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package GDLazyResources_Package renames org.allbinary.game.gd.resource.GDLazyResources_Package;
   package GDResources_Package renames org.allbinary.game.gd.resource.GDResources_Package;
   package ProgressCanvas_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package Memory_Package renames org.allbinary.system.Memory_Package;
   package BaseImageLoadingProcessor_Package renames org.allbinary.thread.BaseImageLoadingProcessor_Package;
   package ConcurrentImageLoadingProcessor_Package renames org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
   package SynchObject_Package renames org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package ABSystemWrapper_Package renames org.allbinary.logic.ABSystemWrapper_Package;

   type NotHTMLProcessor is tagged;
   type NotHTMLProcessor_Access is access all NotHTMLProcessor'Class;
   type NotHTMLProcessor_Access_Array is array (Natural range <>) of NotHTMLProcessor_Access;
   type NotHTMLProcessor_Access_Array_Access is access all NotHTMLProcessor_Access_Array;

   type NotHTMLProcessor is new Processor with null record;

   procedure Initialize (This : in out NotHTMLProcessor'Class);
   function Create return NotHTMLProcessor_Access;
   procedure process (This : in out NotHTMLProcessor);

end org.allbinary.image.NotHTMLProcessor_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package; use org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.canvas.ABToGBUtil_Package; use org.allbinary.game.canvas.ABToGBUtil_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.gd.resource.GDLazyResources_Package; use org.allbinary.game.gd.resource.GDLazyResources_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.ConcurrentImageLoadingProcessor_Package; use org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.NotHTMLEndProcessor_Package is

   package J2MEUtil_Package renames org.allbinary.J2MEUtil_Package;
   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package LazyImageRotationAnimation_Package renames org.allbinary.animation.image.LazyImageRotationAnimation_Package;
   package GameGlobalsFactory_Package renames org.allbinary.canvas.GameGlobalsFactory_Package;
   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package ResourceUtil_Package renames org.allbinary.data.resource.ResourceUtil_Package;
   package ABToGBUtil_Package renames org.allbinary.game.canvas.ABToGBUtil_Package;
   package AllBinaryGameCanvas_Package renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package GDLazyResources_Package renames org.allbinary.game.gd.resource.GDLazyResources_Package;
   package GDResources_Package renames org.allbinary.game.gd.resource.GDResources_Package;
   package ProgressCanvas_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package Memory_Package renames org.allbinary.system.Memory_Package;
   package BaseImageLoadingProcessor_Package renames org.allbinary.thread.BaseImageLoadingProcessor_Package;
   package ConcurrentImageLoadingProcessor_Package renames org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
   package SynchObject_Package renames org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package ABSystemWrapper_Package renames org.allbinary.logic.ABSystemWrapper_Package;

   type NotHTMLEndProcessor is tagged;
   type NotHTMLEndProcessor_Access is access all NotHTMLEndProcessor'Class;
   type NotHTMLEndProcessor_Access_Array is array (Natural range <>) of NotHTMLEndProcessor_Access;
   type NotHTMLEndProcessor_Access_Array_Access is access all NotHTMLEndProcessor_Access_Array;

   type NotHTMLEndProcessor is new Processor with null record;

   procedure Initialize (This : in out NotHTMLEndProcessor'Class);
   function Create return NotHTMLEndProcessor_Access;
   procedure process (This : in out NotHTMLEndProcessor);

end org.allbinary.image.NotHTMLEndProcessor_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package; use org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.canvas.ABToGBUtil_Package; use org.allbinary.game.canvas.ABToGBUtil_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.gd.resource.GDLazyResources_Package; use org.allbinary.game.gd.resource.GDLazyResources_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.ConcurrentImageLoadingProcessor_Package; use org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.HTMLEndProcessor_Package is

   package J2MEUtil_Package renames org.allbinary.J2MEUtil_Package;
   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package LazyImageRotationAnimation_Package renames org.allbinary.animation.image.LazyImageRotationAnimation_Package;
   package GameGlobalsFactory_Package renames org.allbinary.canvas.GameGlobalsFactory_Package;
   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package ResourceUtil_Package renames org.allbinary.data.resource.ResourceUtil_Package;
   package ABToGBUtil_Package renames org.allbinary.game.canvas.ABToGBUtil_Package;
   package AllBinaryGameCanvas_Package renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package GDLazyResources_Package renames org.allbinary.game.gd.resource.GDLazyResources_Package;
   package GDResources_Package renames org.allbinary.game.gd.resource.GDResources_Package;
   package ProgressCanvas_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package Memory_Package renames org.allbinary.system.Memory_Package;
   package BaseImageLoadingProcessor_Package renames org.allbinary.thread.BaseImageLoadingProcessor_Package;
   package ConcurrentImageLoadingProcessor_Package renames org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
   package SynchObject_Package renames org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package ABSystemWrapper_Package renames org.allbinary.logic.ABSystemWrapper_Package;

   type HTMLEndProcessor is tagged;
   type HTMLEndProcessor_Access is access all HTMLEndProcessor'Class;
   type HTMLEndProcessor_Access_Array is array (Natural range <>) of HTMLEndProcessor_Access;
   type HTMLEndProcessor_Access_Array_Access is access all HTMLEndProcessor_Access_Array;

   type HTMLEndProcessor is new Processor with null record;

   procedure Initialize (This : in out HTMLEndProcessor'Class);
   function Create return HTMLEndProcessor_Access;
   procedure process (This : in out HTMLEndProcessor);

end org.allbinary.image.HTMLEndProcessor_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package; use org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.canvas.ABToGBUtil_Package; use org.allbinary.game.canvas.ABToGBUtil_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.gd.resource.GDLazyResources_Package; use org.allbinary.game.gd.resource.GDLazyResources_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.ConcurrentImageLoadingProcessor_Package; use org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.FirstProcessor_Package is

   package J2MEUtil_Package renames org.allbinary.J2MEUtil_Package;
   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package LazyImageRotationAnimation_Package renames org.allbinary.animation.image.LazyImageRotationAnimation_Package;
   package GameGlobalsFactory_Package renames org.allbinary.canvas.GameGlobalsFactory_Package;
   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package ResourceUtil_Package renames org.allbinary.data.resource.ResourceUtil_Package;
   package ABToGBUtil_Package renames org.allbinary.game.canvas.ABToGBUtil_Package;
   package AllBinaryGameCanvas_Package renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package GDLazyResources_Package renames org.allbinary.game.gd.resource.GDLazyResources_Package;
   package GDResources_Package renames org.allbinary.game.gd.resource.GDResources_Package;
   package ProgressCanvas_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package Memory_Package renames org.allbinary.system.Memory_Package;
   package BaseImageLoadingProcessor_Package renames org.allbinary.thread.BaseImageLoadingProcessor_Package;
   package ConcurrentImageLoadingProcessor_Package renames org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
   package SynchObject_Package renames org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package ABSystemWrapper_Package renames org.allbinary.logic.ABSystemWrapper_Package;

   type FirstProcessor is tagged;
   type FirstProcessor_Access is access all FirstProcessor'Class;
   type FirstProcessor_Access_Array is array (Natural range <>) of FirstProcessor_Access;
   type FirstProcessor_Access_Array_Access is access all FirstProcessor_Access_Array;

   type FirstProcessor is new Processor with null record;

   procedure Initialize (This : in out FirstProcessor'Class);
   function Create return FirstProcessor_Access;
   procedure process (This : in out FirstProcessor);

end org.allbinary.image.FirstProcessor_Package;


