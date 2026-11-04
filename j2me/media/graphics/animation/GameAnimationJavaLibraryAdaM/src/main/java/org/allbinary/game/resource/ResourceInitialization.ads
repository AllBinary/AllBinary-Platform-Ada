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

limited with org.allbinary.game.resource.ResourceInitialization_Package;
package org.allbinary.game.resource.ResourceInitialization_Package_References is
   type ResourceInitialization_Access is access all org.allbinary.game.resource.ResourceInitialization_Package.ResourceInitialization'Class;
   type ResourceInitialization_Access_Array is array (Natural range <>) of ResourceInitialization_Access;
   type ResourceInitialization_Access_Array_Access is access all ResourceInitialization_Access_Array;
   type ResourceInitialization_Access_Array_Access_Array is array (Natural range <>) of ResourceInitialization_Access_Array_Access;
   type ResourceInitialization_Access_Array_Access_Array_Access is access all ResourceInitialization_Access_Array_Access_Array;
end org.allbinary.game.resource.ResourceInitialization_Package_References;

with org.allbinary.game.resource.ResourceInitialization_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.init.Init_Package; use org.allbinary.init.Init_Package;

package org.allbinary.game.resource.ResourceInitialization_Package is

   package Init_Package renames Standard.org.allbinary.init.Init_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ResourceInitialization_Access is org.allbinary.game.resource.ResourceInitialization_Package_References.ResourceInitialization_Access;
   function "=" (Left, Right : ResourceInitialization_Access) return Boolean renames org.allbinary.game.resource.ResourceInitialization_Package_References."=";
   subtype ResourceInitialization_Access_Array is org.allbinary.game.resource.ResourceInitialization_Package_References.ResourceInitialization_Access_Array;
   function "=" (Left, Right : ResourceInitialization_Access_Array) return Boolean renames org.allbinary.game.resource.ResourceInitialization_Package_References."=";
   subtype ResourceInitialization_Access_Array_Access is org.allbinary.game.resource.ResourceInitialization_Package_References.ResourceInitialization_Access_Array_Access;
   function "=" (Left, Right : ResourceInitialization_Access_Array_Access) return Boolean renames org.allbinary.game.resource.ResourceInitialization_Package_References."=";
   subtype ResourceInitialization_Access_Array_Access_Array is org.allbinary.game.resource.ResourceInitialization_Package_References.ResourceInitialization_Access_Array_Access_Array;
   function "=" (Left, Right : ResourceInitialization_Access_Array_Access_Array) return Boolean renames org.allbinary.game.resource.ResourceInitialization_Package_References."=";
   subtype ResourceInitialization_Access_Array_Access_Array_Access is org.allbinary.game.resource.ResourceInitialization_Package_References.ResourceInitialization_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ResourceInitialization_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.resource.ResourceInitialization_Package_References."=";

   type ResourceInitialization is new Init with null record;

   procedure Initialize (This : in out ResourceInitialization'Class);
   function Create return ResourceInitialization_Access;

end org.allbinary.game.resource.ResourceInitialization_Package;


