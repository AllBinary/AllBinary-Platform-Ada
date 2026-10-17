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
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure shutdown (soundsFactoryInterface : SoundsFactoryInterface_Access) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        logUtil.putF (commonStrings.START, instance, To_Unbounded_String ("shutdown"));
        AllBinaryMediaManager_Package.shutdown (soundsFactoryInterface);
   end shutdown;

begin
   null;
   instance := AllBinaryMediaManagerShutdown_Package.Create;

end org.allbinary.media.audio.AllBinaryMediaManagerShutdown_Package;


