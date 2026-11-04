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

limited with org.allbinary.game.ag.ai.NullAI_Package;
package org.allbinary.game.ag.ai.NullAI_Package_References is
   type NullAI_Access is access all org.allbinary.game.ag.ai.NullAI_Package.NullAI'Class;
   type NullAI_Access_Array is array (Natural range <>) of NullAI_Access;
   type NullAI_Access_Array_Access is access all NullAI_Access_Array;
   type NullAI_Access_Array_Access_Array is array (Natural range <>) of NullAI_Access_Array_Access;
   type NullAI_Access_Array_Access_Array_Access is access all NullAI_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.NullAI_Package_References;

with org.allbinary.game.ag.ai.NullAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.ai.ArtificialIntelligence_Package; use org.allbinary.ai.ArtificialIntelligence_Package;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.game.ag.ai.NullAI_Package is

   package ArtificialIntelligence_Package renames Standard.org.allbinary.ai.ArtificialIntelligence_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullAI_Access is org.allbinary.game.ag.ai.NullAI_Package_References.NullAI_Access;
   function "=" (Left, Right : NullAI_Access) return Boolean renames org.allbinary.game.ag.ai.NullAI_Package_References."=";
   subtype NullAI_Access_Array is org.allbinary.game.ag.ai.NullAI_Package_References.NullAI_Access_Array;
   function "=" (Left, Right : NullAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.NullAI_Package_References."=";
   subtype NullAI_Access_Array_Access is org.allbinary.game.ag.ai.NullAI_Package_References.NullAI_Access_Array_Access;
   function "=" (Left, Right : NullAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.NullAI_Package_References."=";
   subtype NullAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.NullAI_Package_References.NullAI_Access_Array_Access_Array;
   function "=" (Left, Right : NullAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.NullAI_Package_References."=";
   subtype NullAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.NullAI_Package_References.NullAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.NullAI_Package_References."=";

   type NullAI is new ArtificialIntelligence with null record;

   procedure Initialize (This : in out NullAI'Class);
   function Create return NullAI_Access;
   procedure processAI (This : in out NullAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.game.ag.ai.NullAI_Package;


