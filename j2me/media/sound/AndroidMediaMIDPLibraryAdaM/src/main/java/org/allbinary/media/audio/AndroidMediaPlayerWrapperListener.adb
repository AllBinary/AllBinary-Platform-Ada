--  Generated Code Do Not Modify


with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package is

   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out AndroidMediaPlayerWrapperListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.androidMediaPlayerWrapper := AndroidMediaPlayerWrapper_Package.NULL_ANDROID_MEDIA_PLAYER_WRAPPER;
      This.mOnBufferingUpdateListener := OnBufferingUpdateListener_Access (AndroidMediaPlayerOnBufferingUpdateListener_Package.Create (AndroidMediaPlayerWrapperListener_Access'(This'Unchecked_Access)));
      This.mOnPreparedListener := OnPreparedListener_Access (AndroidMediaPlayerOnPreparedListener_Package.Create (AndroidMediaPlayerWrapperListener_Access'(This'Unchecked_Access)));
      This.mOnErrorListener := OnErrorListener_Access (AndroidMediaPlayerOnErrorListener_Package.Create (AndroidMediaPlayerWrapperListener_Access'(This'Unchecked_Access)));
      This.mOnCompletionListener := OnCompletionListener_Access (AndroidMediaPlayerOnCompletionListener_Package.Create (AndroidMediaPlayerWrapperListener_Access'(This'Unchecked_Access)));
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidMediaPlayerWrapperListener'Class; androidMediaPlayerWrapper_Param : access AndroidMediaPlayerWrapper_Package.AndroidMediaPlayerWrapper'Class) is
      androidMediaPlayerWrapper : constant AndroidMediaPlayerWrapper_Access := AndroidMediaPlayerWrapper_Access (androidMediaPlayerWrapper_Param);
      mediaPlayer : MediaPlayer_Access;
   begin
      Initialize_Fields (This);
        begin
            This.logUtil.putF (This.commonStrings.START, AndroidMediaPlayerWrapperListener_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            This.androidMediaPlayerWrapper := androidMediaPlayerWrapper;
            mediaPlayer := androidMediaPlayerWrapper.getMediaPlayer;
            mediaPlayer.setOnCompletionListener (This.mOnCompletionListener);
            mediaPlayer.setOnBufferingUpdateListener (This.mOnBufferingUpdateListener);
            mediaPlayer.setOnPreparedListener (This.mOnPreparedListener);
            mediaPlayer.setOnErrorListener (This.mOnErrorListener);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidMediaPlayerWrapperListener_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create (androidMediaPlayerWrapper_Param : access AndroidMediaPlayerWrapper_Package.AndroidMediaPlayerWrapper'Class) return AndroidMediaPlayerWrapperListener_Access is
      This : constant AndroidMediaPlayerWrapperListener_Access := new AndroidMediaPlayerWrapperListener;
   begin
      AndroidMediaPlayerWrapperListener_Package.Initialize (This.all, androidMediaPlayerWrapper_Param);
      return This;
   end Create;

end org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;


with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package is

   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
      MediaPlayerOnBufferingUpdateListener_Package.Initialize (This.all);
      return This;
   end Create;

    
   procedure onBufferingUpdate (This : in out MediaPlayerOnBufferingUpdateListener; mediaPlayer_Param : access MediaPlayer_Package.MediaPlayer'Class; i : Integer) is
      mediaPlayer : constant MediaPlayer_Access := MediaPlayer_Access (mediaPlayer_Param);
   begin
            null;
   end onBufferingUpdate;

end org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;


with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package is

   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
      MediaPlayerOnPreparedListener_Package.Initialize (This.all);
      return This;
   end Create;

    
   procedure onPrepared (This : in out MediaPlayerOnPreparedListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class) is
      mp : constant MediaPlayer_Access := MediaPlayer_Access (mp_Param);
   begin
            null;
   end onPrepared;

end org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;


with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.audio.MediaPlayerOnErrorListener_Package is

   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
      MediaPlayerOnErrorListener_Package.Initialize (This.all);
      return This;
   end Create;

    
   function onError (This : in out MediaPlayerOnErrorListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class; what : Integer; extra : Integer) return Boolean is
      mp : constant MediaPlayer_Access := MediaPlayer_Access (mp_Param);
   begin
            return False;
   end onError;

   procedure onError (This : in out MediaPlayerOnErrorListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class; what : Integer; extra : Integer) is
      Java_Result : constant Boolean := MediaPlayerOnErrorListener'Class (This).onError (mp_Param => mp_Param, what => what, extra => extra);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end onError;

end org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;


with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package is

   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
      MediaPlayerOnCompletionListener_Package.Initialize (This.all);
      return This;
   end Create;

    
   procedure onCompletion (This : in out MediaPlayerOnCompletionListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class) is
      mp : constant MediaPlayer_Access := MediaPlayer_Access (mp_Param);
   begin
            null;
   end onCompletion;

end org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;


with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package is

   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out AndroidMediaPlayerOnBufferingUpdateListener'Class) is
   begin
      null;
      This.ON_BUFFERING_UPDATE := To_Unbounded_String ("onBufferingUpdate()");
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out AndroidMediaPlayerOnBufferingUpdateListener'Class; androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) is
      androidMediaPlayerWrapperListener_Var : constant AndroidMediaPlayerWrapperListener_Access := AndroidMediaPlayerWrapperListener_Access (androidMediaPlayerWrapperListener_Var_Param);
   begin
      MediaPlayerOnBufferingUpdateListener_Package.Initialize (This);
      Initialize_Fields (This);
            This.androidMediaPlayerWrapperListener_Var := androidMediaPlayerWrapperListener_Var;
   end Initialize;

   function Create (androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) return AndroidMediaPlayerOnBufferingUpdateListener_Access is
      This : constant AndroidMediaPlayerOnBufferingUpdateListener_Access := new AndroidMediaPlayerOnBufferingUpdateListener;
   begin
      AndroidMediaPlayerOnBufferingUpdateListener_Package.Initialize (This.all, androidMediaPlayerWrapperListener_Var_Param);
      return This;
   end Create;
    
   procedure onBufferingUpdate (This : in out AndroidMediaPlayerOnBufferingUpdateListener; mediaPlayer_Param : access MediaPlayer_Package.MediaPlayer'Class; i : Integer) is
      mediaPlayer : constant MediaPlayer_Access := MediaPlayer_Access (mediaPlayer_Param);
      logUtil : LogUtil_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Update buffer: ")).appendint (i).append (To_Unbounded_String ("%")).toString, AndroidMediaPlayerWrapperListener_Access'(This'Unchecked_Access), This.ON_BUFFERING_UPDATE);
            This.androidMediaPlayerWrapperListener_Var.androidMediaPlayerWrapper.update (PlayerListener_Package.DEVICE_UNAVAILABLE);
   end onBufferingUpdate;

end org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package;


with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package is

   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out AndroidMediaPlayerOnPreparedListener'Class) is
   begin
      null;
      This.ON_PREPARE := To_Unbounded_String ("onPrepare()");
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out AndroidMediaPlayerOnPreparedListener'Class; androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) is
      androidMediaPlayerWrapperListener_Var : constant AndroidMediaPlayerWrapperListener_Access := AndroidMediaPlayerWrapperListener_Access (androidMediaPlayerWrapperListener_Var_Param);
   begin
      MediaPlayerOnPreparedListener_Package.Initialize (This);
      Initialize_Fields (This);
            This.androidMediaPlayerWrapperListener_Var := androidMediaPlayerWrapperListener_Var;
   end Initialize;

   function Create (androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) return AndroidMediaPlayerOnPreparedListener_Access is
      This : constant AndroidMediaPlayerOnPreparedListener_Access := new AndroidMediaPlayerOnPreparedListener;
   begin
      AndroidMediaPlayerOnPreparedListener_Package.Initialize (This.all, androidMediaPlayerWrapperListener_Var_Param);
      return This;
   end Create;
    
   procedure onPrepared (This : in out AndroidMediaPlayerOnPreparedListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class) is
      mp : constant MediaPlayer_Access := MediaPlayer_Access (mp_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.putF (commonStrings.START, AndroidMediaPlayerWrapperListener_Access'(This'Unchecked_Access), This.ON_PREPARE);
            This.androidMediaPlayerWrapperListener_Var.androidMediaPlayerWrapper.update (PlayerListener_Package.DEVICE_AVAILABLE);
   end onPrepared;

end org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package;


with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package is

   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out AndroidMediaPlayerOnErrorListener'Class) is
   begin
      null;
      This.ON_ERROR := To_Unbounded_String ("onError()");
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out AndroidMediaPlayerOnErrorListener'Class; androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) is
      androidMediaPlayerWrapperListener_Var : constant AndroidMediaPlayerWrapperListener_Access := AndroidMediaPlayerWrapperListener_Access (androidMediaPlayerWrapperListener_Var_Param);
   begin
      MediaPlayerOnErrorListener_Package.Initialize (This);
      Initialize_Fields (This);
            This.androidMediaPlayerWrapperListener_Var := androidMediaPlayerWrapperListener_Var;
   end Initialize;

   function Create (androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) return AndroidMediaPlayerOnErrorListener_Access is
      This : constant AndroidMediaPlayerOnErrorListener_Access := new AndroidMediaPlayerOnErrorListener;
   begin
      AndroidMediaPlayerOnErrorListener_Package.Initialize (This.all, androidMediaPlayerWrapperListener_Var_Param);
      return This;
   end Create;
    
   function onError (This : in out AndroidMediaPlayerOnErrorListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class; what : Integer; extra : Integer) return Boolean is
      mp : constant MediaPlayer_Access := MediaPlayer_Access (mp_Param);
      logUtil : LogUtil_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (To_Unbounded_String ("What: ")).appendint (what).append (To_Unbounded_String (" Extra: ")).appendint (extra).toString, AndroidMediaPlayerWrapperListener_Access'(This'Unchecked_Access), This.ON_ERROR);
            This.androidMediaPlayerWrapperListener_Var.androidMediaPlayerWrapper.update (PlayerListener_Package.ERROR);
            return True;
   end onError;

   procedure onError (This : in out AndroidMediaPlayerOnErrorListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class; what : Integer; extra : Integer) is
      Java_Result : constant Boolean := AndroidMediaPlayerOnErrorListener'Class (This).onError (mp_Param => mp_Param, what => what, extra => extra);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end onError;

end org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package;


with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package is

   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out AndroidMediaPlayerOnCompletionListener'Class) is
   begin
      null;
      This.ON_COMPLETE := To_Unbounded_String ("onComplete()");
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out AndroidMediaPlayerOnCompletionListener'Class; androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) is
      androidMediaPlayerWrapperListener_Var : constant AndroidMediaPlayerWrapperListener_Access := AndroidMediaPlayerWrapperListener_Access (androidMediaPlayerWrapperListener_Var_Param);
   begin
      MediaPlayerOnCompletionListener_Package.Initialize (This);
      Initialize_Fields (This);
            This.androidMediaPlayerWrapperListener_Var := androidMediaPlayerWrapperListener_Var;
   end Initialize;

   function Create (androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) return AndroidMediaPlayerOnCompletionListener_Access is
      This : constant AndroidMediaPlayerOnCompletionListener_Access := new AndroidMediaPlayerOnCompletionListener;
   begin
      AndroidMediaPlayerOnCompletionListener_Package.Initialize (This.all, androidMediaPlayerWrapperListener_Var_Param);
      return This;
   end Create;
    
   procedure onCompletion (This : in out AndroidMediaPlayerOnCompletionListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class) is
      mp : constant MediaPlayer_Access := MediaPlayer_Access (mp_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.putF (commonStrings.START, AndroidMediaPlayerWrapperListener_Access'(This'Unchecked_Access), This.ON_COMPLETE);
            This.androidMediaPlayerWrapperListener_Var.androidMediaPlayerWrapper.update (PlayerListener_Package.END_OF_MEDIA);
   end onCompletion;

end org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package;


