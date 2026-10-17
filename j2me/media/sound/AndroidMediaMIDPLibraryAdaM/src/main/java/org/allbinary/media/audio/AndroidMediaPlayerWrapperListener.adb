--  Generated Code Do Not Modify


package body org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package is

   procedure Initialize_Fields (This : in out AndroidMediaPlayerWrapperListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.androidMediaPlayerWrapper := AndroidMediaPlayerWrapper_Package.NULL_ANDROID_MEDIA_PLAYER_WRAPPER;
      This.mOnBufferingUpdateListener := AndroidMediaPlayerOnBufferingUpdateListener_Package.Create (This'Unchecked_Access);
      This.mOnPreparedListener := AndroidMediaPlayerOnPreparedListener_Package.Create (This'Unchecked_Access);
      This.mOnErrorListener := AndroidMediaPlayerOnErrorListener_Package.Create (This'Unchecked_Access);
      This.mOnCompletionListener := AndroidMediaPlayerOnCompletionListener_Package.Create (This'Unchecked_Access);
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidMediaPlayerWrapperListener'Class; androidMediaPlayerWrapper : AndroidMediaPlayerWrapper_Access) is
      mediaPlayer : MediaPlayer_Access;
   begin
      Initialize_Fields (This);
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
            This.androidMediaPlayerWrapper := androidMediaPlayerWrapper;
            mediaPlayer := androidMediaPlayerWrapper.getMediaPlayer;
            mediaPlayer.setOnCompletionListener (This.mOnCompletionListener);
            mediaPlayer.setOnBufferingUpdateListener (This.mOnBufferingUpdateListener);
            mediaPlayer.setOnPreparedListener (This.mOnPreparedListener);
            mediaPlayer.setOnErrorListener (This.mOnErrorListener);
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
        end;
   end Initialize;

   function Create (androidMediaPlayerWrapper : AndroidMediaPlayerWrapper_Access) return AndroidMediaPlayerWrapperListener_Access is
      This : constant AndroidMediaPlayerWrapperListener_Access := new AndroidMediaPlayerWrapperListener;
   begin
      Initialize (This.all, androidMediaPlayerWrapper);
      return This;
   end Create;

end org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;


package body org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package is

   procedure Initialize_Fields (This : in out MediaPlayerOnBufferingUpdateListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MediaPlayerOnBufferingUpdateListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MediaPlayerOnBufferingUpdateListener_Access is
      This : constant MediaPlayerOnBufferingUpdateListener_Access := new MediaPlayerOnBufferingUpdateListener;
   begin
      Initialize (This.all);
      return This;
   end Create;

    
   procedure onBufferingUpdate (This : in out MediaPlayerOnBufferingUpdateListener; mediaPlayer : MediaPlayer_Access; i : Integer) is
   begin
            null;
   end onBufferingUpdate;

end org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;


package body org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package is

   procedure Initialize_Fields (This : in out MediaPlayerOnPreparedListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MediaPlayerOnPreparedListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MediaPlayerOnPreparedListener_Access is
      This : constant MediaPlayerOnPreparedListener_Access := new MediaPlayerOnPreparedListener;
   begin
      Initialize (This.all);
      return This;
   end Create;

    
   procedure onPrepared (This : in out MediaPlayerOnPreparedListener; mp : MediaPlayer_Access) is
   begin
            null;
   end onPrepared;

end org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;


package body org.allbinary.media.audio.MediaPlayerOnErrorListener_Package is

   procedure Initialize_Fields (This : in out MediaPlayerOnErrorListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MediaPlayerOnErrorListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MediaPlayerOnErrorListener_Access is
      This : constant MediaPlayerOnErrorListener_Access := new MediaPlayerOnErrorListener;
   begin
      Initialize (This.all);
      return This;
   end Create;

    
   function onError (This : in out MediaPlayerOnErrorListener; mp : MediaPlayer_Access; what : Integer; extra : Integer) return Boolean is
   begin
            return False;
   end onError;

   procedure onError (This : in out MediaPlayerOnErrorListener; mp : MediaPlayer_Access; what : Integer; extra : Integer) is
      Java_Result : constant Boolean := MediaPlayerOnErrorListener'Class (This).onError (mp, what, extra);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end onError;

end org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;


package body org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package is

   procedure Initialize_Fields (This : in out MediaPlayerOnCompletionListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MediaPlayerOnCompletionListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MediaPlayerOnCompletionListener_Access is
      This : constant MediaPlayerOnCompletionListener_Access := new MediaPlayerOnCompletionListener;
   begin
      Initialize (This.all);
      return This;
   end Create;

    
   procedure onCompletion (This : in out MediaPlayerOnCompletionListener; mp : MediaPlayer_Access) is
   begin
            null;
   end onCompletion;

end org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;


package body org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package is

   procedure Initialize_Fields (This : in out AndroidMediaPlayerOnBufferingUpdateListener'Class) is
   begin
      null;
      This.ON_BUFFERING_UPDATE := To_Unbounded_String ("onBufferingUpdate()");
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out AndroidMediaPlayerOnBufferingUpdateListener'Class; androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) is
   begin
      MediaPlayerOnBufferingUpdateListener_Package.Initialize (This);
      Initialize_Fields (This);
            This.androidMediaPlayerWrapperListener := androidMediaPlayerWrapperListener;
   end Initialize;

   function Create (androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) return AndroidMediaPlayerOnBufferingUpdateListener_Access is
      This : constant AndroidMediaPlayerOnBufferingUpdateListener_Access := new AndroidMediaPlayerOnBufferingUpdateListener;
   begin
      Initialize (This.all, androidMediaPlayerWrapperListener);
      return This;
   end Create;
    
   procedure onBufferingUpdate (This : in out AndroidMediaPlayerOnBufferingUpdateListener; mediaPlayer : MediaPlayer_Access; i : Integer) is
      logUtil : LogUtil_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Update buffer: ")).appendint (i).append (To_Unbounded_String ("%")).toString, This'Unchecked_Access, This.ON_BUFFERING_UPDATE);
            This.androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update (PlayerListener_Package.DEVICE_UNAVAILABLE);
   end onBufferingUpdate;

end org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package;


package body org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package is

   procedure Initialize_Fields (This : in out AndroidMediaPlayerOnPreparedListener'Class) is
   begin
      null;
      This.ON_PREPARE := To_Unbounded_String ("onPrepare()");
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out AndroidMediaPlayerOnPreparedListener'Class; androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) is
   begin
      MediaPlayerOnPreparedListener_Package.Initialize (This);
      Initialize_Fields (This);
            This.androidMediaPlayerWrapperListener := androidMediaPlayerWrapperListener;
   end Initialize;

   function Create (androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) return AndroidMediaPlayerOnPreparedListener_Access is
      This : constant AndroidMediaPlayerOnPreparedListener_Access := new AndroidMediaPlayerOnPreparedListener;
   begin
      Initialize (This.all, androidMediaPlayerWrapperListener);
      return This;
   end Create;
    
   procedure onPrepared (This : in out AndroidMediaPlayerOnPreparedListener; mp : MediaPlayer_Access) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.putF (commonStrings.START, This'Unchecked_Access, This.ON_PREPARE);
            This.androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update (PlayerListener_Package.DEVICE_AVAILABLE);
   end onPrepared;

end org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package;


package body org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package is

   procedure Initialize_Fields (This : in out AndroidMediaPlayerOnErrorListener'Class) is
   begin
      null;
      This.ON_ERROR := To_Unbounded_String ("onError()");
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out AndroidMediaPlayerOnErrorListener'Class; androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) is
   begin
      MediaPlayerOnErrorListener_Package.Initialize (This);
      Initialize_Fields (This);
            This.androidMediaPlayerWrapperListener := androidMediaPlayerWrapperListener;
   end Initialize;

   function Create (androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) return AndroidMediaPlayerOnErrorListener_Access is
      This : constant AndroidMediaPlayerOnErrorListener_Access := new AndroidMediaPlayerOnErrorListener;
   begin
      Initialize (This.all, androidMediaPlayerWrapperListener);
      return This;
   end Create;
    
   function onError (This : in out AndroidMediaPlayerOnErrorListener; mp : MediaPlayer_Access; what : Integer; extra : Integer) return Boolean is
      logUtil : LogUtil_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (To_Unbounded_String ("What: ")).appendint (what).append (To_Unbounded_String (" Extra: ")).appendint (extra).toString, This'Unchecked_Access, This.ON_ERROR);
            This.androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update (PlayerListener_Package.ERROR);
            return True;
   end onError;

   procedure onError (This : in out AndroidMediaPlayerOnErrorListener; mp : MediaPlayer_Access; what : Integer; extra : Integer) is
      Java_Result : constant Boolean := AndroidMediaPlayerOnErrorListener'Class (This).onError (mp, what, extra);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end onError;

end org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package;


package body org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package is

   procedure Initialize_Fields (This : in out AndroidMediaPlayerOnCompletionListener'Class) is
   begin
      null;
      This.ON_COMPLETE := To_Unbounded_String ("onComplete()");
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out AndroidMediaPlayerOnCompletionListener'Class; androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) is
   begin
      MediaPlayerOnCompletionListener_Package.Initialize (This);
      Initialize_Fields (This);
            This.androidMediaPlayerWrapperListener := androidMediaPlayerWrapperListener;
   end Initialize;

   function Create (androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) return AndroidMediaPlayerOnCompletionListener_Access is
      This : constant AndroidMediaPlayerOnCompletionListener_Access := new AndroidMediaPlayerOnCompletionListener;
   begin
      Initialize (This.all, androidMediaPlayerWrapperListener);
      return This;
   end Create;
    
   procedure onCompletion (This : in out AndroidMediaPlayerOnCompletionListener; mp : MediaPlayer_Access) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.putF (commonStrings.START, This'Unchecked_Access, This.ON_COMPLETE);
            This.androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update (PlayerListener_Package.END_OF_MEDIA);
   end onCompletion;

end org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package;


