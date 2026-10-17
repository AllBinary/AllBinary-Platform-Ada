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


package body org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package is

   procedure Initialize_Fields (This : in out AllBinaryMediaManagerShutdown'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AllBinaryMediaManagerShutdown'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryMediaManagerShutdown_Access is
      This : constant AllBinaryMediaManagerShutdown_Access := new AllBinaryMediaManagerShutdown;
   begin
      AllBinaryMediaManagerShutdown_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure shutdown (soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class) is
      soundsFactoryInterface : constant SoundsFactoryInterface_Access := SoundsFactoryInterface_Access (soundsFactoryInterface_Param);
      logUtil : LogUtil_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        logUtil.putF (To_Unbounded_String ("No Media Shutdown for Android Process"), AllBinaryMediaManagerShutdown_Package.instance, To_Unbounded_String ("shutdown"));
   end shutdown;

begin
   null;
   instance := AllBinaryMediaManagerShutdown_Package.Create;

end org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package;


