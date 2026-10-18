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


with org.allbinary.input.motion.button.TouchScreenFactory_Package; use org.allbinary.input.motion.button.TouchScreenFactory_Package;

package body org.allbinary.input.motion.button.TouchScreenTypeFactory_Package is

   procedure Initialize_Fields (This : in out TouchScreenTypeFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TouchScreenTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TouchScreenTypeFactory_Access is
      This : constant TouchScreenTypeFactory_Access := new TouchScreenTypeFactory;
   begin
      TouchScreenTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TouchScreenTypeFactory_Access is
   begin
        return TouchScreenTypeFactory_Package.instance;
   end getInstance;

   procedure TouchScreenTypeFactory (This : in out TouchScreenTypeFactory) is
      touchScreenFactory : TouchScreenFactory_Access;
   begin
        touchScreenFactory := TouchScreenFactory_Package.getInstance;
        touchScreenFactory.setTouch (True);
   end TouchScreenTypeFactory;

begin
   null;
   instance := TouchScreenTypeFactory_Package.Create;

end org.allbinary.input.motion.button.TouchScreenTypeFactory_Package;


