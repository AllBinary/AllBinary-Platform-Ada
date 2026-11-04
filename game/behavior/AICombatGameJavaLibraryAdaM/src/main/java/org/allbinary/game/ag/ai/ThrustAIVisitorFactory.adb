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


with org.allbinary.game.ag.ai.ThrustAIVisitor_Package; use org.allbinary.game.ag.ai.ThrustAIVisitor_Package;
with org.allbinary.game.ag.ai.ThrustAIVisitor_Package;

package body org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package is

   subtype ThrustAIVisitor_Access is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access;
   function "=" (Left, Right : ThrustAIVisitor_Access) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References."=";
   subtype ThrustAIVisitor_Access_Array is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array;
   function "=" (Left, Right : ThrustAIVisitor_Access_Array) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References."=";
   subtype ThrustAIVisitor_Access_Array_Access is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array_Access;
   function "=" (Left, Right : ThrustAIVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References."=";
   subtype ThrustAIVisitor_Access_Array_Access_Array is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : ThrustAIVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References."=";
   subtype ThrustAIVisitor_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThrustAIVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References."=";
   procedure Initialize_Fields (This : in out ThrustAIVisitorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ThrustAIVisitorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThrustAIVisitorFactory_Access is
      This : constant ThrustAIVisitorFactory_Access := new ThrustAIVisitorFactory;
   begin
      ThrustAIVisitorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThrustAIVisitor_Access is
   begin
        return ThrustAIVisitor_Access (ThrustAIVisitorFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := ThrustAIVisitor_Package.Create;

end org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package;


