-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.input.BuildMenuCompositeInterface_Package;
package org.allbinary.game.input.BuildMenuCompositeInterface_Package_References is
   type BuildMenuCompositeInterface_Access is access all org.allbinary.game.input.BuildMenuCompositeInterface_Package.BuildMenuCompositeInterface'Class;
   type BuildMenuCompositeInterface_Access_Array is array (Natural range <>) of BuildMenuCompositeInterface_Access;
   type BuildMenuCompositeInterface_Access_Array_Access is access all BuildMenuCompositeInterface_Access_Array;
   type BuildMenuCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of BuildMenuCompositeInterface_Access_Array_Access;
   type BuildMenuCompositeInterface_Access_Array_Access_Array_Access is access all BuildMenuCompositeInterface_Access_Array_Access_Array;
   type BuildMenuCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BuildMenuCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : BuildMenuCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BuildMenuCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BuildMenuCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BuildMenuCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in BuildMenuCompositeInterface_Access_Array_Object'Class then BuildMenuCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type BuildMenuCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BuildMenuCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BuildMenuCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BuildMenuCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BuildMenuCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BuildMenuCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BuildMenuCompositeInterface_Access_Array_Access_Array_Object'Class then BuildMenuCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.BuildMenuCompositeInterface_Package_References;

with org.allbinary.game.input.BuildMenuCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;

package org.allbinary.game.input.BuildMenuCompositeInterface_Package is

   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package Reference_Types is
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   use type ScrollSelectionForm_Access;
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   use type ScrollSelectionForm_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access;
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   use type ScrollSelectionForm_Access_Array_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type BuildMenuCompositeInterface is interface;
   subtype BuildMenuCompositeInterface_Access is org.allbinary.game.input.BuildMenuCompositeInterface_Package_References.BuildMenuCompositeInterface_Access;
   function "=" (Left, Right : BuildMenuCompositeInterface_Access) return Boolean renames org.allbinary.game.input.BuildMenuCompositeInterface_Package_References."=";
   subtype BuildMenuCompositeInterface_Access_Array is org.allbinary.game.input.BuildMenuCompositeInterface_Package_References.BuildMenuCompositeInterface_Access_Array;
   function "=" (Left, Right : BuildMenuCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.input.BuildMenuCompositeInterface_Package_References."=";
   subtype BuildMenuCompositeInterface_Access_Array_Access is org.allbinary.game.input.BuildMenuCompositeInterface_Package_References.BuildMenuCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : BuildMenuCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.BuildMenuCompositeInterface_Package_References."=";
   function Java_Box (Value : BuildMenuCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.BuildMenuCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_BuildMenuCompositeInterface_Access_Array (Value : access Java_Object'Class) return BuildMenuCompositeInterface_Access_Array_Access renames org.allbinary.game.input.BuildMenuCompositeInterface_Package_References.Java_Unbox_BuildMenuCompositeInterface_Access_Array;
   subtype BuildMenuCompositeInterface_Access_Array_Access_Array is org.allbinary.game.input.BuildMenuCompositeInterface_Package_References.BuildMenuCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BuildMenuCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.BuildMenuCompositeInterface_Package_References."=";
   subtype BuildMenuCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.BuildMenuCompositeInterface_Package_References.BuildMenuCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BuildMenuCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.BuildMenuCompositeInterface_Package_References."=";
   function Java_Box (Value : BuildMenuCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.BuildMenuCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_BuildMenuCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return BuildMenuCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.BuildMenuCompositeInterface_Package_References.Java_Unbox_BuildMenuCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_BuildMenuCompositeInterface (Value : BuildMenuCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getCurrentScrollSelectionForm (This : in out BuildMenuCompositeInterface) return ScrollSelectionForm_Access is abstract;
   procedure setCurrentScrollSelectionForm (This : in out BuildMenuCompositeInterface; currentScrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) is abstract;
   function getBuildingScrollSelectionForm (This : in out BuildMenuCompositeInterface) return ScrollSelectionForm_Access is abstract;

end org.allbinary.game.input.BuildMenuCompositeInterface_Package;


