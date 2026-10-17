-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.media.audio.NullClip_Package is

   procedure Initialize_Fields (This : in out NullClip'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullClip'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullClip_Access is
      This : constant NullClip_Access := new NullClip;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws LineUnavailableException
   procedure open (This : in out NullClip; format : AudioFormat_Access; data : Short_Short_Integer_Array_Access; offset : Integer; bufferSize : Integer) is
   begin
        null;
   end open;

   --  throws LineUnavailableException, IOException
   procedure open (This : in out NullClip; stream : AudioInputStream_Access) is
   begin
        null;
   end open;

   function getFrameLength (This : in out NullClip) return Integer is
   begin
        return 0;
   end getFrameLength;

   function getMicrosecondLength (This : in out NullClip) return Long_Long_Integer is
   begin
        return 0;
   end getMicrosecondLength;

   procedure setFramePosition (This : in out NullClip; frames : Integer) is
   begin
        null;
   end setFramePosition;

   procedure setMicrosecondPosition (This : in out NullClip; microseconds : Long_Long_Integer) is
   begin
        null;
   end setMicrosecondPosition;

   procedure setLoopPoints (This : in out NullClip; start : Integer; end_Id : Integer) is
   begin
        null;
   end setLoopPoints;

   procedure loop_Id (This : in out NullClip; count : Integer) is
   begin
        null;
   end loop_Id;

   procedure drain (This : in out NullClip) is
   begin
        null;
   end drain;

   procedure flush (This : in out NullClip) is
   begin
        null;
   end flush;

   procedure start (This : in out NullClip) is
   begin
        null;
   end start;

   procedure stop (This : in out NullClip) is
   begin
        null;
   end stop;

   function isRunning (This : in out NullClip) return Boolean is
   begin
        return False;
   end isRunning;

   function isActive (This : in out NullClip) return Boolean is
   begin
        return False;
   end isActive;

   function getFormat (This : in out NullClip) return AudioFormat_Access is
   begin
        return NullAudioFormat_Package.NULL_AUDIO_FORMAT;
   end getFormat;

   function getBufferSize (This : in out NullClip) return Integer is
   begin
        return 0;
   end getBufferSize;

   function available (This : in out NullClip) return Integer is
   begin
        return 0;
   end available;

   function getFramePosition (This : in out NullClip) return Integer is
   begin
        return 0;
   end getFramePosition;

   function getLongFramePosition (This : in out NullClip) return Long_Long_Integer is
   begin
        return 0;
   end getLongFramePosition;

   function getMicrosecondPosition (This : in out NullClip) return Long_Long_Integer is
   begin
        return 0;
   end getMicrosecondPosition;

   function getLevel (This : in out NullClip) return Float is
   begin
        return 0.0;
   end getLevel;

   function getLineInfo (This : in out NullClip) return Info_Access is
   begin
        return Info_Package.Create (This.all'Tag, NullAudioFormat_Package.NULL_AUDIO_FORMAT);
   end getLineInfo;

   --  throws LineUnavailableException
   procedure open (This : in out NullClip) is
   begin
        null;
   end open;

   procedure close (This : in out NullClip) is
   begin
        null;
   end close;

   function isOpen (This : in out NullClip) return Boolean is
   begin
        return False;
   end isOpen;

   function getControls (This : in out NullClip) return Control_Access_Array_Access is
   begin
        return new Control_Access_Array'(0 .. (0) - 1 => null);
   end getControls;

   function isControlSupported (This : in out NullClip; control : Type_Access) return Boolean is
   begin
        return False;
   end isControlSupported;

   function getControl (This : in out NullClip; control : Type_Access) return Control_Access is
   begin
        return NullClip_Package.NULL_CONTROL;
   end getControl;

   procedure addLineListener (This : in out NullClip; listener : LineListener_Access) is
   begin
        null;
   end addLineListener;

   procedure removeLineListener (This : in out NullClip; listener : LineListener_Access) is
   begin
        null;
   end removeLineListener;

   procedure getFrameLength (This : in out NullClip) is
      Java_Result : constant Integer := NullClip'Class (This).getFrameLength;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrameLength;

   procedure getMicrosecondLength (This : in out NullClip) is
      Java_Result : constant Long_Long_Integer := NullClip'Class (This).getMicrosecondLength;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMicrosecondLength;

   procedure isRunning (This : in out NullClip) is
      Java_Result : constant Boolean := NullClip'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

   procedure isActive (This : in out NullClip) is
      Java_Result : constant Boolean := NullClip'Class (This).isActive;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isActive;

   procedure getFormat (This : in out NullClip) is
      Java_Result : constant AudioFormat_Access := NullClip'Class (This).getFormat;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFormat;

   procedure getBufferSize (This : in out NullClip) is
      Java_Result : constant Integer := NullClip'Class (This).getBufferSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBufferSize;

   procedure available (This : in out NullClip) is
      Java_Result : constant Integer := NullClip'Class (This).available;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end available;

   procedure getFramePosition (This : in out NullClip) is
      Java_Result : constant Integer := NullClip'Class (This).getFramePosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFramePosition;

   procedure getLongFramePosition (This : in out NullClip) is
      Java_Result : constant Long_Long_Integer := NullClip'Class (This).getLongFramePosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLongFramePosition;

   procedure getMicrosecondPosition (This : in out NullClip) is
      Java_Result : constant Long_Long_Integer := NullClip'Class (This).getMicrosecondPosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMicrosecondPosition;

   procedure getLevel (This : in out NullClip) is
      Java_Result : constant Float := NullClip'Class (This).getLevel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLevel;

   procedure getLineInfo (This : in out NullClip) is
      Java_Result : constant Info_Access := NullClip'Class (This).getLineInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLineInfo;

   procedure isOpen (This : in out NullClip) is
      Java_Result : constant Boolean := NullClip'Class (This).isOpen;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOpen;

   procedure getControls (This : in out NullClip) is
      Java_Result : constant Control_Access_Array_Access := NullClip'Class (This).getControls;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getControls;

   procedure isControlSupported (This : in out NullClip; control : Type_Access) is
      Java_Result : constant Boolean := NullClip'Class (This).isControlSupported (control);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isControlSupported;

   procedure getControl (This : in out NullClip; control : Type_Access) is
      Java_Result : constant Control_Access := NullClip'Class (This).getControl (control);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getControl;

begin
   null;
   NULL_CONTROL := NullJ2SEControl_Package.Create (BooleanControl_Package.Type_Id.MUTE);

end org.allbinary.media.audio.NullClip_Package;


