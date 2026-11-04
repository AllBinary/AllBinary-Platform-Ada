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

limited with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package;
package org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References is
   type DiveAndDirectionalTrackingAICompositeVisitorFactory_Access is access all org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package.DiveAndDirectionalTrackingAICompositeVisitorFactory'Class;
   type DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array is array (Natural range <>) of DiveAndDirectionalTrackingAICompositeVisitorFactory_Access;
   type DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access is access all DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array;
   type DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access_Array is array (Natural range <>) of DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access;
   type DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access_Array_Access is access all DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References;

with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;
limited with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package;
with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References;

package org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   use type Visitor_Access;
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   use type Visitor_Access_Array;
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   use type Visitor_Access_Array_Access;
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   use type Visitor_Access_Array_Access_Array;
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   use type Visitor_Access_Array_Access_Array_Access;
   subtype DiveAndDirectionalTrackingAI_Access is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References.DiveAndDirectionalTrackingAI_Access;
   use type DiveAndDirectionalTrackingAI_Access;
   subtype DiveAndDirectionalTrackingAI_Access_Array is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References.DiveAndDirectionalTrackingAI_Access_Array;
   use type DiveAndDirectionalTrackingAI_Access_Array;
   subtype DiveAndDirectionalTrackingAI_Access_Array_Access is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References.DiveAndDirectionalTrackingAI_Access_Array_Access;
   use type DiveAndDirectionalTrackingAI_Access_Array_Access;
   subtype DiveAndDirectionalTrackingAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References.DiveAndDirectionalTrackingAI_Access_Array_Access_Array;
   use type DiveAndDirectionalTrackingAI_Access_Array_Access_Array;
   subtype DiveAndDirectionalTrackingAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package_References.DiveAndDirectionalTrackingAI_Access_Array_Access_Array_Access;
   use type DiveAndDirectionalTrackingAI_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DiveAndDirectionalTrackingAICompositeVisitorFactory_Access is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References.DiveAndDirectionalTrackingAICompositeVisitorFactory_Access;
   function "=" (Left, Right : DiveAndDirectionalTrackingAICompositeVisitorFactory_Access) return Boolean renames org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References."=";
   subtype DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References.DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array;
   function "=" (Left, Right : DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array) return Boolean renames org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References."=";
   subtype DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References.DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access;
   function "=" (Left, Right : DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References."=";
   subtype DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access_Array is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References.DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References."=";
   subtype DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References.DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package_References."=";

   type DiveAndDirectionalTrackingAICompositeVisitorFactory is new Java_Object with null record;

   procedure Initialize (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory'Class);
   function Create return DiveAndDirectionalTrackingAICompositeVisitorFactory_Access;
   function getInstance (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory; diveBombAI_Param : access DiveAndDirectionalTrackingAI_Package.DiveAndDirectionalTrackingAI'Class) return Visitor_Access;
   procedure getInstance (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory; diveBombAI_Param : access DiveAndDirectionalTrackingAI_Package.DiveAndDirectionalTrackingAI'Class);

end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package;


