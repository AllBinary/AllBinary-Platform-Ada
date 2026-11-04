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


with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package; use org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package;
with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package;

package body org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package is

   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   function "=" (Left, Right : Visitor_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   function "=" (Left, Right : Visitor_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   function "=" (Left, Right : Visitor_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   function "=" (Left, Right : Visitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Visitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype DiveAndDirectionalTrackingAI_Access is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References.DiveAndDirectionalTrackingAI_Access;
   function "=" (Left, Right : DiveAndDirectionalTrackingAI_Access) return Boolean renames org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References."=";
   subtype DiveAndDirectionalTrackingAI_Access_Array is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References.DiveAndDirectionalTrackingAI_Access_Array;
   function "=" (Left, Right : DiveAndDirectionalTrackingAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References."=";
   subtype DiveAndDirectionalTrackingAI_Access_Array_Access is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References.DiveAndDirectionalTrackingAI_Access_Array_Access;
   function "=" (Left, Right : DiveAndDirectionalTrackingAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References."=";
   subtype DiveAndDirectionalTrackingAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References.DiveAndDirectionalTrackingAI_Access_Array_Access_Array;
   function "=" (Left, Right : DiveAndDirectionalTrackingAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References."=";
   subtype DiveAndDirectionalTrackingAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References.DiveAndDirectionalTrackingAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DiveAndDirectionalTrackingAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References."=";
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


   function getInstance (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory; diveBombAI_Param : access DiveAndDirectionalTrackingAI_Package.DiveAndDirectionalTrackingAI'Class) return Visitor_Access is
      diveBombAI : constant DiveAndDirectionalTrackingAI_Access := DiveAndDirectionalTrackingAI_Access (diveBombAI_Param);
   begin
        return Visitor_Package.getInstance;
   end getInstance;

   procedure getInstance (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory; diveBombAI_Param : access DiveAndDirectionalTrackingAI_Package.DiveAndDirectionalTrackingAI'Class) is
      Java_Result : constant Visitor_Access := DiveAndDirectionalTrackingAICompositeVisitorFactory'Class (This).getInstance (diveBombAI_Param => diveBombAI_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package;


