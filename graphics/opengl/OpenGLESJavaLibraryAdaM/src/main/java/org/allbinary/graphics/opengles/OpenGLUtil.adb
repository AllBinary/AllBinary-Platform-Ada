--  Generated Code Do Not Modify


with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLImageCache_Package; use org.allbinary.image.opengles.OpenGLImageCache_Package;
with org.allbinary.image.opengles.OpenGLImageCacheFactory_Package; use org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.graphics.opengles.OpenGLCapabilities_Package; use org.allbinary.graphics.opengles.OpenGLCapabilities_Package;
with org.allbinary.graphics.opengles.OpenGLLogUtil_Package; use org.allbinary.graphics.opengles.OpenGLLogUtil_Package;

package body org.allbinary.graphics.opengles.OpenGLUtil_Package is

   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;
   package OpenGLImageCache_Package renames Standard.org.allbinary.image.opengles.OpenGLImageCache_Package;
   package OpenGLImageCacheFactory_Package renames Standard.org.allbinary.image.opengles.OpenGLImageCacheFactory_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out OpenGLUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.renderStrings := RendererStrings_Package.getInstance;
      This.canvasStrings := CanvasStrings_Package.getInstance;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
      This.lockObject := SynchObject_Package.Create;
      This.anyType := SynchObject_Package.Create;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.runnableList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.created := False;
      This.surfaceCreatedAndInitialized := False;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLUtil_Access is
      This : constant OpenGLUtil_Access := new OpenGLUtil;
   begin
      OpenGLUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLUtil_Access is
   begin
        return OpenGLUtil_Package.instance;
   end getInstance;

   procedure onSurfaceCreated (This : in out OpenGLUtil; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
   begin
        begin
            if not (This.created) then
                This.created := True;
                PreLogUtil_Package.put (Java_Image (CommonLabels_Package.getInstance.START_LABEL) & OpenGLCapabilities_Package.getInstance.toString, OpenGLUtil_Access'(This'Unchecked_Access), This.renderStrings.ON_SURFACE_CREATED);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, OpenGLUtil_Access'(This'Unchecked_Access), This.renderStrings.ON_SURFACE_CREATED, e);
                end;
        end;
   end onSurfaceCreated;

   procedure onSurfaceCreated (This : in out OpenGLUtil; gl_Param : access GL10_Package.GL10'Class; loadTextures_Param : access LoadTextures_Package.LoadTextures'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      loadTextures : constant LoadTextures_Access := LoadTextures_Access (loadTextures_Param);
   begin
        begin
            loadTextures.load (gl);
            OpenGLLogUtil_Package.getInstance.logError (gl);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, OpenGLUtil_Access'(This'Unchecked_Access), This.renderStrings.ON_SURFACE_CREATED, e);
                end;
        end;
   end onSurfaceCreated;

   --  throws Exception
   procedure onSurfaceChanged (This : in out OpenGLUtil; gl_Param : access GL10_Package.GL10'Class; graphics_Param : access OpenGLESGraphics_Package.OpenGLESGraphics'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      graphics : constant OpenGLESGraphics_Access := OpenGLESGraphics_Access (graphics_Param);
      progressCanvas : ProgressCanvas_Access;
   begin
        if not (This.surfaceCreatedAndInitialized) then
            graphics.init;
            This.surfaceCreatedAndInitialized := True;
        end if;
        graphics.update;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.update (graphics);
        OpenGLImageCache_Access (OpenGLImageCacheFactory_Package.getInstance).update (gl);
        OpenGLUtil'Class (This).processRunnables;
        OpenGLUtil'Class (This).set (gl);
   end onSurfaceChanged;

   function addImage (This : in out OpenGLUtil; image_Param : access Image_Package.Image'Class) return Image_Access is
      image : constant Image_Access := Image_Access (image_Param);
      encapsulateImage : Image_Access;
   begin
        encapsulateImage := This.preResourceImageUtil.encapsulate (image);
        if (encapsulateImage) /= (image) then
            begin  --  synchronized
                This.list.add (Java_Object_Access (encapsulateImage));
            end;
            return encapsulateImage;
        end if;
        return image;
   end addImage;

   procedure clear (This : in out OpenGLUtil) is
   begin
        begin  --  synchronized
            This.list.clear;
        end;
   end clear;

   procedure addRunnable (This : in out OpenGLUtil; runnable_Param : access Runnable_Package.Runnable'Class) is
      runnable : constant Runnable_Access := Runnable_Access (runnable_Param);
   begin
        begin  --  synchronized
            if not (This.runnableList.contains (Java_Object_Access (runnable))) then
                This.runnableList.add (Java_Object_Access (runnable));
                This.displayInfoSingleton.add (This.canvasStrings.SCALED_IMAGES);
            end if;
        end;
   end addRunnable;

   procedure processRunnables (This : in out OpenGLUtil) is
      runnable : Runnable_Access;
      size : Integer;
      index : Integer;
   begin
        begin  --  synchronized
            runnable := null;
            size := This.runnableList.size;
            for index in 0 .. (size) - 1 loop
                runnable := Runnable_Access (This.runnableList.get (index));
                runnable.run;
            end loop;
            This.runnableList.clear;
        end;
   end processRunnables;

   --  throws Exception
   procedure set (This : in out OpenGLUtil; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      size : Integer;
      image : Java_Object_Access;
      index2 : Integer;
   begin
        size := This.list.size;
        image := null;
        for index2 in 0 .. (size) - 1 loop
            image := This.list.get (index2);
            OpenGLESImage_Access (image).set (gl);
        end loop;
   end set;

   procedure addImage (This : in out OpenGLUtil; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant Image_Access := OpenGLUtil'Class (This).addImage (image_Param => image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addImage;

begin
   null;
   instance := OpenGLUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLUtil_Package;


