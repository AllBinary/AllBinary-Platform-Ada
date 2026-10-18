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


package body org.allbinary.graphics.opengles.OpenGLConfiguration_Package is

   procedure Initialize_Fields (This : in out OpenGLConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.FILE := To_Unbounded_String ("OpenGLConfiguration.dat");
      This.commonStrings := CommonStrings_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
      This.opengl := False;
      This.type_Id := OpenGLFeatureFactory_Package.getInstance.OPENGL_AS_GAME_THREAD;
      This.imageColor := OpenGLFeatureFactory_Package.getInstance.IMAGE_COLOR_DEPTH_4444;
      This.color := OpenGLFeatureFactory_Package.getInstance.IMAGE_COLOR_DEPTH_4444;
      This.versionSelector := OpenGLFeatureFactory_Package.getInstance.OPENGL_AUTO_SELECT;
   end Initialize_Fields;


   function getInstance return OpenGLConfiguration_Access is
   begin
        if (OpenGLConfiguration_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            OpenGLConfiguration_Package.instance := OpenGLConfiguration_Package.Create;
        end if;
        return OpenGLConfiguration_Access (OpenGLConfiguration_Package.instance);
   end getInstance;

   procedure Initialize (This : in out OpenGLConfiguration'Class) is
   begin
      Initialize_Fields (This);
        begin
            if FileFactory_Package.getInstance.isFile (This.FILE) then
                OpenGLConfiguration'Class (This).read;
            else
                OpenGLConfiguration'Class (This).write;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, OpenGLConfiguration_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create return OpenGLConfiguration_Access is
      This : constant OpenGLConfiguration_Access := new OpenGLConfiguration;
   begin
      OpenGLConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure read (This : in out OpenGLConfiguration) is
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
      fileInputStreamFactory : FileStreamFactory_Access;
      fileInputStream : InputStream_Access;
      dataInputStream : DataInputStream_Access;
      openGLValue : Integer;
      version : Unbounded_String;
      type_Id : Unbounded_String;
      imageColor : Unbounded_String;
      color : Unbounded_String;
   begin
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        fileInputStreamFactory := FileStreamFactory_Package.getInstance;
        fileInputStream := fileInputStreamFactory.getFileInputStreamInstance (StringUtil_Package.getInstance.EMPTY_STRING, This.FILE);
        dataInputStream := DataInputStream_Package.Create (fileInputStream);
        openGLValue := dataInputStream.readInt;
        if (openGLValue) = (0) then
            OpenGLConfiguration'Class (This).setOpenGL (False);
        elsif (openGLValue) = (1) then
            OpenGLConfiguration'Class (This).setOpenGL (True);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Invalid OpenGL Setting")));
        end if;
        version := dataInputStream.readUTF;
        if (This.tsUtil.compareTo (version, openGLFeatureFactory.OPENGL_AUTO_SELECT.getName)) = (0) then
            OpenGLConfiguration'Class (This).setVersionSelector (openGLFeatureFactory.OPENGL_AUTO_SELECT);
        elsif (This.tsUtil.compareTo (version, openGLFeatureFactory.OPENGL_MINIMUM.getName)) = (0) then
            OpenGLConfiguration'Class (This).setVersionSelector (openGLFeatureFactory.OPENGL_MINIMUM);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("OpenGLConfiguration: Error reading version selector: ") & version));
        end if;
        type_Id := dataInputStream.readUTF;
        if (This.tsUtil.compareTo (type_Id, openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName)) = (0) then
            OpenGLConfiguration'Class (This).setType (openGLFeatureFactory.OPENGL_AS_GAME_THREAD);
        elsif (This.tsUtil.compareTo (type_Id, openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName)) = (0) then
            OpenGLConfiguration'Class (This).setType (openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("OpenGLConfiguration: Error reading image color")));
        end if;
        imageColor := dataInputStream.readUTF;
        if (This.tsUtil.compareTo (imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName)) = (0) then
            OpenGLConfiguration'Class (This).setImageColor (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
        elsif (This.tsUtil.compareTo (imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName)) = (0) then
            OpenGLConfiguration'Class (This).setImageColor (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
        elsif (This.tsUtil.compareTo (imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName)) = (0) then
            OpenGLConfiguration'Class (This).setImageColor (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("OpenGLConfiguration: Error reading image color: ") & Java_Image (imageColor)));
        end if;
        color := dataInputStream.readUTF;
        if (This.tsUtil.compareTo (color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444.getName)) = (0) then
            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444);
        elsif (This.tsUtil.compareTo (color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_565.getName)) = (0) then
            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_565);
        elsif (This.tsUtil.compareTo (color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888.getName)) = (0) then
            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("OpenGLConfiguration: Error reading color: ") & Java_Image (color)));
        end if;
        PreLogUtil_Package.put (To_Unbounded_String ("Read Configuration: ") & OpenGLConfiguration'Class (This).toString, OpenGLConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("read"));
   end read;

   --  throws Exception
   procedure write (This : in out OpenGLConfiguration) is
      closeable : Closeable_Access;
      fileInputStreamFactory : FileStreamFactory_Access;
      fileOutputStream : OutputStream_Access;
      dataOutputStream : AbDataOutputStream_Access;
   begin
        closeable := NullCloseable_Package.NULL_CLOSEABLE;
        begin
            PreLogUtil_Package.put (To_Unbounded_String ("Write Configuration: ") & OpenGLConfiguration'Class (This).toString, OpenGLConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("write"));
            fileInputStreamFactory := FileStreamFactory_Package.getInstance;
            fileOutputStream := fileInputStreamFactory.getFileOutputStreamInstance (StringUtil_Package.getInstance.EMPTY_STRING, This.FILE);
            dataOutputStream := AbDataOutputStream_Package.Create (fileOutputStream);
            closeable := dataOutputStream;
            if OpenGLConfiguration'Class (This).isOpenGL then
                dataOutputStream.writeInt (1);
            else
                dataOutputStream.writeInt (0);
            end if;
            dataOutputStream.writeUTF (OpenGLConfiguration'Class (This).getVersionSelector.getName);
            dataOutputStream.writeUTF (OpenGLConfiguration'Class (This).getType.getName);
            dataOutputStream.writeUTF (OpenGLConfiguration'Class (This).getImageColor.getName);
            dataOutputStream.writeUTF (OpenGLConfiguration'Class (This).getColor.getName);
            dataOutputStream.flush;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (closeable);
        end;
   end write;

   --  throws Exception
   procedure init (This : in out OpenGLConfiguration) is
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
   begin
        features := Features_Package.getInstance;
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (MainFeatureFactory_Package.getInstance.STATIC) then
            openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
            if OpenGLConfiguration'Class (This).isOpenGL then
                if ((features.isFeature (openGLFeatureFactory.OPENGL_2D)) or else (features.isFeature (openGLFeatureFactory.OPENGL_3D))) or else (features.isFeature (openGLFeatureFactory.OPENGL_2D_AND_3D)) then
                    if not (features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL)) then
                        This.logUtil.putF (To_Unbounded_String ("Turning on OpenGL as Default"), OpenGLConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
                        features.addDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL);
                        This.logUtil.putF (To_Unbounded_String ("Using OpenGL Type Feature: ") & Java_Image (OpenGLConfiguration'Class (This).getType), OpenGLConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
                        features.addDefault (OpenGLConfiguration'Class (This).getType);
                        This.logUtil.putF (To_Unbounded_String ("Using OpenGL ImageColor Feature: ") & Java_Image (OpenGLConfiguration'Class (This).getImageColor), OpenGLConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
                        features.addDefault (OpenGLConfiguration'Class (This).getImageColor);
                        This.logUtil.putF (To_Unbounded_String ("Using OpenGL Color Feature: ") & Java_Image (OpenGLConfiguration'Class (This).getColor), OpenGLConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
                        features.addDefault (OpenGLConfiguration'Class (This).getColor);
                        This.logUtil.putF (To_Unbounded_String ("Using OpenGL Version Selector Feature: ") & Java_Image (OpenGLConfiguration'Class (This).getVersionSelector), OpenGLConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
                        features.addDefault (OpenGLConfiguration'Class (This).getVersionSelector);
                    end if;
                else
                    This.logUtil.putF (To_Unbounded_String ("OpenGL is enabled, but this game does not support OpenGL (Probably from installing with the same package name from a game that had OpenGL available)"), OpenGLConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
                end if;
            else
                This.logUtil.putF (To_Unbounded_String ("OpenGL is Off"), OpenGLConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
            end if;
        else
            if (OpenGLConfiguration'Class (This).isOpenGL) and then (not (features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL))) then
                PreLogUtil_Package.put (To_Unbounded_String ("OpenGL is set but not Enabled since statics where not cleared (Reboot or Complete exit is Required)"), OpenGLConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
            end if;
        end if;
        PreLogUtil_Package.put (OpenGLConfiguration'Class (This).toString, OpenGLConfiguration_Access'(This'Unchecked_Access), This.commonStrings.INIT);
   end init;

   --  throws Exception
   procedure update (This : in out OpenGLConfiguration; gameFeature_Param : access Feature_Package.Feature'Class; colorLocked : Boolean) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
      modified : Boolean;
   begin
        features := Features_Package.getInstance;
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        modified := False;
        if (gameFeature) = (openGLFeatureFactory.OPENGL) then
            if features.isFeature (gameFeature) then
                if not (OpenGLConfiguration'Class (This).isOpenGL) then
                    OpenGLConfiguration'Class (This).setOpenGL (True);
                    modified := True;
                end if;
            else
                if OpenGLConfiguration'Class (This).isOpenGL then
                    OpenGLConfiguration'Class (This).setOpenGL (False);
                    modified := True;
                end if;
            end if;
        end if;
        if ((gameFeature) = (openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) or else ((gameFeature) = (openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) then
            if features.isFeature (gameFeature) then
                if (gameFeature) /= (OpenGLConfiguration'Class (This).getType) then
                    OpenGLConfiguration'Class (This).setType (OpenGLFeature_Access (gameFeature));
                    modified := True;
                end if;
            end if;
        end if;
        if (((gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)) or else ((gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_565))) or else ((gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888)) then
            if features.isFeature (gameFeature) then
                if (OpenGLConfiguration'Class (This).getImageColor) /= (gameFeature) then
                    OpenGLConfiguration'Class (This).setImageColor (OpenGLFeature_Access (gameFeature));
                    if colorLocked then
                        if (gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444) then
                            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444);
                        elsif (gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_565) then
                            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_565);
                        elsif (gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888) then
                            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888);
                        end if;
                    end if;
                    modified := True;
                end if;
            end if;
        end if;
        if (((gameFeature) = (openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444)) or else ((gameFeature) = (openGLFeatureFactory.OPENGL_COLOR_DEPTH_565))) or else ((gameFeature) = (openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888)) then
            if features.isFeature (gameFeature) then
                if (OpenGLConfiguration'Class (This).getColor) /= (gameFeature) then
                    OpenGLConfiguration'Class (This).setColor (OpenGLFeature_Access (gameFeature));
                    modified := True;
                end if;
            end if;
        end if;
        if ((gameFeature) = (openGLFeatureFactory.OPENGL_AUTO_SELECT)) or else ((gameFeature) = (openGLFeatureFactory.OPENGL_MINIMUM)) then
            if features.isFeature (gameFeature) then
                OpenGLConfiguration'Class (This).setVersionSelector (OpenGLFeature_Access (gameFeature));
            end if;
            modified := True;
        end if;
        if modified then
            OpenGLConfiguration'Class (This).write;
        end if;
   end update;

   procedure setOpenGL (This : in out OpenGLConfiguration; opengl : Boolean) is
   begin
        This.opengl := opengl;
   end setOpenGL;

   function isOpenGL (This : in out OpenGLConfiguration) return Boolean is
   begin
        return This.opengl;
   end isOpenGL;

   procedure setImageColor (This : in out OpenGLConfiguration; imageColor_Param : access OpenGLFeature_Package.OpenGLFeature'Class) is
      imageColor : constant OpenGLFeature_Access := OpenGLFeature_Access (imageColor_Param);
   begin
        This.imageColor := imageColor;
   end setImageColor;

   function getImageColor (This : in out OpenGLConfiguration) return OpenGLFeature_Access is
   begin
        return This.imageColor;
   end getImageColor;

   procedure setColor (This : in out OpenGLConfiguration; color_Param : access OpenGLFeature_Package.OpenGLFeature'Class) is
      color : constant OpenGLFeature_Access := OpenGLFeature_Access (color_Param);
   begin
        This.color := color;
   end setColor;

   function getColor (This : in out OpenGLConfiguration) return OpenGLFeature_Access is
   begin
        return This.color;
   end getColor;

   procedure setVersionSelector (This : in out OpenGLConfiguration; versionSelector_Param : access OpenGLFeature_Package.OpenGLFeature'Class) is
      versionSelector : constant OpenGLFeature_Access := OpenGLFeature_Access (versionSelector_Param);
   begin
        This.versionSelector := versionSelector;
   end setVersionSelector;

   function getVersionSelector (This : in out OpenGLConfiguration) return OpenGLFeature_Access is
   begin
        return This.versionSelector;
   end getVersionSelector;

   procedure setType (This : in out OpenGLConfiguration; type_Id_Param : access OpenGLFeature_Package.OpenGLFeature'Class) is
      type_Id : constant OpenGLFeature_Access := OpenGLFeature_Access (type_Id_Param);
   begin
        This.type_Id := type_Id;
   end setType;

   function getType (This : in out OpenGLConfiguration) return OpenGLFeature_Access is
   begin
        return This.type_Id;
   end getType;

   function toString (This : in out OpenGLConfiguration) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      stringUtil : StringUtil_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringUtil := StringUtil_Package.getInstance;
        stringBuffer.append (To_Unbounded_String (" isOpenGL: "));
        stringBuffer.appendboolean (OpenGLConfiguration'Class (This).isOpenGL);
        stringBuffer.append (To_Unbounded_String (" VersionSelector: "));
        stringBuffer.append (stringUtil.toString (OpenGLConfiguration'Class (This).getVersionSelector));
        stringBuffer.append (To_Unbounded_String (" Type: "));
        stringBuffer.append (stringUtil.toString (OpenGLConfiguration'Class (This).getType));
        stringBuffer.append (To_Unbounded_String (" Image Color: "));
        stringBuffer.append (stringUtil.toString (OpenGLConfiguration'Class (This).getImageColor));
        stringBuffer.append (To_Unbounded_String (" Color: "));
        stringBuffer.append (stringUtil.toString (OpenGLConfiguration'Class (This).getColor));
        return stringBuffer.toString;
   end toString;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.graphics.opengles.OpenGLConfiguration_Package;


