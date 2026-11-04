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

limited with org.allbinary.layer.SingleLayerLayerManager_Package;
package org.allbinary.layer.SingleLayerLayerManager_Package_References is
   type SingleLayerLayerManager_Access is access all org.allbinary.layer.SingleLayerLayerManager_Package.SingleLayerLayerManager'Class;
   type SingleLayerLayerManager_Access_Array is array (Natural range <>) of SingleLayerLayerManager_Access;
   type SingleLayerLayerManager_Access_Array_Access is access all SingleLayerLayerManager_Access_Array;
   type SingleLayerLayerManager_Access_Array_Access_Array is array (Natural range <>) of SingleLayerLayerManager_Access_Array_Access;
   type SingleLayerLayerManager_Access_Array_Access_Array_Access is access all SingleLayerLayerManager_Access_Array_Access_Array;
end org.allbinary.layer.SingleLayerLayerManager_Package_References;

with org.allbinary.layer.SingleLayerLayerManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;

package org.allbinary.layer.SingleLayerLayerManager_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SingleLayerLayerManager_Access is org.allbinary.layer.SingleLayerLayerManager_Package_References.SingleLayerLayerManager_Access;
   function "=" (Left, Right : SingleLayerLayerManager_Access) return Boolean renames org.allbinary.layer.SingleLayerLayerManager_Package_References."=";
   subtype SingleLayerLayerManager_Access_Array is org.allbinary.layer.SingleLayerLayerManager_Package_References.SingleLayerLayerManager_Access_Array;
   function "=" (Left, Right : SingleLayerLayerManager_Access_Array) return Boolean renames org.allbinary.layer.SingleLayerLayerManager_Package_References."=";
   subtype SingleLayerLayerManager_Access_Array_Access is org.allbinary.layer.SingleLayerLayerManager_Package_References.SingleLayerLayerManager_Access_Array_Access;
   function "=" (Left, Right : SingleLayerLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.SingleLayerLayerManager_Package_References."=";
   subtype SingleLayerLayerManager_Access_Array_Access_Array is org.allbinary.layer.SingleLayerLayerManager_Package_References.SingleLayerLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : SingleLayerLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.SingleLayerLayerManager_Package_References."=";
   subtype SingleLayerLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.SingleLayerLayerManager_Package_References.SingleLayerLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SingleLayerLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.SingleLayerLayerManager_Package_References."=";

   type SingleLayerLayerManager is new LayerManager with null record;

   procedure Initialize (This : in out SingleLayerLayerManager'Class);
   function Create return SingleLayerLayerManager_Access;

end org.allbinary.layer.SingleLayerLayerManager_Package;


