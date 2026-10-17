--  Generated Code Do Not Modify


package body org.allbinary.graphics.opengles.OpenGLUtil_Package is

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
      This.list := BasicArrayListD_Package.Create;
      This.runnableList := BasicArrayListD_Package.Create;
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

   procedure onSurfaceCreated (This : in out OpenGLUtil; gl_Param : access GL10'Class) is
      gl : GL10_Access := GL10_Access (gl_Param);
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

   procedure onSurfaceCreated (This : in out OpenGLUtil; gl_Param : access GL10'Class; loadTextures_Param : access LoadTextures'Class) is
      gl : GL10_Access := GL10_Access (gl_Param);
      loadTextures : LoadTextures_Access := LoadTextures_Access (loadTextures_Param);
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
   procedure onSurfaceChanged (This : in out OpenGLUtil; gl_Param : access GL10'Class; graphics_Param : access OpenGLESGraphics'Class) is
      gl : GL10_Access := GL10_Access (gl_Param);
      graphics : OpenGLESGraphics_Access := OpenGLESGraphics_Access (graphics_Param);
      progressCanvas : ProgressCanvas_Access;
   begin
        if not (This.surfaceCreatedAndInitialized) then
            graphics.init;
            This.surfaceCreatedAndInitialized := True;
        end if;
        graphics.update;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.update (graphics);
        (OpenGLImageCache_Access (OpenGLImageCacheFactory_Package.getInstance)).update (gl);
        This.processRunnables;
        This.set (gl);
   end onSurfaceChanged;

   function addImage (This : in out OpenGLUtil; image_Param : access Image'Class) return Image_Access is
      image : Image_Access := Image_Access (image_Param);
      encapsulateImage : Image_Access;
   begin
        encapsulateImage := This.preResourceImageUtil.encapsulate (image);
        if (encapsulateImage) /= (image) then
            begin  --  synchronized
                This.list.add (encapsulateImage);
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

   procedure addRunnable (This : in out OpenGLUtil; runnable_Param : access Runnable'Class) is
      runnable : Runnable_Access := Runnable_Access (runnable_Param);
   begin
        begin  --  synchronized
            if not (This.runnableList.contains (runnable)) then
                This.runnableList.add (runnable);
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
   procedure set (This : in out OpenGLUtil; gl_Param : access GL10'Class) is
      gl : GL10_Access := GL10_Access (gl_Param);
      size : Integer;
      image : Java_Object_Access;
      index2 : Integer;
   begin
        size := This.list.size;
        image := null;
        for index2 in 0 .. (size) - 1 loop
            image := This.list.get (index2);
            (OpenGLESImage_Access (image)).set (gl);
        end loop;
   end set;

   procedure addImage (This : in out OpenGLUtil; image_Param : access Image'Class) is
      Java_Result : constant Image_Access := OpenGLUtil'Class (This).addImage (image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addImage;

begin
   null;
   instance := OpenGLUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLUtil_Package;


