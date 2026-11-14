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

with AllBinary_Java;
limited with org.allbinary.game.ag.ai.ThrustAIVisitor_Package;
package org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References is
   type ThrustAIVisitor_Access is access all org.allbinary.game.ag.ai.ThrustAIVisitor_Package.ThrustAIVisitor'Class;
   type ThrustAIVisitor_Access_Array is array (Natural range <>) of ThrustAIVisitor_Access;
   type ThrustAIVisitor_Access_Array_Access is access all ThrustAIVisitor_Access_Array;
   type ThrustAIVisitor_Access_Array_Access_Array is array (Natural range <>) of ThrustAIVisitor_Access_Array_Access;
   type ThrustAIVisitor_Access_Array_Access_Array_Access is access all ThrustAIVisitor_Access_Array_Access_Array;
   type ThrustAIVisitor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThrustAIVisitor_Access_Array_Access;
   end record;
   function Java_Box (Value : ThrustAIVisitor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThrustAIVisitor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThrustAIVisitor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThrustAIVisitor_Access_Array_Access is (if Value /= null and then Value.all in ThrustAIVisitor_Access_Array_Object'Class then ThrustAIVisitor_Access_Array_Object'Class (Value.all).Value else null);
   type ThrustAIVisitor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThrustAIVisitor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ThrustAIVisitor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThrustAIVisitor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThrustAIVisitor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThrustAIVisitor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ThrustAIVisitor_Access_Array_Access_Array_Object'Class then ThrustAIVisitor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References;

with org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;

package org.allbinary.game.ag.ai.ThrustAIVisitor_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ThrustAIVisitor_Access is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access;
   function "=" (Left, Right : ThrustAIVisitor_Access) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References."=";
   subtype ThrustAIVisitor_Access_Array is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array;
   function "=" (Left, Right : ThrustAIVisitor_Access_Array) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References."=";
   subtype ThrustAIVisitor_Access_Array_Access is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array_Access;
   function "=" (Left, Right : ThrustAIVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References."=";
   function Java_Box (Value : ThrustAIVisitor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.Java_Box;
   function Java_Unbox_ThrustAIVisitor_Access_Array (Value : access Java_Object'Class) return ThrustAIVisitor_Access_Array_Access renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.Java_Unbox_ThrustAIVisitor_Access_Array;
   subtype ThrustAIVisitor_Access_Array_Access_Array is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : ThrustAIVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References."=";
   subtype ThrustAIVisitor_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThrustAIVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References."=";
   function Java_Box (Value : ThrustAIVisitor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.Java_Box;
   function Java_Unbox_ThrustAIVisitor_Access_Array_Access_Array (Value : access Java_Object'Class) return ThrustAIVisitor_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.Java_Unbox_ThrustAIVisitor_Access_Array_Access_Array;

   type ThrustAIVisitor is new Visitor_Package.Visitor with record
      logUtil : LogUtil_Access;
      TRUE : Boolean;
   end record;

   procedure Initialize (This : in out ThrustAIVisitor'Class);
   function Create return ThrustAIVisitor_Access;
   function visit (This : in out ThrustAIVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out ThrustAIVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out ThrustAIVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out ThrustAIVisitor; Value : Unbounded_String);

end org.allbinary.game.ag.ai.ThrustAIVisitor_Package;


