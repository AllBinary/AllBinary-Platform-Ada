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


package body org.allbinary.media.audio.PCClipWavPlayer_Package is

   procedure Initialize_Fields (This : in out PCClipWavPlayer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PCClipWavPlayer'Class; inputStream : InputStream_Access) is
      audioInputStream : AudioInputStream_Access;
      clip : Clip_Access;
   begin
      BasicPlayer_Package.Initialize (This);
      Initialize_Fields (This);
        audioInputStream := AudioInputStream_Package.Create (ByteArrayInputStream_Package.Create (NullUtil_Package.getInstance.NULL_BYTE_ARRAY), NullAudioFormat_Package.NULL_AUDIO_FORMAT, 0);
        clip := NullClip_Package.Create;
        begin
            audioInputStream := AudioSystem_Package.getAudioInputStream (inputStream);
            clip := This.create (audioInputStream);
            if (clip) = (null) then
                This.logUtil.put (To_Unbounded_String ("Clip was null"), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, Java_New_Exception ("Exception"));
                Java_Throw (Java_New_Exception ("RuntimeException"));
            end if;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
        end;
        This.audioInputStream := audioInputStream;
        This.clip := clip;
   end Initialize;

   function Create (inputStream : InputStream_Access) return PCClipWavPlayer_Access is
      This : constant PCClipWavPlayer_Access := new PCClipWavPlayer;
   begin
      Initialize (This.all, inputStream);
      return This;
   end Create;

   procedure close (This : in out PCClipWavPlayer) is
   begin
        MusicThreadPool_Package.getInstance.runTask (ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--     begin
--                  begin
--                      This.close2;
--                  exception
--                      when e : others =>
--                      PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.PROCESS, e);
--                  end;
--     end run;
);
   end close;

   --  throws Exception
   procedure close2 (This : in out PCClipWavPlayer) is
   begin
        This.clip.drain;
        This.clip.flush;
        This.clip.close;
   end close2;

   function getContentType (This : in out PCClipWavPlayer) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getContentType;

   --  throws MediaException
   procedure start (This : in out PCClipWavPlayer) is
   begin
        MusicThreadPool_Package.getInstance.runTask (ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--     begin
--                  begin
--                      This.start2;
--                  exception
--                      when e : others =>
--                      PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.PROCESS, e);
--                  end;
--     end run;
);
   end start;

   --  throws Exception
   procedure start2 (This : in out PCClipWavPlayer) is
   begin
        This.clip.setFramePosition (0);
        This.clip.loop_Id (This.getLoopCount);
        This.clip.start;
        BasicPlayer (This).start;
   end start2;

   --  throws Exception
   function create (This : in out PCClipWavPlayer; audioInputStream : AudioInputStream_Access) return Clip_Access is
      clip : Clip_Access;
   begin
        clip := AudioSystem_Package.getClip;
        clip.addLineListener (This'Unchecked_Access);
        clip.open (audioInputStream);
        return clip;
   end create;

   --  throws MediaException
   procedure stop (This : in out PCClipWavPlayer) is
   begin
        MusicThreadPool_Package.getInstance.runTask (ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--     begin
--                  begin
--                      This.stop2;
--                  exception
--                      when e : others =>
--                      PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.PROCESS, e);
--                  end;
--     end run;
);
   end stop;

   --  throws Exception
   procedure stop2 (This : in out PCClipWavPlayer) is
   begin
        This.clip.stop;
        BasicPlayer (This).stop;
   end stop2;

   function getControl (This : in out PCClipWavPlayer; controlType : Unbounded_String) return Control_Access is
   begin
        return NullControl_Package.Create;
   end getControl;

   function getControls (This : in out PCClipWavPlayer) return Control_Access_Array_Access is
   begin
        return new Control_Access_Array'(0 .. (0) - 1 => null);
   end getControls;

   procedure setVolume (This : in out PCClipWavPlayer; leftVolume : Integer; rightVolume : Integer) is
   begin
        This.setVolumeF (((Float (leftVolume))) / (100.0));
   end setVolume;

   function getVolume (This : in out PCClipWavPlayer) return Float is
      masterGainFloatControl : FloatControl_Access;
   begin
        masterGainFloatControl := FloatControl_Access (This.clip.getControl (FloatControl_Package.Type_Id.MASTER_GAIN));
        return Float ((10.0) ** Natural ((masterGainFloatControl.getValue) / (20.0)));
   end getVolume;

   procedure setVolumeF (This : in out PCClipWavPlayer; volume : Float) is
      masterGainFloatControl : FloatControl_Access;
   begin
        if ((volume) < (0.0)) or else ((volume) > (1.0)) then
            Java_Throw (Java_New_Exception ("IllegalArgumentException", To_Unbounded_String ("Volume: ") & Java_Image (volume)));
        end if;
        masterGainFloatControl := FloatControl_Access (This.clip.getControl (FloatControl_Package.Type_Id.MASTER_GAIN));
        masterGainFloatControl.setValue ((20.0) * (Float (Ada.Numerics.Long_Elementary_Functions.Log10 (volume))));
   end setVolumeF;

   function getDuration (This : in out PCClipWavPlayer) return Long_Long_Integer is
   begin
        return (This.clip.getMicrosecondLength) / (1000);
   end getDuration;

   procedure update (This : in out PCClipWavPlayer; event : LineEvent_Access) is
      size : Integer;
      listener : PlayerListener_Access;
      index : Integer;
   begin
        if event.getType.equals (LineEvent_Package.Type_Id.STOP) then
            size := This.listenersList.size;
            for index in 0 .. (size) - 1 loop
                listener := PlayerListener_Access (This.listenersList.get (size));
                listener.playerUpdate (This'Unchecked_Access, PlayerListener_Package.END_OF_MEDIA, null);
            end loop;
        end if;
   end update;

   procedure getContentType (This : in out PCClipWavPlayer) is
      Java_Result : constant Unbounded_String := PCClipWavPlayer'Class (This).getContentType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getContentType;

   procedure create (This : in out PCClipWavPlayer; audioInputStream : AudioInputStream_Access) is
      Java_Result : constant Clip_Access := PCClipWavPlayer'Class (This).create (audioInputStream);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure getControl (This : in out PCClipWavPlayer; controlType : Unbounded_String) is
      Java_Result : constant Control_Access := PCClipWavPlayer'Class (This).getControl (controlType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getControl;

   procedure getControls (This : in out PCClipWavPlayer) is
      Java_Result : constant Control_Access_Array_Access := PCClipWavPlayer'Class (This).getControls;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getControls;

   procedure getVolume (This : in out PCClipWavPlayer) is
      Java_Result : constant Float := PCClipWavPlayer'Class (This).getVolume;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVolume;

   procedure getDuration (This : in out PCClipWavPlayer) is
      Java_Result : constant Long_Long_Integer := PCClipWavPlayer'Class (This).getDuration;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDuration;

end org.allbinary.media.audio.PCClipWavPlayer_Package;


