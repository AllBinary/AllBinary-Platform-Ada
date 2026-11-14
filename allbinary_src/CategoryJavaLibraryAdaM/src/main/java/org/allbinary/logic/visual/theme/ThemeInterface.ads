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

with AllBinary_Java;
limited with org.allbinary.logic.visual.theme.ThemeInterface_Package;
package org.allbinary.logic.visual.theme.ThemeInterface_Package_References is
   type ThemeInterface_Access is access all org.allbinary.logic.visual.theme.ThemeInterface_Package.ThemeInterface'Class;
   type ThemeInterface_Access_Array is array (Natural range <>) of ThemeInterface_Access;
   type ThemeInterface_Access_Array_Access is access all ThemeInterface_Access_Array;
   type ThemeInterface_Access_Array_Access_Array is array (Natural range <>) of ThemeInterface_Access_Array_Access;
   type ThemeInterface_Access_Array_Access_Array_Access is access all ThemeInterface_Access_Array_Access_Array;
   type ThemeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThemeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ThemeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThemeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThemeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThemeInterface_Access_Array_Access is (if Value /= null and then Value.all in ThemeInterface_Access_Array_Object'Class then ThemeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ThemeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ThemeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ThemeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ThemeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ThemeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ThemeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ThemeInterface_Access_Array_Access_Array_Object'Class then ThemeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.theme.ThemeInterface_Package_References;

with org.allbinary.logic.visual.theme.ThemeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;

package org.allbinary.logic.visual.theme.ThemeInterface_Package is

   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ThemeInterface is interface and TableMappingInterface;
   subtype ThemeInterface_Access is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access;
   function "=" (Left, Right : ThemeInterface_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References."=";
   subtype ThemeInterface_Access_Array is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array;
   function "=" (Left, Right : ThemeInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References."=";
   subtype ThemeInterface_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array_Access;
   function "=" (Left, Right : ThemeInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References."=";
   function Java_Box (Value : ThemeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References.Java_Box;
   function Java_Unbox_ThemeInterface_Access_Array (Value : access Java_Object'Class) return ThemeInterface_Access_Array_Access renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References.Java_Unbox_ThemeInterface_Access_Array;
   subtype ThemeInterface_Access_Array_Access_Array is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ThemeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References."=";
   subtype ThemeInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThemeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References."=";
   function Java_Box (Value : ThemeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References.Java_Box;
   function Java_Unbox_ThemeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ThemeInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.theme.ThemeInterface_Package_References.Java_Unbox_ThemeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ThemeInterface (Value : ThemeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getName (This : in out ThemeInterface) return Unbounded_String is abstract;
   function getPath (This : in out ThemeInterface) return Unbounded_String is abstract;
   function getPreviewImageName (This : in out ThemeInterface) return Unbounded_String is abstract;
   function getPreviewImagePath (This : in out ThemeInterface) return Unbounded_String is abstract;

end org.allbinary.logic.visual.theme.ThemeInterface_Package;


