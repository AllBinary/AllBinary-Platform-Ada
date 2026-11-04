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

limited with org.allbinary.layer.LayerManagerLoggingBase_Package;
package org.allbinary.layer.LayerManagerLoggingBase_Package_References is
   type LayerManagerLoggingBase_Access is access all org.allbinary.layer.LayerManagerLoggingBase_Package.LayerManagerLoggingBase'Class;
   type LayerManagerLoggingBase_Access_Array is array (Natural range <>) of LayerManagerLoggingBase_Access;
   type LayerManagerLoggingBase_Access_Array_Access is access all LayerManagerLoggingBase_Access_Array;
   type LayerManagerLoggingBase_Access_Array_Access_Array is array (Natural range <>) of LayerManagerLoggingBase_Access_Array_Access;
   type LayerManagerLoggingBase_Access_Array_Access_Array_Access is access all LayerManagerLoggingBase_Access_Array_Access_Array;
end org.allbinary.layer.LayerManagerLoggingBase_Package_References;

with org.allbinary.layer.LayerManagerLoggingBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManager_Package_References;

package org.allbinary.layer.LayerManagerLoggingBase_Package is

   package Reference_Types is
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype LayerManager_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access;
   use type LayerManager_Access;
   subtype LayerManager_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array;
   use type LayerManager_Access_Array;
   subtype LayerManager_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access;
   use type LayerManager_Access_Array_Access;
   subtype LayerManager_Access_Array_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array;
   use type LayerManager_Access_Array_Access_Array;
   subtype LayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array_Access;
   use type LayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerManagerLoggingBase_Access is org.allbinary.layer.LayerManagerLoggingBase_Package_References.LayerManagerLoggingBase_Access;
   function "=" (Left, Right : LayerManagerLoggingBase_Access) return Boolean renames org.allbinary.layer.LayerManagerLoggingBase_Package_References."=";
   subtype LayerManagerLoggingBase_Access_Array is org.allbinary.layer.LayerManagerLoggingBase_Package_References.LayerManagerLoggingBase_Access_Array;
   function "=" (Left, Right : LayerManagerLoggingBase_Access_Array) return Boolean renames org.allbinary.layer.LayerManagerLoggingBase_Package_References."=";
   subtype LayerManagerLoggingBase_Access_Array_Access is org.allbinary.layer.LayerManagerLoggingBase_Package_References.LayerManagerLoggingBase_Access_Array_Access;
   function "=" (Left, Right : LayerManagerLoggingBase_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManagerLoggingBase_Package_References."=";
   subtype LayerManagerLoggingBase_Access_Array_Access_Array is org.allbinary.layer.LayerManagerLoggingBase_Package_References.LayerManagerLoggingBase_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerLoggingBase_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerManagerLoggingBase_Package_References."=";
   subtype LayerManagerLoggingBase_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManagerLoggingBase_Package_References.LayerManagerLoggingBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerLoggingBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManagerLoggingBase_Package_References."=";

   type LayerManagerLoggingBase is new Java_Object with null record;

   procedure Initialize (This : in out LayerManagerLoggingBase'Class);
   function Create return LayerManagerLoggingBase_Access;
   procedure append (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure appendAt (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer);
   procedure remove (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure removeResult (This : in out LayerManagerLoggingBase; layerManager_Param : access LayerManager_Package.LayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; result : Boolean);
   procedure clear (This : in out LayerManagerLoggingBase);

end org.allbinary.layer.LayerManagerLoggingBase_Package;


