--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.device.LoadTextures_Package; use org.allbinary.device.LoadTextures_Package;
with org.allbinary.device.OpenGLESGraphics_Package; use org.allbinary.device.OpenGLESGraphics_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.opengles.renderer.RendererStrings_Package; use org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
with org.allbinary.image.PreResourceImageUtil_Package; use org.allbinary.image.PreResourceImageUtil_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLImageCache_Package; use org.allbinary.image.opengles.OpenGLImageCache_Package;
with org.allbinary.image.opengles.OpenGLImageCacheFactory_Package; use org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.graphics.opengles.OpenGLUtil_Package is

   package LoadTextures_Package renames org.allbinary.device.LoadTextures_Package;
   package OpenGLESGraphics_Package renames org.allbinary.device.OpenGLESGraphics_Package;
   package ProgressCanvas_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package CanvasStrings_Package renames org.allbinary.graphics.displayable.CanvasStrings_Package;
   package DisplayInfoSingleton_Package renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package RendererStrings_Package renames org.allbinary.graphics.opengles.renderer.RendererStrings_Package;
   package PreResourceImageUtil_Package renames org.allbinary.image.PreResourceImageUtil_Package;
   package OpenGLESImage_Package renames org.allbinary.image.opengles.OpenGLESImage_Package;
   package OpenGLImageCache_Package renames org.allbinary.image.opengles.OpenGLImageCache_Package;
   package OpenGLImageCacheFactory_Package renames org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package SynchObject_Package renames org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type OpenGLUtil is tagged;
   type OpenGLUtil_Access is access all OpenGLUtil'Class;
   type OpenGLUtil_Access_Array is array (Natural range <>) of OpenGLUtil_Access;
   type OpenGLUtil_Access_Array_Access is access all OpenGLUtil_Access_Array;

   type OpenGLUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      renderStrings : RendererStrings_Access;
      canvasStrings : CanvasStrings_Access;
      displayInfoSingleton : DisplayInfoSingleton_Access;
      preResourceImageUtil : PreResourceImageUtil_Access;
      lockObject : SynchObject_Access;
      anyType : SynchObject_Access;
      list : BasicArrayList_Access;
      runnableList : BasicArrayList_Access;
      created : Boolean;
      surfaceCreatedAndInitialized : Boolean;
   end record;
   instance : OpenGLUtil_Access;

   procedure Initialize (This : in out OpenGLUtil'Class);
   function Create return OpenGLUtil_Access;
   function getInstance return OpenGLUtil_Access;
   procedure getInstance;
   procedure onSurfaceCreated (This : in out OpenGLUtil; gl : GL10_Access);
   procedure onSurfaceCreated (This : in out OpenGLUtil; gl : GL10_Access; loadTextures : LoadTextures_Access);
   procedure onSurfaceChanged (This : in out OpenGLUtil; gl : GL10_Access; graphics : OpenGLESGraphics_Access);
   function addImage (This : in out OpenGLUtil; image : Image_Access) return Image_Access;
   procedure addImage (This : in out OpenGLUtil; image : Image_Access);
   procedure clear (This : in out OpenGLUtil);
   procedure addRunnable (This : in out OpenGLUtil; runnable : Runnable_Access);
   procedure processRunnables (This : in out OpenGLUtil);
   procedure set (This : in out OpenGLUtil; gl : GL10_Access);

end org.allbinary.graphics.opengles.OpenGLUtil_Package;


