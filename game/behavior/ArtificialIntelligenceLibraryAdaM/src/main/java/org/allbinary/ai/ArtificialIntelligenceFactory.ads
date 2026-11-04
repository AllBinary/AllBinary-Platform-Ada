-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.ai.ArtificialIntelligenceFactory_Package;
package org.allbinary.ai.ArtificialIntelligenceFactory_Package_References is
   type ArtificialIntelligenceFactory_Access is access all org.allbinary.ai.ArtificialIntelligenceFactory_Package.ArtificialIntelligenceFactory'Class;
   type ArtificialIntelligenceFactory_Access_Array is array (Natural range <>) of ArtificialIntelligenceFactory_Access;
   type ArtificialIntelligenceFactory_Access_Array_Access is access all ArtificialIntelligenceFactory_Access_Array;
   type ArtificialIntelligenceFactory_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceFactory_Access_Array_Access;
   type ArtificialIntelligenceFactory_Access_Array_Access_Array_Access is access all ArtificialIntelligenceFactory_Access_Array_Access_Array;
end org.allbinary.ai.ArtificialIntelligenceFactory_Package_References;

with org.allbinary.ai.ArtificialIntelligenceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package; use org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package;
limited with org.allbinary.ai.ArtificialIntelligence_Package;
with org.allbinary.ai.ArtificialIntelligence_Package_References;

package org.allbinary.ai.ArtificialIntelligenceFactory_Package is

   package Reference_Types is
   subtype ArtificialIntelligence_Access is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access;
   use type ArtificialIntelligence_Access;
   subtype ArtificialIntelligence_Access_Array is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array;
   use type ArtificialIntelligence_Access_Array;
   subtype ArtificialIntelligence_Access_Array_Access is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array_Access;
   use type ArtificialIntelligence_Access_Array_Access;
   subtype ArtificialIntelligence_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array_Access_Array;
   use type ArtificialIntelligence_Access_Array_Access_Array;
   subtype ArtificialIntelligence_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array_Access_Array_Access;
   use type ArtificialIntelligence_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ArtificialIntelligenceFactory_Access is org.allbinary.ai.ArtificialIntelligenceFactory_Package_References.ArtificialIntelligenceFactory_Access;
   function "=" (Left, Right : ArtificialIntelligenceFactory_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceFactory_Package_References."=";
   subtype ArtificialIntelligenceFactory_Access_Array is org.allbinary.ai.ArtificialIntelligenceFactory_Package_References.ArtificialIntelligenceFactory_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceFactory_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceFactory_Package_References."=";
   subtype ArtificialIntelligenceFactory_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceFactory_Package_References.ArtificialIntelligenceFactory_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceFactory_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceFactory_Package_References."=";
   subtype ArtificialIntelligenceFactory_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceFactory_Package_References.ArtificialIntelligenceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceFactory_Package_References."=";
   subtype ArtificialIntelligenceFactory_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceFactory_Package_References.ArtificialIntelligenceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceFactory_Package_References."=";

   type ArtificialIntelligenceFactory is new Java_Object and ArtificialIntelligenceFactoryInterface with null record;

   procedure Initialize (This : in out ArtificialIntelligenceFactory'Class);
   function Create return ArtificialIntelligenceFactory_Access;
   function getInstance (This : in out ArtificialIntelligenceFactory; anyType_Param : access Java_Object'Class) return ArtificialIntelligence_Access;
   procedure getInstance (This : in out ArtificialIntelligenceFactory; anyType_Param : access Java_Object'Class);
   function getInstance (This : in out ArtificialIntelligenceFactory; Value : Unbounded_String) return ArtificialIntelligence_Access;
   procedure getInstance (This : in out ArtificialIntelligenceFactory; Value : Unbounded_String);

end org.allbinary.ai.ArtificialIntelligenceFactory_Package;


