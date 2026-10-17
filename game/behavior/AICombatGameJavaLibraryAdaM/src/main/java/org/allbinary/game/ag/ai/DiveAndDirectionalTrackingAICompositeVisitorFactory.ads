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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package; use org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package;

package org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;

   type DiveAndDirectionalTrackingAICompositeVisitorFactory is tagged;
   type DiveAndDirectionalTrackingAICompositeVisitorFactory_Access is access all DiveAndDirectionalTrackingAICompositeVisitorFactory'Class;
   type DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array is array (Natural range <>) of DiveAndDirectionalTrackingAICompositeVisitorFactory_Access;
   type DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array_Access is access all DiveAndDirectionalTrackingAICompositeVisitorFactory_Access_Array;

   type DiveAndDirectionalTrackingAICompositeVisitorFactory is new Java_Object with null record;

   procedure Initialize (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory'Class);
   function Create return DiveAndDirectionalTrackingAICompositeVisitorFactory_Access;
   function getInstance (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory; diveBombAI : DiveAndDirectionalTrackingAI_Access) return Visitor_Access;
   procedure getInstance (This : in out DiveAndDirectionalTrackingAICompositeVisitorFactory; diveBombAI : DiveAndDirectionalTrackingAI_Access);

end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAICompositeVisitorFactory_Package;


