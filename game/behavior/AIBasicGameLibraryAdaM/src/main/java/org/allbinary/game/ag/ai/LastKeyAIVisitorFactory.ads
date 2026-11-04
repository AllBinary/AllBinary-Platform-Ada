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

limited with org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package;
package org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References is
   type LastKeyAIVisitorFactory_Access is access all org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package.LastKeyAIVisitorFactory'Class;
   type LastKeyAIVisitorFactory_Access_Array is array (Natural range <>) of LastKeyAIVisitorFactory_Access;
   type LastKeyAIVisitorFactory_Access_Array_Access is access all LastKeyAIVisitorFactory_Access_Array;
   type LastKeyAIVisitorFactory_Access_Array_Access_Array is array (Natural range <>) of LastKeyAIVisitorFactory_Access_Array_Access;
   type LastKeyAIVisitorFactory_Access_Array_Access_Array_Access is access all LastKeyAIVisitorFactory_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References;

with org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.ag.ai.LastKeyAIVisitor_Package;
with org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References;

package org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package is

   package Reference_Types is
   subtype LastKeyAIVisitor_Access is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access;
   use type LastKeyAIVisitor_Access;
   subtype LastKeyAIVisitor_Access_Array is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array;
   use type LastKeyAIVisitor_Access_Array;
   subtype LastKeyAIVisitor_Access_Array_Access is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array_Access;
   use type LastKeyAIVisitor_Access_Array_Access;
   subtype LastKeyAIVisitor_Access_Array_Access_Array is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array_Access_Array;
   use type LastKeyAIVisitor_Access_Array_Access_Array;
   subtype LastKeyAIVisitor_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.LastKeyAIVisitor_Package_References.LastKeyAIVisitor_Access_Array_Access_Array_Access;
   use type LastKeyAIVisitor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LastKeyAIVisitorFactory_Access is org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References.LastKeyAIVisitorFactory_Access;
   function "=" (Left, Right : LastKeyAIVisitorFactory_Access) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References."=";
   subtype LastKeyAIVisitorFactory_Access_Array is org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References.LastKeyAIVisitorFactory_Access_Array;
   function "=" (Left, Right : LastKeyAIVisitorFactory_Access_Array) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References."=";
   subtype LastKeyAIVisitorFactory_Access_Array_Access is org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References.LastKeyAIVisitorFactory_Access_Array_Access;
   function "=" (Left, Right : LastKeyAIVisitorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References."=";
   subtype LastKeyAIVisitorFactory_Access_Array_Access_Array is org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References.LastKeyAIVisitorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LastKeyAIVisitorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References."=";
   subtype LastKeyAIVisitorFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References.LastKeyAIVisitorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LastKeyAIVisitorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package_References."=";

   type LastKeyAIVisitorFactory is new Java_Object with null record;
   instance : LastKeyAIVisitor_Access;

   procedure Initialize (This : in out LastKeyAIVisitorFactory'Class);
   function Create return LastKeyAIVisitorFactory_Access;
   function getInstance return LastKeyAIVisitor_Access;

end org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package;


