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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.ag.ai.ThrustAIVisitor_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ThrustAIVisitor is tagged;
   type ThrustAIVisitor_Access is access all ThrustAIVisitor'Class;
   type ThrustAIVisitor_Access_Array is array (Natural range <>) of ThrustAIVisitor_Access;
   type ThrustAIVisitor_Access_Array_Access is access all ThrustAIVisitor_Access_Array;

   type ThrustAIVisitor is new Visitor with record
      logUtil : LogUtil_Access;
      TRUE : Boolean;
   end record;

   procedure Initialize (This : in out ThrustAIVisitor'Class);
   function Create return ThrustAIVisitor_Access;
   function visit (This : in out ThrustAIVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out ThrustAIVisitor; anyType_Param : access Java_Object'Class);

end org.allbinary.game.ag.ai.ThrustAIVisitor_Package;


