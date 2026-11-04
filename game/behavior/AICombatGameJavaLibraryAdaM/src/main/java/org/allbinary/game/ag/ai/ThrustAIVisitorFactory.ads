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

limited with org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package;
package org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References is
   type ThrustAIVisitorFactory_Access is access all org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package.ThrustAIVisitorFactory'Class;
   type ThrustAIVisitorFactory_Access_Array is array (Natural range <>) of ThrustAIVisitorFactory_Access;
   type ThrustAIVisitorFactory_Access_Array_Access is access all ThrustAIVisitorFactory_Access_Array;
   type ThrustAIVisitorFactory_Access_Array_Access_Array is array (Natural range <>) of ThrustAIVisitorFactory_Access_Array_Access;
   type ThrustAIVisitorFactory_Access_Array_Access_Array_Access is access all ThrustAIVisitorFactory_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References;

with org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.ag.ai.ThrustAIVisitor_Package;
with org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References;

package org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package is

   package Reference_Types is
   subtype ThrustAIVisitor_Access is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access;
   use type ThrustAIVisitor_Access;
   subtype ThrustAIVisitor_Access_Array is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array;
   use type ThrustAIVisitor_Access_Array;
   subtype ThrustAIVisitor_Access_Array_Access is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array_Access;
   use type ThrustAIVisitor_Access_Array_Access;
   subtype ThrustAIVisitor_Access_Array_Access_Array is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array_Access_Array;
   use type ThrustAIVisitor_Access_Array_Access_Array;
   subtype ThrustAIVisitor_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.ThrustAIVisitor_Package_References.ThrustAIVisitor_Access_Array_Access_Array_Access;
   use type ThrustAIVisitor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ThrustAIVisitorFactory_Access is org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References.ThrustAIVisitorFactory_Access;
   function "=" (Left, Right : ThrustAIVisitorFactory_Access) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References."=";
   subtype ThrustAIVisitorFactory_Access_Array is org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References.ThrustAIVisitorFactory_Access_Array;
   function "=" (Left, Right : ThrustAIVisitorFactory_Access_Array) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References."=";
   subtype ThrustAIVisitorFactory_Access_Array_Access is org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References.ThrustAIVisitorFactory_Access_Array_Access;
   function "=" (Left, Right : ThrustAIVisitorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References."=";
   subtype ThrustAIVisitorFactory_Access_Array_Access_Array is org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References.ThrustAIVisitorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ThrustAIVisitorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References."=";
   subtype ThrustAIVisitorFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References.ThrustAIVisitorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThrustAIVisitorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package_References."=";

   type ThrustAIVisitorFactory is new Java_Object with null record;
   instance : ThrustAIVisitor_Access;

   procedure Initialize (This : in out ThrustAIVisitorFactory'Class);
   function Create return ThrustAIVisitorFactory_Access;
   function getInstance return ThrustAIVisitor_Access;

end org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package;


