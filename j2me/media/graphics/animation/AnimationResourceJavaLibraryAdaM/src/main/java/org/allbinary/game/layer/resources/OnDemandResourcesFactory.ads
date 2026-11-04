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

limited with org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package;
package org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References is
   type OnDemandResourcesFactory_Access is access all org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package.OnDemandResourcesFactory'Class;
   type OnDemandResourcesFactory_Access_Array is array (Natural range <>) of OnDemandResourcesFactory_Access;
   type OnDemandResourcesFactory_Access_Array_Access is access all OnDemandResourcesFactory_Access_Array;
   type OnDemandResourcesFactory_Access_Array_Access_Array is array (Natural range <>) of OnDemandResourcesFactory_Access_Array_Access;
   type OnDemandResourcesFactory_Access_Array_Access_Array_Access is access all OnDemandResourcesFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References;

with org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.resources.OnDemandResources_Package;
with org.allbinary.game.layer.resources.OnDemandResources_Package_References;

package org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package is

   package Reference_Types is
   subtype OnDemandResources_Access is org.allbinary.game.layer.resources.OnDemandResources_Package_References.OnDemandResources_Access;
   use type OnDemandResources_Access;
   subtype OnDemandResources_Access_Array is org.allbinary.game.layer.resources.OnDemandResources_Package_References.OnDemandResources_Access_Array;
   use type OnDemandResources_Access_Array;
   subtype OnDemandResources_Access_Array_Access is org.allbinary.game.layer.resources.OnDemandResources_Package_References.OnDemandResources_Access_Array_Access;
   use type OnDemandResources_Access_Array_Access;
   subtype OnDemandResources_Access_Array_Access_Array is org.allbinary.game.layer.resources.OnDemandResources_Package_References.OnDemandResources_Access_Array_Access_Array;
   use type OnDemandResources_Access_Array_Access_Array;
   subtype OnDemandResources_Access_Array_Access_Array_Access is org.allbinary.game.layer.resources.OnDemandResources_Package_References.OnDemandResources_Access_Array_Access_Array_Access;
   use type OnDemandResources_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OnDemandResourcesFactory_Access is org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References.OnDemandResourcesFactory_Access;
   function "=" (Left, Right : OnDemandResourcesFactory_Access) return Boolean renames org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References."=";
   subtype OnDemandResourcesFactory_Access_Array is org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References.OnDemandResourcesFactory_Access_Array;
   function "=" (Left, Right : OnDemandResourcesFactory_Access_Array) return Boolean renames org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References."=";
   subtype OnDemandResourcesFactory_Access_Array_Access is org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References.OnDemandResourcesFactory_Access_Array_Access;
   function "=" (Left, Right : OnDemandResourcesFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References."=";
   subtype OnDemandResourcesFactory_Access_Array_Access_Array is org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References.OnDemandResourcesFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OnDemandResourcesFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References."=";
   subtype OnDemandResourcesFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References.OnDemandResourcesFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OnDemandResourcesFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package_References."=";

   type OnDemandResourcesFactory is new Java_Object with null record;

   procedure Initialize (This : in out OnDemandResourcesFactory'Class);
   function Create return OnDemandResourcesFactory_Access;
   function size (This : in out OnDemandResourcesFactory) return Integer;
   function remove (This : in out OnDemandResourcesFactory; layerId : Integer) return OnDemandResources_Access;
   procedure remove (This : in out OnDemandResourcesFactory; layerId : Integer);

end org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package;


