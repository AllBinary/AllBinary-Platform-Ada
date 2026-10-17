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


package body org.allbinary.animation.transition.shake.ShakeEventFactory_Package is

   procedure Initialize_Fields (This : in out ShakeEventFactory'Class) is
   begin
      null;
      This.MICRO := ShakeEvent_Package.Create;
      This.SMALL := ShakeEvent_Package.Create;
      This.MEDIUM := ShakeEvent_Package.Create;
      This.LARGE := ShakeEvent_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out ShakeEventFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShakeEventFactory_Access is
      This : constant ShakeEventFactory_Access := new ShakeEventFactory;
   begin
      ShakeEventFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShakeEventFactory_Access is
   begin
        return ShakeEventFactory_Package.instance;
   end getInstance;

   procedure init (This : in out ShakeEventFactory) is
   begin
        null;
   end init;

begin
   null;
   instance := ShakeEventFactory_Package.Create;

end org.allbinary.animation.transition.shake.ShakeEventFactory_Package;


