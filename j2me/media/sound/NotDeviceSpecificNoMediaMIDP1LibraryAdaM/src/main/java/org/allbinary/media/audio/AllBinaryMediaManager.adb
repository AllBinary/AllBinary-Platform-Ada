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

   function createPlayerFromInputStream (stream : InputStream_Access; type_Id : Unbounded_String) return Player_Access is
      logUtil : LogUtil_Access;
      commonString : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonString := CommonStrings_Package.getInstance;
        logUtil.putF (commonString.START, AllBinaryMediaManager_Package.THIS_Id, To_Unbounded_String ("creatPlayer(InputStream)"));
        return Player_Access (NoPlayer_Package.NO_PLAYER);
   end createPlayerFromInputStream;

   function createPlayer (locator : Unbounded_String) return Player_Access is
      logUtil : LogUtil_Access;
      commonString : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonString := CommonStrings_Package.getInstance;
        logUtil.putF (commonString.START, AllBinaryMediaManager_Package.THIS_Id, To_Unbounded_String ("creatPlayer(locator)"));
        return Player_Access (NoPlayer_Package.NO_PLAYER);
   end createPlayer;

   procedure playTone (frequency : Integer; time : Integer; volume : Integer) is
   begin
        null;
   end playTone;

   function getSupportedContentTypes (protocol : Unbounded_String) return Unbounded_String_Array_Access is
   begin
        return StringUtil_Package.getInstance.getArrayInstance;
   end getSupportedContentTypes;

   function getSupportedProtocols (content_type : Unbounded_String) return Unbounded_String_Array_Access is
   begin
        return StringUtil_Package.getInstance.getArrayInstance;
   end getSupportedProtocols;

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

   procedure createPlayerFromInputStream (stream : InputStream_Access; type_Id : Unbounded_String) is
      Java_Result : constant Player_Access := createPlayerFromInputStream (stream, type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPlayerFromInputStream;

   procedure createPlayer (locator : Unbounded_String) is
      Java_Result : constant Player_Access := createPlayer (locator);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPlayer;

   procedure getSupportedContentTypes (protocol : Unbounded_String) is
      Java_Result : constant Unbounded_String_Array_Access := getSupportedContentTypes (protocol);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSupportedContentTypes;

   procedure getSupportedProtocols (content_type : Unbounded_String) is
      Java_Result : constant Unbounded_String_Array_Access := getSupportedProtocols (content_type);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSupportedProtocols;

begin
   null;
   THIS_Id := To_Unbounded_String ("AllBinaryMediaManagerNoMediaMIDP1");

end org.allbinary.media.audio.AllBinaryMediaManager_Package;


