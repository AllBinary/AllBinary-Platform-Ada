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


package body org.allbinary.game.input.KeyFactoryInitializer_Package is

   procedure Initialize_Fields (This : in out KeyFactoryInitializer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out KeyFactoryInitializer'Class) is
   begin
      Init_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return KeyFactoryInitializer_Access is
      This : constant KeyFactoryInitializer_Access := new KeyFactoryInitializer;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure init (This : in out KeyFactoryInitializer) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.INIT);
        SmallIntegerSingletonFactory_Package.getInstance.initWithRange (16#2D0#, 6);
   end init;

end org.allbinary.game.input.KeyFactoryInitializer_Package;


