--  Generated Code Do Not Modify


package body org.allbinary.configuration.ApplicationConfiguration_Package is

   procedure Initialize_Fields (This : in out ApplicationConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.fullscreen := True;
      This.showTitleBar := False;
      This.progressBarView := False;
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
            This.read;
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
   begin
        This.setFullscreen (True);
        This.setProgressBarView (False);
        This.setShowTitleBar (False);
        This.logUtil.putF (To_Unbounded_String ("Read Configuration: ") & This.toString, ApplicationConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("read"));
   end read;

   --  throws Exception
   procedure write (This : in out ApplicationConfiguration) is
   begin
        null;
   end write;

   --  throws Exception
   procedure update (This : in out ApplicationConfiguration; gameFeature_Param : access Feature_Package.Feature'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
      features : Features_Access;
   begin
        if (gameFeature) = (MainFeatureFactory_Package.getInstance.FULL_SCREEN) then
            features := Features_Package.getInstance;
            if features.isFeature (gameFeature) then
                if not (This.isFullscreen) then
                    This.setFullscreen (True);
                    This.write;
                end if;
            else
                if This.isFullscreen then
                    This.setFullscreen (False);
                    This.write;
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
        stringBuffer.appendboolean (This.isFullscreen);
        stringBuffer.append (To_Unbounded_String (" isProgressBarView: "));
        stringBuffer.appendboolean (This.isProgressBarView);
        stringBuffer.append (To_Unbounded_String (" isShowTitleBar: "));
        stringBuffer.appendboolean (This.isShowTitleBar);
        return stringBuffer.toString;
   end toString;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.configuration.ApplicationConfiguration_Package;


