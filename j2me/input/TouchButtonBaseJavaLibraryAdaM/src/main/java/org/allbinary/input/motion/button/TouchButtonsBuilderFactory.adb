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


package body org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package is

   procedure Initialize_Fields (This : in out TouchButtonsBuilderFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TouchButtonsBuilderFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TouchButtonsBuilderFactory_Access is
      This : constant TouchButtonsBuilderFactory_Access := new TouchButtonsBuilderFactory;
   begin
      TouchButtonsBuilderFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out TouchButtonsBuilderFactory) return BaseTouchInput_Access is
   begin
        return NoButtonsTouchInputFactory_Package.getInstance;
   end getInstance;

begin
   null;
   NO_TOUCH_BUTTON_BUILDER_FACTORY := TouchButtonsBuilderFactory_Package.Create;

end org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package;


