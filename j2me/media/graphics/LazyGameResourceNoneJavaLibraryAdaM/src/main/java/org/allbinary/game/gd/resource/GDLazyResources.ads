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

limited with org.allbinary.game.gd.resource.GDLazyResources_Package;
package org.allbinary.game.gd.resource.GDLazyResources_Package_References is
   type GDLazyResources_Access is access all org.allbinary.game.gd.resource.GDLazyResources_Package.GDLazyResources'Class;
   type GDLazyResources_Access_Array is array (Natural range <>) of GDLazyResources_Access;
   type GDLazyResources_Access_Array_Access is access all GDLazyResources_Access_Array;
   type GDLazyResources_Access_Array_Access_Array is array (Natural range <>) of GDLazyResources_Access_Array_Access;
   type GDLazyResources_Access_Array_Access_Array_Access is access all GDLazyResources_Access_Array_Access_Array;
end org.allbinary.game.gd.resource.GDLazyResources_Package_References;

with org.allbinary.game.gd.resource.GDLazyResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.gd.resource.GDLazyResources_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GDLazyResources_Access is org.allbinary.game.gd.resource.GDLazyResources_Package_References.GDLazyResources_Access;
   function "=" (Left, Right : GDLazyResources_Access) return Boolean renames org.allbinary.game.gd.resource.GDLazyResources_Package_References."=";
   subtype GDLazyResources_Access_Array is org.allbinary.game.gd.resource.GDLazyResources_Package_References.GDLazyResources_Access_Array;
   function "=" (Left, Right : GDLazyResources_Access_Array) return Boolean renames org.allbinary.game.gd.resource.GDLazyResources_Package_References."=";
   subtype GDLazyResources_Access_Array_Access is org.allbinary.game.gd.resource.GDLazyResources_Package_References.GDLazyResources_Access_Array_Access;
   function "=" (Left, Right : GDLazyResources_Access_Array_Access) return Boolean renames org.allbinary.game.gd.resource.GDLazyResources_Package_References."=";
   subtype GDLazyResources_Access_Array_Access_Array is org.allbinary.game.gd.resource.GDLazyResources_Package_References.GDLazyResources_Access_Array_Access_Array;
   function "=" (Left, Right : GDLazyResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.gd.resource.GDLazyResources_Package_References."=";
   subtype GDLazyResources_Access_Array_Access_Array_Access is org.allbinary.game.gd.resource.GDLazyResources_Package_References.GDLazyResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GDLazyResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.gd.resource.GDLazyResources_Package_References."=";

   type GDLazyResources is new Java_Object with record
      imageResourceWidthArray : Integer_Array_Access;
      imageResourceHeightArray : Integer_Array_Access;
      requiredResourcesBeforeLoadingArray : Unbounded_String_Array_Access;
   end record;
   instance : GDLazyResources_Access;

   procedure Initialize (This : in out GDLazyResources'Class);
   function Create return GDLazyResources_Access;
   function getInstance return GDLazyResources_Access;

end org.allbinary.game.gd.resource.GDLazyResources_Package;


