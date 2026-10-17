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


package body org.allbinary.game.GameAdState_Package is

   procedure Initialize_Fields (This : in out GameAdState'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameAdState'Class; adConfiguration_Param : access AdConfiguration_Package.AdConfiguration'Class) is
      adConfiguration : constant AdConfiguration_Access := AdConfiguration_Access (adConfiguration_Param);
   begin
        GameAdStateBase_Package.Initialize (This, adConfiguration);
        VirtualKeyboardEventHandler_Package.getInstance.addListenerInterface (GameAdState_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (adConfiguration_Param : access AdConfiguration_Package.AdConfiguration'Class) return GameAdState_Access is
      This : constant GameAdState_Access := new GameAdState;
   begin
      GameAdState_Package.Initialize (This.all, adConfiguration_Param);
      return This;
   end Create;

   --  throws Exception
   procedure onVirtualKeyboardEvent (This : in out GameAdState; virtualKeyboardEvent_Param : access VirtualKeyboardEvent_Package.VirtualKeyboardEvent'Class) is
      virtualKeyboardEvent : constant VirtualKeyboardEvent_Access := VirtualKeyboardEvent_Access (virtualKeyboardEvent_Param);
   begin
        null;
   end onVirtualKeyboardEvent;

end org.allbinary.game.GameAdState_Package;


