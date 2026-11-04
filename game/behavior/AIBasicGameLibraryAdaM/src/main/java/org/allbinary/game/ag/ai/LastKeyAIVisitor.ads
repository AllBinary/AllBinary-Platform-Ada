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

limited with org.allbinary.game.ag.ai.LastKeyAIVisitor_Package;
package org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References is
   type LastKeyAIVisitor_Access is access all org.allbinary.game.ag.ai.LastKeyAIVisitor_Package.LastKeyAIVisitor'Class;
   type LastKeyAIVisitor_Access_Array is array (Natural range <>) of LastKeyAIVisitor_Access;
   type LastKeyAIVisitor_Access_Array_Access is access all LastKeyAIVisitor_Access_Array;
   type LastKeyAIVisitor_Access_Array_Access_Array is array (Natural range <>) of LastKeyAIVisitor_Access_Array_Access;
   type LastKeyAIVisitor_Access_Array_Access_Array_Access is access all LastKeyAIVisitor_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References;

with org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References;
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

package org.allbinary.game.ag.ai.LastKeyAIVisitor_Package is

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


   subtype LastKeyAIVisitor_Access is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access;
   function "=" (Left, Right : LastKeyAIVisitor_Access) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References."=";
   subtype LastKeyAIVisitor_Access_Array is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array;
   function "=" (Left, Right : LastKeyAIVisitor_Access_Array) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References."=";
   subtype LastKeyAIVisitor_Access_Array_Access is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array_Access;
   function "=" (Left, Right : LastKeyAIVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References."=";
   subtype LastKeyAIVisitor_Access_Array_Access_Array is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : LastKeyAIVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References."=";
   subtype LastKeyAIVisitor_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LastKeyAIVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References."=";

   type LastKeyAIVisitor is new Visitor with record
      logUtil : LogUtil_Access;
      TRUE : Boolean;
   end record;

   procedure Initialize (This : in out LastKeyAIVisitor'Class);
   function Create return LastKeyAIVisitor_Access;
   function visit (This : in out LastKeyAIVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out LastKeyAIVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out LastKeyAIVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out LastKeyAIVisitor; Value : Unbounded_String);

end org.allbinary.game.ag.ai.LastKeyAIVisitor_Package;


