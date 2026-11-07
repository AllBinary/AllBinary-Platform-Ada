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


with org.allbinary.media.audio.PlayerComposite_Package; use org.allbinary.media.audio.PlayerComposite_Package;
with org.allbinary.media.audio.AllBinaryMediaManager_Package; use org.allbinary.media.audio.AllBinaryMediaManager_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.media.Control_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with javax.microedition.media.Player_Package;
with org.allbinary.media.audio.PlayerComposite_Package;
with javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.audio.CompositeSound_Package is

   procedure Initialize_Fields (This : in out CompositeSound'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CompositeSound'Class; resource : Unbounded_String) is
   begin
        Sound_Package.Initialize (This, resource);
   end Initialize;

   function Create (resource : Unbounded_String) return CompositeSound_Access is
      This : constant CompositeSound_Access := new CompositeSound;
   begin
      CompositeSound_Package.Initialize (This.all, resource);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out CompositeSound) is
   begin
        CompositeSound'Class (This).setPlayerP (PlayerComposite_Package.Create (AllBinaryMediaManager_Package.createPlayer (CompositeSound'Class (This).getResource), 570));
   end init;

end org.allbinary.media.audio.CompositeSound_Package;


