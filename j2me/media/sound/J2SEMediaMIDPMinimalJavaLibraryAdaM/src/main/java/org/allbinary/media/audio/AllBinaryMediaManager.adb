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


package body org.allbinary.media.audio.AllBinaryMediaManager_Package is

   procedure Initialize_Fields (This : in out AllBinaryMediaManager'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryMediaManager'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinaryMediaManager_Access is
      This : constant AllBinaryMediaManager_Access := new AllBinaryMediaManager;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function isMuted return Boolean is
   begin
        return False;
   end isMuted;

   procedure setMuted (aMuted : Boolean) is
   begin
        null;
   end setMuted;

   function update return Boolean is
   begin
        return True;
   end update;

   --  throws Exception
   procedure init (soundsFactoryInterface : SoundsFactoryInterface_Access) is
      logUtil : LogUtil_Access;
      commonString : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonString := CommonStrings_Package.getInstance;
        logUtil.putF (commonString.START, AllBinaryMediaManager_Package.THIS_Id, commonString.INIT);
        ProgressCanvasFactory_Package.getInstance.addNormalPortion (50, To_Unbounded_String ("Media Manager"));
        Sounds_Package.Create (soundsFactoryInterface).init;
   end init;

   --  throws Exception
   procedure shutdown (soundsFactoryInterface : SoundsFactoryInterface_Access) is
   begin
        Sounds_Package.Create (soundsFactoryInterface).stopAll;
        Sounds_Package.Create (soundsFactoryInterface).closeAll;
        TsUtil_Package.getInstance.gc;
   end shutdown;

   --  throws Exception
   function createPlayer (resource : Unbounded_String) return Player_Access is
      inputStream : InputStream_Access;
      bufferedInputStream : BufferedInputStream_Access;
      logUtil : LogUtil_Access;
      commonString : CommonStrings_Access;
   begin
        if resource.startsWith (Manager_Package.TONE_DEVICE_LOCATOR) then
            return AllBinaryMediaManager_Package.createPlayerFromInputStream (ByteArrayInputStream_Package.Create (NullUtil_Package.getInstance.NULL_BYTE_ARRAY), AudioContentTypeDataFactory_Package.getInstance.MIME_AUDIO_TONE.getName);
        elsif Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.SOUND) then
            begin
                inputStream := ResourceUtil_Package.getInstance.getResourceAsStream (resource);
                bufferedInputStream := BufferedInputStream_Package.Create (inputStream);
                return PCClipWavPlayer_Package.Create (bufferedInputStream);
            exception
                when e : others =>
                logUtil := LogUtil_Package.getInstance;
                commonString := CommonStrings_Package.getInstance;
                logUtil.put (commonString.EXCEPTION_Id, AllBinaryMediaManager_Package.THIS_Id, CREATE_PLAYER, e);
                return NoPlayer_Package.NO_PLAYER;
            end;
        else
            return NoPlayer_Package.NO_PLAYER;
        end if;
   end createPlayer;

   --  throws IOException, MediaException
   function createPlayerFromInputStream (stream : InputStream_Access; type_Id : Unbounded_String) return Player_Access is
   begin
        Java_Throw (Java_New_Exception ("MediaException", To_Unbounded_String ("No Impl")));
   end createPlayerFromInputStream;

   --  throws MediaException
   procedure playTone (frequency : Integer; time : Integer; volume : Integer) is
   begin
        Java_Throw (Java_New_Exception ("MediaException", To_Unbounded_String ("No Impl")));
   end playTone;

   function isInitialized return Boolean is
   begin
        return True;
   end isInitialized;

   procedure isMuted is
      Java_Result : constant Boolean := isMuted;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMuted;

   procedure update is
      Java_Result : constant Boolean := update;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end update;

   procedure createPlayer (resource : Unbounded_String) is
      Java_Result : constant Player_Access := createPlayer (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPlayer;

   procedure createPlayerFromInputStream (stream : InputStream_Access; type_Id : Unbounded_String) is
      Java_Result : constant Player_Access := createPlayerFromInputStream (stream, type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPlayerFromInputStream;

   procedure isInitialized is
      Java_Result : constant Boolean := isInitialized;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInitialized;

begin
   null;
   THIS_Id := To_Unbounded_String ("AllBinaryMediaManagerPC");
   CREATE_PLAYER := To_Unbounded_String ("createPlayer");

end org.allbinary.media.audio.AllBinaryMediaManager_Package;


