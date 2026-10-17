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


package body org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package is

   procedure Initialize_Fields (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DiveAndDirectionalTrackingAICompositeVisitorFactory_Access is
      This : constant DiveAndDirectionalTrackingAICompositeVisitorFactory_Access := new DiveAndDirectionalTrackingAICompositeVisitorFactory;
   begin
      DiveAndDirectionalTrackingAICompositeVisitorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory; diveBombAI : DiveAndDirectionalTrackingAI_Access) return Visitor_Access is
   begin
        return Visitor_Package.getInstance;
   end getInstance;

   procedure getInstance (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory; diveBombAI : DiveAndDirectionalTrackingAI_Access) is
      Java_Result : constant Visitor_Access := DiveAndDirectionalTrackingAICompositeVisitorFactory'Class (This).getInstance (diveBombAI);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package;


