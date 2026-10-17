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


package body org.allbinary.game.midlet.DemoGameMidletEvent_Package is

   procedure Initialize_Fields (This : in out DemoGameMidletEvent'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DemoGameMidletEvent'Class; anyType : Java_Object_Access; demoGameMidletState : DemoGameMidletState_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.demoGameMidletState := demoGameMidletState;
   end Initialize;

   function Create (anyType : Java_Object_Access; demoGameMidletState : DemoGameMidletState_Access) return DemoGameMidletEvent_Access is
      This : constant DemoGameMidletEvent_Access := new DemoGameMidletEvent;
   begin
      Initialize (This.all, anyType, demoGameMidletState);
      return This;
   end Create;

   procedure init (This : in out DemoGameMidletEvent; anyType : Java_Object_Access) is
   begin
        This.setSource (anyType);
   end init;

   procedure setDemoGameMidletState (This : in out DemoGameMidletEvent; demoGameMidletState : DemoGameMidletState_Access) is
   begin
        This.demoGameMidletState := demoGameMidletState;
   end setDemoGameMidletState;

   function getDemoGameMidletState (This : in out DemoGameMidletEvent) return DemoGameMidletState_Access is
   begin
        return This.demoGameMidletState;
   end getDemoGameMidletState;

   procedure getDemoGameMidletState (This : in out DemoGameMidletEvent) is
      Java_Result : constant DemoGameMidletState_Access := DemoGameMidletEvent'Class (This).getDemoGameMidletState;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDemoGameMidletState;

end org.allbinary.game.midlet.DemoGameMidletEvent_Package;


