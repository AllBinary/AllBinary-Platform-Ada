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

limited with org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package;
package org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References is
   type VideoInterface_Access is access all org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package.VideoInterface'Class;
   type VideoInterface_Access_Array is array (Natural range <>) of VideoInterface_Access;
   type VideoInterface_Access_Array_Access is access all VideoInterface_Access_Array;
   type VideoInterface_Access_Array_Access_Array is array (Natural range <>) of VideoInterface_Access_Array_Access;
   type VideoInterface_Access_Array_Access_Array_Access is access all VideoInterface_Access_Array_Access_Array;
end org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References;

with org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type VideoInterface is interface;
   subtype VideoInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References.VideoInterface_Access;
   function "=" (Left, Right : VideoInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References."=";
   subtype VideoInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References.VideoInterface_Access_Array;
   function "=" (Left, Right : VideoInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References."=";
   subtype VideoInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References.VideoInterface_Access_Array_Access;
   function "=" (Left, Right : VideoInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References."=";
   subtype VideoInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References.VideoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VideoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References."=";
   subtype VideoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References.VideoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VideoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References."=";
   function Java_Object_Access_From_VideoInterface (Value : VideoInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package;


