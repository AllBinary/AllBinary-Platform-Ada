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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return TouchScreenTypeFactory_Access is
   begin
        return TouchScreenTypeFactory_Package.instance;
   end getInstance;

   procedure update (This : in out TouchScreenTypeFactory; activity : Activity_Access) is
      commonStrings : CommonStrings_Access;
      touchScreenFactory : TouchScreenFactory_Access;
      touchScreenTypesFactory : TouchScreenTypesFactory_Access;
      configuration : Configuration_Access;
      touchScreen : Integer;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        touchScreenFactory := TouchScreenFactory_Package.getInstance;
        touchScreenTypesFactory := TouchScreenTypesFactory_Package.getInstance;
        configuration := activity.getResources.getConfiguration;
        touchScreen := configuration.touchscreen;
        if (touchScreen) = (Configuration_Package.TOUCHSCREEN_FINGER) then
            touchScreenFactory.setTouchScreenType (touchScreenTypesFactory.FINGER);
            if not (touchScreenFactory.isTouch) then
                PreLogUtil_Package.put (To_Unbounded_String ("Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it"), This'Unchecked_Access, commonStrings.PROCESS);
                touchScreenFactory.setTouch (True);
            end if;
        elsif (touchScreen) = (Configuration_Package.TOUCHSCREEN_STYLUS) then
            touchScreenFactory.setTouchScreenType (touchScreenTypesFactory.STYLUS);
            if not (touchScreenFactory.isTouch) then
                PreLogUtil_Package.put (To_Unbounded_String ("Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it"), This'Unchecked_Access, commonStrings.PROCESS);
                touchScreenFactory.setTouch (True);
            end if;
        elsif (touchScreen) = (Configuration_Package.TOUCHSCREEN_NOTOUCH) then
            touchScreenFactory.setTouchScreenType (touchScreenTypesFactory.NOTOUCH);
        elsif (touchScreen) = (Configuration_Package.TOUCHSCREEN_UNDEFINED) then
            touchScreenFactory.setTouchScreenType (touchScreenTypesFactory.UNDEFINED);
        end if;
   end update;

   procedure getInstance is
      Java_Result : constant TouchScreenTypeFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TouchScreenTypeFactory_Package.Create;

end org.allbinary.input.motion.button.TouchScreenTypeFactory_Package;


