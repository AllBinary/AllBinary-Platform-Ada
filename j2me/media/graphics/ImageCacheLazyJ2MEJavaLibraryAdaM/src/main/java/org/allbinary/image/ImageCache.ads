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
with java.io.InputStream_Package; use java.io.InputStream_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package; use org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.ImageCache_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package LazyImageRotationAnimation_Package renames Standard.org.allbinary.animation.image.LazyImageRotationAnimation_Package;
   package GameGlobalsFactory_Package renames Standard.org.allbinary.canvas.GameGlobalsFactory_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package GDResources_Package renames Standard.org.allbinary.game.gd.resource.GDResources_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BaseImageLoadingProcessor_Package renames Standard.org.allbinary.thread.BaseImageLoadingProcessor_Package;
   package SynchObject_Package renames Standard.org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type ImageCache is tagged;
   type ImageCache_Access is access all ImageCache'Class;
   type ImageCache_Access_Array is array (Natural range <>) of ImageCache_Access;
   type ImageCache_Access_Array_Access is access all ImageCache_Access_Array;
   type ImageCache_Access_Array_Access_Array is array (Natural range <>) of ImageCache_Access_Array_Access;
   type ImageCache_Access_Array_Access_Array_Access is access all ImageCache_Access_Array_Access_Array;

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
      progressEnded_Field : Boolean;
      hasAnyLazyAnimationFactories : Boolean;
      processor : Processor_Access;
      endProcessor : Processor_Access;
      LOAD_IMAGE_FOR_ANIMATION : Unbounded_String;
   end record;
   NULL_IMAGE_CACHE : ImageCache_Access;

   procedure Initialize (This : in out ImageCache'Class);
   function Create return ImageCache_Access;
   procedure firstProcess (This : in out ImageCache);
   procedure addListener (This : in out ImageCache; renderer_Param : access Java_Object'Class);
   procedure waitForLoadNow (This : in out ImageCache);
   procedure loadImageForAnimation (This : in out ImageCache);
   procedure loadImages (This : in out ImageCache);
   procedure loadImageForAnimations (This : in out ImageCache);
   procedure loadRemainingAnimations (This : in out ImageCache);
   function loadImageForLazyAnimation (This : in out ImageCache; lazyImageRotationAnimation_Param : access LazyImageRotationAnimation_Package.LazyImageRotationAnimation'Class) return Boolean;
   procedure loadImageForLazyAnimation (This : in out ImageCache; lazyImageRotationAnimation_Param : access LazyImageRotationAnimation_Package.LazyImageRotationAnimation'Class);
   procedure loadNextImage (This : in out ImageCache);
   function loadImage (This : in out ImageCache; image_Param : access Image_Package.Image'Class) return Boolean;
   procedure loadImage (This : in out ImageCache; image_Param : access Image_Package.Image'Class);
   procedure init (This : in out ImageCache; image_Param : access Image_Package.Image'Class; image2_Param : access Image_Package.Image'Class);
   function creatImage (This : in out ImageCache; key : Unbounded_String) return Image_Access;
   procedure creatImage (This : in out ImageCache; key : Unbounded_String);
   function get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer);
   function getWithKey (This : in out ImageCache; key_Param : access Java_Object'Class) return Image_Access;
   procedure getWithKey (This : in out ImageCache; key_Param : access Java_Object'Class);
   function getIndex (This : in out ImageCache; key_Param : access Java_Object'Class) return Integer;
   procedure getIndex (This : in out ImageCache; key_Param : access Java_Object'Class);
   function createImageFromInputStream (This : in out ImageCache; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access;
   procedure createImageFromInputStream (This : in out ImageCache; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class);
   function createImageLater (This : in out ImageCache; key : Unbounded_String; width : Integer; height : Integer) return Image_Access;
   procedure createImageLater (This : in out ImageCache; key : Unbounded_String; width : Integer; height : Integer);
   function getAssociated (This : in out ImageCache; lazyImageRotationAnimation_Param : access LazyImageRotationAnimation_Package.LazyImageRotationAnimation'Class) return BasicArrayList_Access;
   procedure getAssociated (This : in out ImageCache; lazyImageRotationAnimation_Param : access LazyImageRotationAnimation_Package.LazyImageRotationAnimation'Class);
   procedure add (This : in out ImageCache; lazyImageRotationAnimation_Param : access LazyImageRotationAnimation_Package.LazyImageRotationAnimation'Class);
   procedure insertFirst (This : in out ImageCache; lazyImageRotationAnimation_Param : access LazyImageRotationAnimation_Package.LazyImageRotationAnimation'Class);
   procedure progressEnded (This : in out ImageCache);
   procedure runTask (This : in out ImageCache);
   procedure initProgress (This : in out ImageCache);
   function isLazy (This : in out ImageCache) return Boolean;
   procedure addListener (This : in out ImageCache; Value : Unbounded_String);
   function getWithKey (This : in out ImageCache; Value : Unbounded_String) return Image_Access;
   procedure getWithKey (This : in out ImageCache; Value : Unbounded_String);
   function getIndex (This : in out ImageCache; Value : Unbounded_String) return Integer;
   procedure getIndex (This : in out ImageCache; Value : Unbounded_String);

end org.allbinary.image.ImageCache_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package; use org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.NotHTMLProcessor_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package LazyImageRotationAnimation_Package renames Standard.org.allbinary.animation.image.LazyImageRotationAnimation_Package;
   package GameGlobalsFactory_Package renames Standard.org.allbinary.canvas.GameGlobalsFactory_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package GDResources_Package renames Standard.org.allbinary.game.gd.resource.GDResources_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BaseImageLoadingProcessor_Package renames Standard.org.allbinary.thread.BaseImageLoadingProcessor_Package;
   package SynchObject_Package renames Standard.org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type NotHTMLProcessor is tagged;
   type NotHTMLProcessor_Access is access all NotHTMLProcessor'Class;
   type NotHTMLProcessor_Access_Array is array (Natural range <>) of NotHTMLProcessor_Access;
   type NotHTMLProcessor_Access_Array_Access is access all NotHTMLProcessor_Access_Array;
   type NotHTMLProcessor_Access_Array_Access_Array is array (Natural range <>) of NotHTMLProcessor_Access_Array_Access;
   type NotHTMLProcessor_Access_Array_Access_Array_Access is access all NotHTMLProcessor_Access_Array_Access_Array;

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
with java.io.InputStream_Package; use java.io.InputStream_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package; use org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.NotHTMLEndProcessor_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package LazyImageRotationAnimation_Package renames Standard.org.allbinary.animation.image.LazyImageRotationAnimation_Package;
   package GameGlobalsFactory_Package renames Standard.org.allbinary.canvas.GameGlobalsFactory_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package GDResources_Package renames Standard.org.allbinary.game.gd.resource.GDResources_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BaseImageLoadingProcessor_Package renames Standard.org.allbinary.thread.BaseImageLoadingProcessor_Package;
   package SynchObject_Package renames Standard.org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type NotHTMLEndProcessor is tagged;
   type NotHTMLEndProcessor_Access is access all NotHTMLEndProcessor'Class;
   type NotHTMLEndProcessor_Access_Array is array (Natural range <>) of NotHTMLEndProcessor_Access;
   type NotHTMLEndProcessor_Access_Array_Access is access all NotHTMLEndProcessor_Access_Array;
   type NotHTMLEndProcessor_Access_Array_Access_Array is array (Natural range <>) of NotHTMLEndProcessor_Access_Array_Access;
   type NotHTMLEndProcessor_Access_Array_Access_Array_Access is access all NotHTMLEndProcessor_Access_Array_Access_Array;

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
with java.io.InputStream_Package; use java.io.InputStream_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package; use org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.HTMLEndProcessor_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package LazyImageRotationAnimation_Package renames Standard.org.allbinary.animation.image.LazyImageRotationAnimation_Package;
   package GameGlobalsFactory_Package renames Standard.org.allbinary.canvas.GameGlobalsFactory_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package GDResources_Package renames Standard.org.allbinary.game.gd.resource.GDResources_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BaseImageLoadingProcessor_Package renames Standard.org.allbinary.thread.BaseImageLoadingProcessor_Package;
   package SynchObject_Package renames Standard.org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type HTMLEndProcessor is tagged;
   type HTMLEndProcessor_Access is access all HTMLEndProcessor'Class;
   type HTMLEndProcessor_Access_Array is array (Natural range <>) of HTMLEndProcessor_Access;
   type HTMLEndProcessor_Access_Array_Access is access all HTMLEndProcessor_Access_Array;
   type HTMLEndProcessor_Access_Array_Access_Array is array (Natural range <>) of HTMLEndProcessor_Access_Array_Access;
   type HTMLEndProcessor_Access_Array_Access_Array_Access is access all HTMLEndProcessor_Access_Array_Access_Array;

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
with java.io.InputStream_Package; use java.io.InputStream_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package; use org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.image.ImageCacheBase_Package; use org.allbinary.image.ImageCacheBase_Package;

package org.allbinary.image.FirstProcessor_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package LazyImageRotationAnimation_Package renames Standard.org.allbinary.animation.image.LazyImageRotationAnimation_Package;
   package GameGlobalsFactory_Package renames Standard.org.allbinary.canvas.GameGlobalsFactory_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package GDResources_Package renames Standard.org.allbinary.game.gd.resource.GDResources_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BaseImageLoadingProcessor_Package renames Standard.org.allbinary.thread.BaseImageLoadingProcessor_Package;
   package SynchObject_Package renames Standard.org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type FirstProcessor is tagged;
   type FirstProcessor_Access is access all FirstProcessor'Class;
   type FirstProcessor_Access_Array is array (Natural range <>) of FirstProcessor_Access;
   type FirstProcessor_Access_Array_Access is access all FirstProcessor_Access_Array;
   type FirstProcessor_Access_Array_Access_Array is array (Natural range <>) of FirstProcessor_Access_Array_Access;
   type FirstProcessor_Access_Array_Access_Array_Access is access all FirstProcessor_Access_Array_Access_Array;

   type FirstProcessor is new Processor with null record;

   procedure Initialize (This : in out FirstProcessor'Class);
   function Create return FirstProcessor_Access;
   procedure process (This : in out FirstProcessor);

end org.allbinary.image.FirstProcessor_Package;


