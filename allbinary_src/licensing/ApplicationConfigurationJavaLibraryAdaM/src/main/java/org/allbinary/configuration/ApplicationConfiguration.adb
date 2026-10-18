--  Generated Code Do Not Modify


package body org.allbinary.configuration.ApplicationConfiguration_Package is

   procedure Initialize_Fields (This : in out ApplicationConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.fullscreen := True;
      This.showTitleBar := False;
      This.progressBarView := False;
      This.FILE := To_Unbounded_String ("ReloadConfiguration.dat");
   end Initialize_Fields;


   function getInstance return ApplicationConfiguration_Access is
   begin
        if (ApplicationConfiguration_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            ApplicationConfiguration_Package.instance := ApplicationConfiguration_Package.Create;
        end if;
        return ApplicationConfiguration_Access (ApplicationConfiguration_Package.instance);
   end getInstance;

   procedure Initialize (This : in out ApplicationConfiguration'Class) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        begin
            if FileFactory_Package.getInstance.isFile (This.FILE) then
                ApplicationConfiguration'Class (This).read;
            else
                ApplicationConfiguration'Class (This).write;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, ApplicationConfiguration_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create return ApplicationConfiguration_Access is
      This : constant ApplicationConfiguration_Access := new ApplicationConfiguration;
   begin
      ApplicationConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure read (This : in out ApplicationConfiguration) is
      fileInputStreamFactory : FileStreamFactory_Access;
      fileInputStream : InputStream_Access;
      dataInputStream : AbDataInputStream_Access;
      fullScreen : Integer;
      progressBarView : Integer;
      showTitleBar : Integer;
   begin
        fileInputStreamFactory := FileStreamFactory_Package.getInstance;
        fileInputStream := fileInputStreamFactory.getFileInputStreamInstance (StringUtil_Package.getInstance.EMPTY_STRING, This.FILE);
        dataInputStream := AbDataInputStream_Package.Create (fileInputStream);
        fullScreen := dataInputStream.readInt;
        if (fullScreen) = (0) then
            ApplicationConfiguration'Class (This).setFullscreen (False);
        elsif (fullScreen) = (1) then
            ApplicationConfiguration'Class (This).setFullscreen (True);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Invalid FullScreen ActivityConfiguration")));
        end if;
        progressBarView := dataInputStream.readInt;
        if (progressBarView) = (0) then
            ApplicationConfiguration'Class (This).setProgressBarView (False);
        elsif (progressBarView) = (1) then
            ApplicationConfiguration'Class (This).setProgressBarView (True);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Invalid ProgressBarView ActivityConfiguration")));
        end if;
        showTitleBar := dataInputStream.readInt;
        if (showTitleBar) = (0) then
            ApplicationConfiguration'Class (This).setShowTitleBar (False);
        elsif (showTitleBar) = (1) then
            ApplicationConfiguration'Class (This).setShowTitleBar (True);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Invalid ShowTitleBar ActivityConfiguration")));
        end if;
        This.logUtil.putF (To_Unbounded_String ("Read Configuration: ") & ApplicationConfiguration'Class (This).toString, ApplicationConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("read"));
   end read;

   --  throws Exception
   procedure write (This : in out ApplicationConfiguration) is
      closeable : Closeable_Access;
      fileInputStreamFactory : FileStreamFactory_Access;
      fileOutputStream : OutputStream_Access;
      dataOutputStream : AbDataOutputStream_Access;
   begin
        closeable := NullCloseable_Package.NULL_CLOSEABLE;
        begin
            This.logUtil.putF (To_Unbounded_String ("Write Configuration: ") & ApplicationConfiguration'Class (This).toString, ApplicationConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("write"));
            fileInputStreamFactory := FileStreamFactory_Package.getInstance;
            fileOutputStream := fileInputStreamFactory.getFileOutputStreamInstance (StringUtil_Package.getInstance.EMPTY_STRING, This.FILE);
            dataOutputStream := AbDataOutputStream_Package.Create (fileOutputStream);
            closeable := dataOutputStream;
            if ApplicationConfiguration'Class (This).isFullscreen then
                dataOutputStream.writeInt (1);
            else
                dataOutputStream.writeInt (0);
            end if;
            if ApplicationConfiguration'Class (This).isProgressBarView then
                dataOutputStream.writeInt (1);
            else
                dataOutputStream.writeInt (0);
            end if;
            if ApplicationConfiguration'Class (This).isShowTitleBar then
                dataOutputStream.writeInt (1);
            else
                dataOutputStream.writeInt (0);
            end if;
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
   procedure update (This : in out ApplicationConfiguration; gameFeature_Param : access Feature_Package.Feature'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
      features : Features_Access;
   begin
        if (gameFeature) = (MainFeatureFactory_Package.getInstance.FULL_SCREEN) then
            features := Features_Package.getInstance;
            if features.isFeature (gameFeature) then
                if not (ApplicationConfiguration'Class (This).isFullscreen) then
                    ApplicationConfiguration'Class (This).setFullscreen (True);
                    ApplicationConfiguration'Class (This).write;
                end if;
            else
                if ApplicationConfiguration'Class (This).isFullscreen then
                    ApplicationConfiguration'Class (This).setFullscreen (False);
                    ApplicationConfiguration'Class (This).write;
                end if;
            end if;
        end if;
   end update;

   procedure setFullscreen (This : in out ApplicationConfiguration; fullscreen : Boolean) is
   begin
        This.fullscreen := fullscreen;
   end setFullscreen;

   function isFullscreen (This : in out ApplicationConfiguration) return Boolean is
   begin
        return This.fullscreen;
   end isFullscreen;

   procedure setShowTitleBar (This : in out ApplicationConfiguration; showTitleBar : Boolean) is
   begin
        This.showTitleBar := showTitleBar;
   end setShowTitleBar;

   function isShowTitleBar (This : in out ApplicationConfiguration) return Boolean is
   begin
        return This.showTitleBar;
   end isShowTitleBar;

   procedure setProgressBarView (This : in out ApplicationConfiguration; progressBarView : Boolean) is
   begin
        This.progressBarView := progressBarView;
   end setProgressBarView;

   function isProgressBarView (This : in out ApplicationConfiguration) return Boolean is
   begin
        return This.progressBarView;
   end isProgressBarView;

   function toString (This : in out ApplicationConfiguration) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("isFullscreen: "));
        stringBuffer.appendboolean (ApplicationConfiguration'Class (This).isFullscreen);
        stringBuffer.append (To_Unbounded_String (" isProgressBarView: "));
        stringBuffer.appendboolean (ApplicationConfiguration'Class (This).isProgressBarView);
        stringBuffer.append (To_Unbounded_String (" isShowTitleBar: "));
        stringBuffer.appendboolean (ApplicationConfiguration'Class (This).isShowTitleBar);
        return stringBuffer.toString;
   end toString;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.configuration.ApplicationConfiguration_Package;


