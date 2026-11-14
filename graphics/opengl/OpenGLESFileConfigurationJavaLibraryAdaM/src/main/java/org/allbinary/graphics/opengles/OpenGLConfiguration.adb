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


with java.io.Closeable_Package; use java.io.Closeable_Package;
with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with java.io.OutputStream_Package; use java.io.OutputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.FileStreamFactory_Package; use org.allbinary.logic.io.FileStreamFactory_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.FileFactory_Package; use org.allbinary.logic.io.file.FileFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Feature_Package_References;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.io.NullCloseable_Package; use org.allbinary.logic.io.NullCloseable_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package; use org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with org.allbinary.util.EnumerationUtil_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.feature.GameFeatureUtil_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.graphics.opengles.OpenGLConfiguration_Package is

   package Closeable_Package renames Standard.java.io.Closeable_Package;
   package DataInputStream_Package renames Standard.java.io.DataInputStream_Package;
   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package OutputStream_Package renames Standard.java.io.OutputStream_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package FileStreamFactory_Package renames Standard.org.allbinary.logic.io.FileStreamFactory_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package FileFactory_Package renames Standard.org.allbinary.logic.io.file.FileFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package ChangedGameFeatureListener_Package renames Standard.org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package NullCloseable_Package renames Standard.org.allbinary.logic.io.NullCloseable_Package;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype Feature_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access;
   function "=" (Left, Right : Feature_Access) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array;
   function "=" (Left, Right : Feature_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access;
   function "=" (Left, Right : Feature_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array;
   function "=" (Left, Right : Feature_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Feature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype OpenGLFeature_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access;
   function "=" (Left, Right : OpenGLFeature_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References."=";
   subtype OpenGLFeature_Access_Array is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array;
   function "=" (Left, Right : OpenGLFeature_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References."=";
   subtype OpenGLFeature_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access;
   function "=" (Left, Right : OpenGLFeature_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References."=";
   subtype OpenGLFeature_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLFeature_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References."=";
   subtype OpenGLFeature_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLFeature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeature_Package_References."=";
   procedure Initialize_Fields (This : in out OpenGLConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.FILE := To_Unbounded_String ("OpenGLConfiguration.dat");
      This.commonStrings := CommonStrings_Package.getInstance;
      This.opengl := False;
      This.type_Id := OpenGLFeature_Access (OpenGLFeatureFactory_Package.getInstance.OPENGL_AS_GAME_THREAD);
      This.imageColor := OpenGLFeature_Access (OpenGLFeatureFactory_Package.getInstance.IMAGE_COLOR_DEPTH_4444);
      This.color := OpenGLFeature_Access (OpenGLFeatureFactory_Package.getInstance.IMAGE_COLOR_DEPTH_4444);
      This.versionSelector := OpenGLFeature_Access (OpenGLFeatureFactory_Package.getInstance.OPENGL_AUTO_SELECT);
   end Initialize_Fields;


   function getInstance return OpenGLConfiguration_Access is
   begin
        if (Java_Object_Access (OpenGLConfiguration_Package.instance)) = (Java_Object_Access (NullUtil_Package.getInstance.NULL_OBJECT)) then
            OpenGLConfiguration_Package.instance := Java_Object_Access (OpenGLConfiguration_Package.Create);
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
        fileInputStream := InputStream_Access (fileInputStreamFactory.getFileInputStreamInstance (StringUtil_Package.getInstance.EMPTY_STRING, This.FILE));
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
        if (Java_Compare_To (version, openGLFeatureFactory.OPENGL_AUTO_SELECT.getName)) = (0) then
            OpenGLConfiguration'Class (This).setVersionSelector (openGLFeatureFactory.OPENGL_AUTO_SELECT);
        elsif (Java_Compare_To (version, openGLFeatureFactory.OPENGL_MINIMUM.getName)) = (0) then
            OpenGLConfiguration'Class (This).setVersionSelector (openGLFeatureFactory.OPENGL_MINIMUM);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("OpenGLConfiguration: Error reading version selector: ") & version));
        end if;
        type_Id := dataInputStream.readUTF;
        if (Java_Compare_To (type_Id, openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName)) = (0) then
            OpenGLConfiguration'Class (This).setType (openGLFeatureFactory.OPENGL_AS_GAME_THREAD);
        elsif (Java_Compare_To (type_Id, openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName)) = (0) then
            OpenGLConfiguration'Class (This).setType (openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("OpenGLConfiguration: Error reading image color")));
        end if;
        imageColor := dataInputStream.readUTF;
        if (Java_Compare_To (imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName)) = (0) then
            OpenGLConfiguration'Class (This).setImageColor (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
        elsif (Java_Compare_To (imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName)) = (0) then
            OpenGLConfiguration'Class (This).setImageColor (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
        elsif (Java_Compare_To (imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName)) = (0) then
            OpenGLConfiguration'Class (This).setImageColor (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("OpenGLConfiguration: Error reading image color: ") & imageColor));
        end if;
        color := dataInputStream.readUTF;
        if (Java_Compare_To (color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444.getName)) = (0) then
            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444);
        elsif (Java_Compare_To (color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_565.getName)) = (0) then
            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_565);
        elsif (Java_Compare_To (color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888.getName)) = (0) then
            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("OpenGLConfiguration: Error reading color: ") & color));
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
        closeable := Closeable_Access (NullCloseable_Package.NULL_CLOSEABLE);
        begin
            PreLogUtil_Package.put (To_Unbounded_String ("Write Configuration: ") & OpenGLConfiguration'Class (This).toString, OpenGLConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("write"));
            fileInputStreamFactory := FileStreamFactory_Package.getInstance;
            fileOutputStream := OutputStream_Access (fileInputStreamFactory.getFileOutputStreamInstance (StringUtil_Package.getInstance.EMPTY_STRING, This.FILE));
            dataOutputStream := AbDataOutputStream_Package.Create (fileOutputStream);
            closeable := Closeable_Access (dataOutputStream);
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
        if (Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.OPENGL)) then
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
        if ((Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS))) or else ((Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.OPENGL_AS_GAME_THREAD))) then
            if features.isFeature (gameFeature) then
                if (Java_Object_Access (gameFeature)) /= (Java_Object_Access (OpenGLConfiguration'Class (This).getType)) then
                    OpenGLConfiguration'Class (This).setType (OpenGLFeature_Access (gameFeature));
                    modified := True;
                end if;
            end if;
        end if;
        if (((Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444))) or else ((Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.IMAGE_COLOR_DEPTH_565)))) or else ((Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888))) then
            if features.isFeature (gameFeature) then
                if (Java_Object_Access (OpenGLConfiguration'Class (This).getImageColor)) /= (Java_Object_Access (gameFeature)) then
                    OpenGLConfiguration'Class (This).setImageColor (OpenGLFeature_Access (gameFeature));
                    if colorLocked then
                        if (Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)) then
                            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444);
                        elsif (Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.IMAGE_COLOR_DEPTH_565)) then
                            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_565);
                        elsif (Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888)) then
                            OpenGLConfiguration'Class (This).setColor (openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888);
                        end if;
                    end if;
                    modified := True;
                end if;
            end if;
        end if;
        if (((Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444))) or else ((Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.OPENGL_COLOR_DEPTH_565)))) or else ((Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888))) then
            if features.isFeature (gameFeature) then
                if (Java_Object_Access (OpenGLConfiguration'Class (This).getColor)) /= (Java_Object_Access (gameFeature)) then
                    OpenGLConfiguration'Class (This).setColor (OpenGLFeature_Access (gameFeature));
                    modified := True;
                end if;
            end if;
        end if;
        if ((Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.OPENGL_AUTO_SELECT))) or else ((Java_Object_Access (gameFeature)) = (Java_Object_Access (openGLFeatureFactory.OPENGL_MINIMUM))) then
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


